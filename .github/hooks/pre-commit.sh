#!/bin/bash
# Pre-commit hook for MiGanado
# Prevents commits that fail code quality checks
#
# Installation:
#   chmod +x .github/hooks/pre-commit.sh
#   git config core.hooksPath .github/hooks

set -e

echo "🔍 Running pre-commit checks..."

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Navigate to project root
cd "${0%/*}/../../miganado"

# Track if any check fails
FAILED=0

# 1. Check formatting
echo -n "🎨 Checking code format... "
if dart format --set-exit-if-changed lib/ test/ > /dev/null 2>&1; then
    echo -e "${GREEN}✓${NC}"
else
    echo -e "${RED}✗${NC}"
    echo "  Run: dart format lib/ test/"
    FAILED=1
fi

# 2. Run static analysis
echo -n "🔍 Running flutter analyze... "
if flutter analyze lib/ test/ > /dev/null 2>&1; then
    echo -e "${GREEN}✓${NC}"
else
    echo -e "${YELLOW}⚠${NC} (non-blocking)"
fi

# 3. Run tests
echo -n "🧪 Running tests... "
if flutter test --no-coverage > /dev/null 2>&1; then
    echo -e "${GREEN}✓${NC}"
else
    echo -e "${RED}✗${NC}"
    echo "  Fix failing tests before committing"
    FAILED=1
fi

# Summary
echo ""
if [ $FAILED -eq 0 ]; then
    echo -e "${GREEN}✅ All checks passed!${NC}"
    exit 0
else
    echo -e "${RED}❌ Some checks failed. Please fix and try again.${NC}"
    exit 1
fi
