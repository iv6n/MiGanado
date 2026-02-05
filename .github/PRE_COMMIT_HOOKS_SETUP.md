# Pre-commit Hooks Setup Guide

## What are Pre-commit Hooks?

Pre-commit hooks are scripts that run automatically before each `git commit`. They validate your code locally, preventing commits that don't meet quality standards.

**Benefits:**
- ✅ Catch issues before pushing to GitHub
- ✅ Faster feedback loop
- ✅ Consistent with CI/CD checks
- ✅ Prevent incomplete work

---

## Installation

### Step 1: Make the script executable

```bash
chmod +x .github/hooks/pre-commit.sh
```

### Step 2: Configure Git to use the hooks directory

```bash
git config core.hooksPath .github/hooks
```

**Verify setup:**
```bash
git config core.hooksPath
# Should output: .github/hooks
```

### Step 3: Test the hook

```bash
# Create a test file
echo 'print("test")' > test_file.dart

# Try to commit (should fail if file has issues)
git add test_file.dart
git commit -m "test"

# Clean up
git reset HEAD test_file.dart
rm test_file.dart
```

---

## What the Pre-commit Hook Checks

### 1. 🎨 Code Format
- Runs `dart format` on all changed files
- Checks for formatting issues
- **Fails if**: Code is not properly formatted

**Fix:**
```bash
dart format lib/ test/
```

### 2. 🔍 Static Analysis
- Runs `flutter analyze`
- Checks for code quality issues
- **Fails if**: Severe issues found

**Fix:**
```bash
flutter analyze lib/
```

### 3. 🧪 Unit Tests
- Runs entire test suite
- Ensures no regressions
- **Fails if**: Any test fails

**Fix:**
```bash
flutter test
```

---

## Using Pre-commit Hooks

### Normal Workflow with Hooks

```bash
# 1. Make changes
nano lib/features/animals/presentation/screens/animal_detail_screen.dart

# 2. Stage changes
git add .

# 3. Commit (hooks run automatically)
git commit -m "feat: Add animal search functionality"

# If checks fail:
# - Pre-commit hook shows which checks failed
# - Fix the issues
# - Stage again: git add .
# - Retry commit: git commit -m "..."
```

### Bypassing Hooks (Emergency Only)

⚠️ **Use sparingly - should only be for hotfixes**

```bash
# Skip all pre-commit checks
git commit --no-verify -m "hotfix: Critical production fix"

# Or use short flag
git commit -n -m "hotfix: Critical bug"
```

### Partial Commits with Hooks

```bash
# Add only specific files
git add miganado/lib/core/
git commit -m "refactor: Improve error handling"

# Unstaged changes won't be checked
git add miganado/lib/features/
git commit -m "feat: Add new feature"
```

---

## Troubleshooting

### "pre-commit: command not found"

**Cause**: Hook not executable or not properly configured

**Fix:**
```bash
chmod +x .github/hooks/pre-commit.sh
git config core.hooksPath .github/hooks
```

### "Hook always fails on format check"

**Cause**: Code is not formatted

**Fix:**
```bash
# Format all Dart files
dart format lib/ test/

# Verify formatting
dart format --set-exit-if-changed lib/ test/
```

### "Tests fail in hook but pass locally"

**Cause**: Different environment or cached state

**Fix:**
```bash
# Clean and rebuild
flutter clean
flutter pub get
flutter test

# Then try committing again
```

### "Hook is too slow"

The pre-commit hook runs full test suite which can take 1-2 minutes.

**Options:**
1. **Use `--no-verify`** for quick commits during development
2. **Stash changes** to reduce test scope
3. **Run checks in separate terminal** while working

```bash
# In one terminal: watch mode
flutter test --watch

# In another terminal: make commits with --no-verify
```

---

## Customizing the Hook

Edit `.github/hooks/pre-commit.sh` to modify behavior:

### Skip formatting check:
```bash
# Comment out this line:
# dart format --set-exit-if-changed lib/ test/
```

### Make analysis non-blocking:
```bash
# Change this:
if flutter analyze lib/ test/ > /dev/null 2>&1; then

# To this:
if flutter analyze lib/ test/ > /dev/null 2>&1; then
    # ... success
else
    echo -e "${YELLOW}⚠${NC} (non-blocking)"
    # Don't set FAILED=1
fi
```

### Add additional checks:
```bash
# Example: Check for console logs in production code
echo -n "🔎 Checking for debug prints... "
if ! grep -r "print(" miganado/lib --include="*.dart" > /dev/null; then
    echo -e "${GREEN}✓${NC}"
else
    echo -e "${YELLOW}⚠${NC} Found print statements"
fi
```

---

## Team Setup

### For All Team Members

1. **Clone the repo** (hooks are included in `.github/hooks/`)

2. **Set up hooks** (one-time):
   ```bash
   chmod +x .github/hooks/pre-commit.sh
   git config core.hooksPath .github/hooks
   ```

3. **Verify setup**:
   ```bash
   git config core.hooksPath
   ```

### Automating Setup

Add to project README or onboarding docs:

```bash
# Setup development environment
./setup-dev.sh
```

Contents of `setup-dev.sh`:
```bash
#!/bin/bash
echo "🚀 Setting up MiGanado development environment..."
chmod +x .github/hooks/pre-commit.sh
git config core.hooksPath .github/hooks
flutter pub get
echo "✅ Setup complete!"
```

---

## Hook vs CI/CD Comparison

| Aspect | Pre-commit Hook | GitHub Actions |
|--------|-----------------|-----------------|
| **Runs** | Before local commit | After push to GitHub |
| **Speed** | Slower (full suite) | ~2-3 minutes |
| **Can bypass** | Yes (`--no-verify`) | No (branch protection) |
| **Scope** | Changed files | Full codebase |
| **Network required** | No | Yes |
| **Notifications** | Local feedback | GitHub checks |

**Ideal Setup**: Both for defense-in-depth

---

## Best Practices

### ✅ DO:
- Regularly run hooks locally
- Keep hook scripts updated
- Review hook output carefully
- Fix issues immediately

### ❌ DON'T:
- Commit with `--no-verify` as default
- Ignore hook warnings
- Modify hooks without team consensus
- Bypass formatting checks

---

## References

- [Git Hooks Documentation](https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks)
- [Pre-commit Framework](https://pre-commit.com/)
- [Dart Format](https://dart.dev/tools/dart-format)
- [Flutter Analyze](https://dart.dev/tools/analysis)

---

**Setup time**: ~2 minutes
**Per-commit overhead**: 30-120 seconds (first time), cached after
