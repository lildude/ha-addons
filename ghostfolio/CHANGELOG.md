## Ghostfolio Release Notes

### [`v3.15.1`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3151---2026-06-23)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.15.0...3.15.1)

##### Changed

- Improved the dynamic numerical precision for various values in the account detail dialog on mobile
- Improved the dynamic numerical precision for various values in the holding detail dialog on mobile
- Upgraded `@internationalized/number` from version `3.6.6` to `3.6.7`

##### Fixed

- Fixed an issue where symbols with special characters caused API request failures by URL encoding the symbol
- Fixed the disabled state of the delete action in the asset profiles actions menu of the historical market data table in the admin control panel
- Fixed the persistence of an empty `locale` string in the scraper configuration
- Fixed a transaction timeout that prevented gathering historical market data for symbols with a long history
- Fixed an exception in various portfolio endpoints when historical exchange rate data is missing

### [`v3.15.0`](https://redirect.github.com/ghostfolio/ghostfolio/releases/tag/3.15.0)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.14.0...3.15.0)

##### Changed

- Improved the dynamic numerical precision for various values in the account detail dialog on mobile
- Improved the dynamic numerical precision for various values in the holding detail dialog on mobile
- Upgraded `@internationalized/number` from version `3.6.6` to `3.6.7`

##### Fixed

- Fixed an issue where symbols with special characters caused API request failures by URL encoding the symbol
- Fixed the disabled state of the delete action in the asset profiles actions menu of the historical market data table in the admin control panel
- Fixed the persistence of an empty `locale` string in the scraper configuration

##### Special Thanks

- [@&#8203;dtslvr](https://redirect.github.com/dtslvr)
- [@&#8203;KenTandrian](https://redirect.github.com/KenTandrian)

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.15.1 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/301


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.157.0...v1.158.0
