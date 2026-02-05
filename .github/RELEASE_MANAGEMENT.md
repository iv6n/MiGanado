# Release Management & Versioning Guide

## Overview

This guide explains how to manage releases for MiGanado using semantic versioning and GitHub Releases.

---

## Semantic Versioning (SemVer)

MiGanado follows Semantic Versioning 2.0.0:

### Format: `MAJOR.MINOR.PATCH`

- **MAJOR** (1st number): Breaking changes, incompatible API changes
  - Example: `1.0.0` → `2.0.0` (major rewrite)
  
- **MINOR** (2nd number): New features, backward compatible
  - Example: `1.0.0` → `1.1.0` (new animal import feature)
  
- **PATCH** (3rd number): Bug fixes, backward compatible
  - Example: `1.0.0` → `1.0.1` (fixed crash in search)

### Examples:

```
1.0.0  → Initial release
1.1.0  → Added advanced search feature (MINOR bump)
1.1.1  → Fixed search crash (PATCH bump)
2.0.0  → Redesigned UI (MAJOR bump)
```

---

## Release Process

### Step 1: Prepare Release Branch

```bash
# Create release branch from develop
git checkout develop
git pull origin develop
git checkout -b release/v1.1.0

# Update version in pubspec.yaml
# Update CHANGELOG.md
# Commit changes
git add .
git commit -m "chore: Prepare v1.1.0 release"
```

### Step 2: Update pubspec.yaml

**File**: `miganado/pubspec.yaml`

```yaml
name: miganado
description: Sistema de Gestión Ganadera
publish_to: 'none'

version: 1.1.0+5  # MAJOR.MINOR.PATCH+BUILD_NUMBER
```

**Version Format Explanation**:
- `1.1.0` = Semantic version
- `+5` = Build number (increment with each build)

### Step 3: Update CHANGELOG

**File**: `CHANGELOG.md`

```markdown
## [1.1.0] - 2026-01-28

### Added
- 🔍 Advanced animal search with filters
- 📊 Animal health dashboard
- 🎯 Multi-select batch operations

### Changed
- ✨ Improved UI responsiveness
- 🔄 Optimized database queries
- 📝 Updated documentation

### Fixed
- 🐛 Fixed crash in vaccination history
- 🐛 Fixed date picker issues
- 🐛 Fixed sorting in animal list

### Security
- 🔐 Updated dependencies for security patches

## [1.0.0] - 2026-01-10

### Added
- Initial public release
- Core features: animal registration, vaccination tracking, event calendar
...
```

### Step 4: Create Pull Request

```bash
# Push release branch
git push origin release/v1.1.0

# Create PR on GitHub
# Set target: main
# Title: "chore: Release v1.1.0"
```

### Step 5: Merge to Main

1. Get code review approval
2. Ensure all CI/CD checks pass
3. Merge PR to `main` (create merge commit)

```bash
# Or via GitHub UI: Click "Merge pull request"
```

### Step 6: Create Git Tag

```bash
# Check out main
git checkout main
git pull origin main

# Create annotated tag
git tag -a v1.1.0 -m "Release version 1.1.0"

# Push tag (triggers build workflow)
git push origin v1.1.0
```

**Verify tag:**
```bash
git tag -l
git show v1.1.0
```

### Step 7: GitHub Release

The build workflow will automatically create a GitHub Release when you push a tag.

**Manual creation (if needed)**:
1. Go to GitHub → Releases → Draft a new release
2. Select tag: `v1.1.0`
3. Add release notes (automatically filled from CHANGELOG)
4. Publish

---

## Version Numbering Strategy

### Development Timeline

```
v1.0.0 (Initial Release)
├── v1.0.1 (Hotfix: Critical bug)
├── v1.1.0 (Feature: New functionality)
├── v1.1.1 (Patch: Bug fix)
├── v1.2.0 (Feature: Another feature)
└── v2.0.0 (Major: Redesign/rewrite)
```

### Release Cadence

- **Hotfixes** (`PATCH`): As needed (critical bugs)
- **Features** (`MINOR`): Every 1-2 weeks during development
- **Major** (`MAJOR`): Every quarter or significant milestone

---

## Hotfix Process (for critical bugs)

### Quick Hotfix Release

```bash
# 1. Create hotfix branch from main
git checkout main
git pull origin main
git checkout -b hotfix/v1.1.1

# 2. Fix the bug
nano miganado/lib/features/animals/presentation/screens/animal_detail_screen.dart

# 3. Update version
# miganado/pubspec.yaml: version: 1.1.1+6

# 4. Update CHANGELOG
nano CHANGELOG.md

# 5. Commit and push
git add .
git commit -m "fix: Critical crash in animal detail screen"
git push origin hotfix/v1.1.1

# 6. Create PR to main, merge, tag, and release
# Same as regular release process
```

---

## Release Checklist

Use this before each release:

```
[ ] Update pubspec.yaml version
[ ] Update CHANGELOG.md
[ ] Run full test suite: flutter test
[ ] Run analysis: flutter analyze lib/
[ ] Check code format: dart format --set-exit-if-changed lib/
[ ] Build APK: flutter build apk --release
[ ] Test on device/emulator
[ ] Create PR with release notes
[ ] Get code review approval
[ ] Merge PR to main
[ ] Create git tag: git tag -a vX.Y.Z
[ ] Push tag: git push origin vX.Y.Z
[ ] Verify GitHub Release was created
[ ] Test release APK
[ ] Announce release to team
[ ] Update documentation if needed
```

---

## Build Numbers

The build number (`+X` in version string) increments with each build:

```
version: 1.1.0+5  # Build 5 of version 1.1.0
version: 1.1.0+6  # Next build
version: 1.1.1+7  # New version, new build number
```

### Incrementing Build Number:

```bash
# Manual update in pubspec.yaml
version: 1.1.0+6

# Then commit
git add miganado/pubspec.yaml
git commit -m "chore: Bump build number to 6"
```

---

## Creating Release Notes

### Automatic (from CHANGELOG)

GitHub Actions can automatically generate release notes from your tags and commits. Check the "Auto-generate release notes" option when creating a release.

### Manual Release Notes Template

```markdown
## 🎉 MiGanado v1.1.0 - Advanced Features Update

### What's New? 🆕

🔍 **Advanced Search**
- Search animals by multiple criteria
- Filter by health status, location, date
- Saved search history

📊 **Health Dashboard**
- Quick health status overview
- Vaccination status tracker
- Overdue maintenance alerts

### Improvements ✨

- Better UI responsiveness
- Faster database queries
- Improved error messages
- Updated documentation

### Bug Fixes 🐛

- Fixed crash when deleting animal
- Fixed date picker issues
- Fixed sorting in lists

### Download 📱

- **APK (32-bit)**: miganado-arm32-v1.1.0.apk (45 MB)
- **APK (64-bit)**: miganado-arm64-v1.1.0.apk (48 MB)
- **APK (x86_64)**: miganado-x86_64-v1.1.0.apk (52 MB)

### Installation

1. Download the APK that matches your device
2. Go to Settings → Apps → Unknown Sources (if needed)
3. Tap the APK file to install
4. Grant permissions when prompted

### Release Notes

See [CHANGELOG.md](CHANGELOG.md) for detailed changes.

### Contributors

Thank you to all contributors! 🙏
```

---

## Deployment Environments

### Development (`develop` branch)
- Continuous updates
- Latest features
- May be unstable
- Build number: Auto-incremented

### Staging (from `develop`)
- Feature-complete builds
- Pre-release testing
- Reasonably stable
- Used for QA

### Production (`main` branch)
- Tested releases
- Semantic versioning tags
- Stable
- Official GitHub Releases

---

## Automating Releases

### Automatic Release on Tag

The `.github/workflows/build.yml` automatically:

1. Triggers when tag is pushed (`git push origin vX.Y.Z`)
2. Runs all tests
3. Builds APK and Web artifacts
4. Creates GitHub Release with artifacts

**No additional action needed!**

### Manual Trigger

If you want to build without creating a release:

1. Go to GitHub → Actions
2. Select "🏗️ Build Release" workflow
3. Click "Run workflow"
4. Select "debug" or "release"
5. Build starts without creating a release

---

## Version History Example

```
📱 Current: v1.1.0 (January 28, 2026)
├─ Feature: Advanced search
├─ Feature: Health dashboard
├─ Fix: Vaccination crash
└─ ~10 commits

v1.0.1 (January 25, 2026)
├─ Fix: Critical database error
└─ 1 commit

v1.0.0 (January 10, 2026)
├─ Initial release
├─ All core features
└─ 150+ commits
```

---

## Troubleshooting

### Tag Already Exists

```bash
# Delete local tag
git tag -d v1.1.0

# Delete remote tag
git push origin --delete v1.1.0

# Recreate tag
git tag -a v1.1.0 -m "Release v1.1.0"
git push origin v1.1.0
```

### Wrong Version in Release

```bash
# Create new tag (increment version)
git tag -a v1.1.1 -m "Release v1.1.1"
git push origin v1.1.1

# Delete wrong tag
git push origin --delete v1.1.0
```

### GitHub Release Not Created

1. Check Actions tab for build workflow status
2. Look for errors in build logs
3. Ensure tag follows format: `vX.Y.Z`
4. Manually create release in GitHub UI

---

## Best Practices

### ✅ DO:
- Use semantic versioning consistently
- Update CHANGELOG before every release
- Write descriptive commit messages
- Tag releases from main branch
- Test before releasing
- Announce releases to users

### ❌ DON'T:
- Skip version bumping
- Release without changelog
- Tag develop branch (only main)
- Skip testing
- Force push to main/develop
- Delete production tags

---

## References

- [Semantic Versioning](https://semver.org/)
- [GitHub Releases](https://docs.github.com/en/repositories/releasing-projects-on-github/about-releases)
- [Keep a Changelog](https://keepachangelog.com/)
- [Conventional Commits](https://www.conventionalcommits.org/)

---

**First release time**: ~15 minutes  
**Subsequent releases**: ~5-10 minutes (mostly automated)
