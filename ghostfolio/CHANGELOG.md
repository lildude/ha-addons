## Ghostfolio Release Notes

### [`v3.31.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3310---2026-07-20)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.30.0...3.31.0)

##### Changed

- Removed the deprecated `SymbolProfile` field from the activity interface
- Refactored the language redirect of the root path from the static file serving configuration to a dedicated middleware
- Upgraded `yahoo-finance2` from version `3.15.4` to `4.0.0`

##### Fixed

- Fixed the `RangeNotSatisfiableError` for requests with a `Range` header to the root path caused by the empty `index.html` placeholder
- Fixed the unresolved template literal in the page title while the app is loading from the service worker cache

---

## Add-on Release Notes




## What's Changed
* Update actions/checkout action to v7.0.1 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/321
* Update Ghostfolio to v3.31.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/322


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.174.0...v1.175.0
