## Ghostfolio Release Notes

### [`v3.16.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3160---2026-06-24)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.15.1...3.16.0)

##### Added

- Extended the user account settings with a copy-to-clipboard button for the user id
- Added pagination to the platform management of the admin control panel
- Added pagination to the tag management of the admin control panel
- Extended the asset profile details dialog of the admin control panel with a copy-to-clipboard button for the ISIN number
- Extended the asset profile details dialog of the admin control panel with a copy-to-clipboard button for the symbol

##### Changed

- Improved the throughput of the market data gathering queue by applying the rate limit per data source
- Decreased the rate limiter duration of the market data gathering queue jobs from 4 to 3 seconds
- Removed the deprecated `SymbolProfile` field from the endpoint `GET api/v1/portfolio/holding/:dataSource/:symbol`
- Upgraded `@simplewebauthn/browser` and `@simplewebauthn/server` from version `13.2.2` to `13.3`

##### Fixed

- Fixed an issue with hourly market data updates not refreshing prices for asset profiles with `MANUAL` data source
- Fixed an issue with the log context formatting in the performance logging service

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.16.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/302


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.158.0...v1.159.0
