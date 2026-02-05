# GitHub Branch Protection Configuration

This guide explains how to set up branch protection rules for the MiGanado repository.

## Why Branch Protection?

- ✅ Enforce code review before merging
- ✅ Require all checks to pass
- ✅ Prevent accidental force pushes
- ✅ Maintain code quality standards

---

## Setting Up Branch Protection Rules

### For `main` branch (Production)

1. **Go to Repository Settings**
   - GitHub → Settings → Branches

2. **Add Branch Protection Rule**
   - Pattern name: `main`
   - Check the following:
     - ✅ Require a pull request before merging
     - ✅ Require status checks to pass before merging
     - ✅ Require branches to be up to date before merging
     - ✅ Require conversation resolution before merging
     - ✅ Include administrators

3. **Select Required Status Checks**
   - ✅ `🧪 Test Suite / 🧪 Unit & Integration Tests`
   - ✅ `🧪 Test Suite / 📋 Code Quality Check`
   - ✅ `🔍 Code Quality / 🔍 Flutter Analyze`
   - ✅ `🔍 Code Quality / 🎨 Code Format Check`

### For `develop` branch (Development)

1. **Add Branch Protection Rule**
   - Pattern name: `develop`
   - Check the following:
     - ✅ Require a pull request before merging
     - ✅ Require status checks to pass before merging
     - ✅ Require conversation resolution before merging

2. **Select Required Status Checks**
   - ✅ `🧪 Test Suite / 🧪 Unit & Integration Tests`
   - ✅ `🧪 Test Suite / 📋 Code Quality Check`

---

## Dismiss Stale PR Approvals

To automatically dismiss pull request reviews when new commits are pushed:

1. Go to Settings → Branches
2. Edit the branch protection rule
3. Check: "Dismiss stale pull request approvals when new commits are pushed"

---

## Require CODEOWNERS Review

To require review from specific teams/users:

1. Create `.github/CODEOWNERS` file (see template below)
2. Edit branch protection rule
3. Check: "Require review from Code Owners"

### Example CODEOWNERS file:

```
# This file specifies who should review changes in different areas

# Core system
/miganado/lib/core/ @owner

# Features
/miganado/lib/features/ @owner

# Tests
/miganado/test/ @owner

# Documentation
*.md @owner

# Workflow files
.github/workflows/ @owner
```

---

## Automation: Pre-commit Hooks

To enforce standards before pushing, use pre-commit hooks (see `pre-commit.sh` guide).

### Quick Setup:

```bash
cd .github/hooks
chmod +x pre-commit.sh
git config core.hooksPath .github/hooks
```

This will:
- Run `dart format` check
- Run `flutter analyze`
- Run `flutter test`
- Prevent commits that fail checks

---

## Rules Summary

| Rule | Main | Develop |
|------|------|---------|
| Require PR | ✅ | ✅ |
| Require Tests | ✅ | ✅ |
| Require Analyze | ✅ | ✅ |
| Require Review | ✅ | ❌ |
| Update Before Merge | ✅ | ❌ |
| Force Push Allowed | ❌ | ❌ |

---

## Testing the Rules

1. **Create a test branch**:
   ```bash
   git checkout -b test/branch-protection
   ```

2. **Make a change that breaks a rule** (e.g., format issue)

3. **Push and create PR**:
   ```bash
   git push origin test/branch-protection
   ```

4. **Verify CI/CD checks fail**

5. **Clean up**:
   ```bash
   git branch -D test/branch-protection
   ```

---

## Merging with Protection

### Typical PR Workflow:

1. Create feature branch from `develop`
2. Make changes and push
3. Create Pull Request
4. CI/CD checks run automatically
5. If checks fail: fix issues and push again
6. When all checks pass: request review
7. After review approval: merge (squash or rebase)
8. For `main`: create PR from `develop` (same process)

### Merge Strategies:

- **Feature branches → Develop**: Squash commits
- **Develop → Main**: Create merge commit (preserves history)

---

## Troubleshooting

### "Some checks were not successful"

Check what failed in the GitHub Actions logs:
1. Go to PR → Checks tab
2. Click on failed check
3. View detailed logs
4. Fix issues locally
5. Push again

### "Required status check did not run"

This usually means:
- Workflow file not properly configured
- Path filters preventing workflow run
- Check the `.github/workflows/` files

### "Branch is out of date"

Click "Update branch" in the PR, or locally:
```bash
git fetch origin
git rebase origin/develop
git push --force-with-lease
```

---

## Advanced: Dismiss Rules

To allow overrides (use sparingly):

1. Go to branch protection settings
2. Under "Allow specified actors to bypass required pull requests":
   - Add admins or specific users
   - Note: This bypasses ALL protections

⚠️ **Use cautiously for emergency fixes only**

---

## References

- [GitHub Branch Protection Documentation](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)
- [Required Status Checks](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches#require-status-checks-before-merging)
- [CODEOWNERS](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-code-owners)

---

**Setup time**: ~5 minutes
**Maintenance**: Zero (automatic enforcement)
