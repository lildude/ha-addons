## Ghostfolio Release Notes

### [`v3.13.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3130---2026-06-20)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.12.0...3.13.0)

##### Added

- Added an icon to indicate external links in the page tabs component
- Added the Korean (`ko`) language to the footer
- Added a data gathering frequency (`DAILY` or `HOURLY`) to the asset profile to control the market data gathering interval

##### Changed

- Changed the *Fear & Greed Index* (market mood) in the markets overview to use the stored market data instead of a live quote
- Moved the endpoint to get the asset profiles from `GET api/v1/admin/market-data` to `GET api/v1/asset-profiles`
- Moved the endpoint to get the asset profile details from `GET api/v1/market-data/:dataSource/:symbol` to `GET api/v1/asset-profiles/:dataSource/:symbol`
- Added the selected asset profile count to the delete menu item of the historical market data table in the admin control panel
- Added the selected asset profile count to the deletion confirmation dialog of the historical market data table in the admin control panel
- Improved the sorting to be case-insensitive in the platform management of the admin control panel
- Improved the sorting to be case-insensitive in the tag management of the admin control panel
- Improved the language localization for German (`de`)
- Upgraded `yahoo-finance2` from version `3.14.2` to `3.15.3`

##### Fixed

- Fixed an issue with the localization of the country names
- Fixed an issue in the data provider service where quotes could be missing for symbols that exist in multiple data sources by keying the quotes response by the asset profile identifier

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.13.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/297


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.155.0...v1.156.0
