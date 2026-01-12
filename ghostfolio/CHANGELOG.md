## Ghostfolio Release Notes

### [`v2.229.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#22290---2026-01-11)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.228.0...2.229.0)

##### Changed

- Set the active sort column in the accounts table component
- Deprecated `activities` in the endpoint `GET api/v1/portfolio/holding/:dataSource/:symbol`
- Moved the admin service to `@ghostfolio/ui/services`
- Moved the data service to `@ghostfolio/ui/services`
- Refactored the dividend import
- Refreshed the cryptocurrencies list

##### Fixed

- Fixed the net worth calculation to prevent the double counting of cash positions
- Fixed the filtering by asset class in the endpoint `GET api/v1/portfolio/holdings`
- Fixed the case-insensitive sorting in the accounts table component
- Fixed the case-insensitive sorting in the benchmark component
- Fixed the case-insensitive sorting in the holdings table component

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v2.229.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/233


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.118.2...v1.119.0
