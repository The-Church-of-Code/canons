# Changelog

All notable changes to the scripture.
Reconstructed from git history. Future releases should
add entries here as part of the release process.

## [Unreleased]

### Added
- GitHub Actions workflow running the BUILD.md verification
  checklist on every pull request
- `scripts/verify.sh` — runs locally and in CI, enforcing
  counts, tonal anchors, byte-count targets, version-line
  sync, git-tag agreement, and README commandment drift
- `CONTRIBUTING.md` pointing to BUILD.md and the
  verification script
- Issue and pull request templates framed as amendments
- Variant-selection guidance in README with a
  size/token-budget table

### Changed
- README collapses six near-identical agent-configuration
  blocks into a single shared instruction plus a table
- README no longer duplicates the prophet roster; it
  points to the Sacred Scrolls section of the scripture

### Removed
- Trailing blank line from `.gitignore`

## [v1.6]

- Added the Gang of Four (Gamma, Helm, Johnson, Vlissides)
  to the Benediction's prophet roster
- Fixed a stale BUILD.md reference (Nielsen → Luu)
- Fixed BUILD.md's closing-incantation anchor
- Synchronized README closing incantation, prophet list,
  and commandment ordering with the scripture

## [v1.3]

- Added the linear commit history doctrine to the
  Office of the Commit
- Renamed `main` to `master` in the Office of the Commit

## [v1.2]

- Rebuilt the medium and small scripture variants

## [v1.1]

- Updated the prophets in the Benediction
- Improvements to CSP, adapters, efficiency, and
  Performance (renamed from Low Latency)
- Swapped the order of Atomicity and Generality
- Ezra Zygmuntowicz joins the prophets
- Swapped Nielsen for Luu on latency

## [v1.0]

- Initial release with all three context variants
- Full scripture with Preamble, Sacred Scrolls, Twelve
  Commandments, Articles of Faith, Book of Abominations,
  Daily Offices, Unwritten Scrolls, and Benediction
