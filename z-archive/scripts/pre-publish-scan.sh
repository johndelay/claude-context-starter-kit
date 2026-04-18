#!/usr/bin/env bash
# Pre-publish scan — checks all publishable files for forbidden terms.
# Run this BEFORE any publish action (git push, deploy, etc.)
#
# Usage: ./scripts/pre-publish-scan.sh
# Can also be used as a git pre-commit hook:
#   cp scripts/pre-publish-scan.sh .git/hooks/pre-commit

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"
TERMS_FILE="$PROJECT_ROOT/.forbidden-terms"

if [[ ! -f "$TERMS_FILE" ]]; then
    echo "ERROR: .forbidden-terms file not found at $TERMS_FILE"
    exit 1
fi

# Collect forbidden terms (skip comments and blank lines)
TERMS=()
while IFS= read -r line; do
    # Skip comments and empty lines
    [[ "$line" =~ ^#.*$ ]] && continue
    [[ -z "${line// }" ]] && continue
    TERMS+=("$line")
done < "$TERMS_FILE"

if [[ ${#TERMS[@]} -eq 0 ]]; then
    echo "WARNING: No forbidden terms found in $TERMS_FILE"
    exit 0
fi

echo "=== Pre-Publish Scan ==="
echo "Scanning for ${#TERMS[@]} forbidden terms..."
echo ""

FOUND=0

# Files to scan: all .md files except gitignored ones
# Also scan any other text files that might be published
SCAN_FILES=()
while IFS= read -r -d '' file; do
    # Skip .forbidden-terms itself, SANITIZATION_CHECKLIST.md, and .git directory
    basename="$(basename "$file")"
    [[ "$basename" == ".forbidden-terms" ]] && continue
    [[ "$basename" == "SANITIZATION_CHECKLIST.md" ]] && continue
    [[ "$file" == *".git/"* ]] && continue
    [[ "$file" == *".obsidian/"* ]] && continue
    SCAN_FILES+=("$file")
done < <(find "$PROJECT_ROOT" \( -name "*.md" -o -name "*.sh" -o -name "*.txt" -o -name "*.yml" -o -name "*.yaml" \) -print0)

for term in "${TERMS[@]}"; do
    for file in "${SCAN_FILES[@]}"; do
        # Case-insensitive, whole-word grep with line numbers.
        # Word boundaries prevent substring false positives (e.g., "director").
        matches=$(grep -inP "\b${term}\b" "$file" 2>/dev/null || true)
        if [[ -n "$matches" ]]; then
            FOUND=$((FOUND + 1))
            rel_path="${file#$PROJECT_ROOT/}"
            echo "BLOCKED: \"$term\" found in $rel_path:"
            echo "$matches" | sed 's/^/  /'
            echo ""
        fi
    done
done

echo "=== Scan Complete ==="

if [[ $FOUND -gt 0 ]]; then
    echo "FAILED: $FOUND forbidden term occurrence(s) found."
    echo "Fix these before publishing."
    exit 1
else
    echo "PASSED: No forbidden terms found. Safe to publish."
    exit 0
fi
