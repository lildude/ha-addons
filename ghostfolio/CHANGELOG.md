## Ghostfolio Release Notes

### [`v2.239.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#22390---2026-02-15)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.238.0...2.239.0)

##### Added

- Added a new static portfolio analysis rule based on the total investment volume: *Fees* (Fee Ratio)
- Extended the content of the *Self-Hosting* section on the Frequently Asked Questions (FAQ) page with information on derived currencies

##### Changed

- Deprecated the existing static portfolio analysis rule: *Fees* (Fee Ratio)
- Ignored nested ETFs when fetching top holdings for ETF and mutual fund assets from *Yahoo Finance*
- Improved the scraper configuration with more detailed error messages
- Improved the language localization for German (`de`)
- Upgraded `@simplewebauthn/browser` and `@simplewebauthn/server` from version `13.1.0` to `13.2.2`
- Upgraded `cheerio` from version `1.0.0` to `1.2.0`

##### Fixed

- Fixed the investment value by including currency effects in the portfolio summary tab on the home page
- Added the missing `valueInBaseCurrency` to the response of the import activities endpoint

---

## Add-on Release Notes




## What's Changed
* Auto merge Renovate PRs and automatically make releases for Ghostfolio updates by @lildude in https://github.com/lildude/ha-addon-ghostfolio/pull/244
* Update Ghostfolio to v2.239.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/245


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.126.0...v1.127.0
