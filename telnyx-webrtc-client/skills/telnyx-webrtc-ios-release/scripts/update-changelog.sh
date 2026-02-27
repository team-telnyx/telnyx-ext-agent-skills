#!/bin/bash
# Insert a new version entry at the top of CHANGELOG.md
# Usage: ./update-changelog.sh <version> <changelog-entry-file>

set -e

VERSION="$1"
ENTRY_FILE="$2"

if [ -z "$VERSION" ] || [ -z "$ENTRY_FILE" ]; then
  echo "Usage: $0 <version> <changelog-entry-file>"
  echo "Example: $0 3.1.0 /tmp/changelog-3.1.0.md"
  exit 1
fi

if [ ! -f "CHANGELOG.md" ]; then
  echo "Error: CHANGELOG.md not found in current directory"
  exit 1
fi

if [ ! -f "$ENTRY_FILE" ]; then
  echo "Error: Changelog entry file not found: $ENTRY_FILE"
  exit 1
fi

echo "=== Updating CHANGELOG.md ==="
echo "Version: $VERSION"
echo "Entry: $ENTRY_FILE"
echo ""

# Create backup
cp CHANGELOG.md CHANGELOG.md.backup

# Create new CHANGELOG with entry inserted at top
{
  echo "# CHANGELOG"
  echo ""
  cat "$ENTRY_FILE"
  echo ""
  tail -n +2 CHANGELOG.md  # Skip first line ("# CHANGELOG")
} > CHANGELOG.md.new

# Replace original
mv CHANGELOG.md.new CHANGELOG.md

echo "✅ CHANGELOG.md updated"
echo ""
echo "Review changes:"
echo "  diff CHANGELOG.md.backup CHANGELOG.md"
echo ""
echo "Commit changes:"
echo "  git add CHANGELOG.md"
echo "  git commit -m 'docs: Update CHANGELOG for v$VERSION'"
echo "  git push origin \$(git branch --show-current)"
