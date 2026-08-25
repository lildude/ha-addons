## Ghostfolio Release Notes

### [`v3.61.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3610---2026-08-25)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.60.0...3.61.0)

##### Changed

- Harmonized the icons and labels in the access table to share the portfolio
- Improved the data source column in the historical market data table of the admin control panel by showing the name of the data provider
- Migrated the create and edit access dialogs to dedicated routes
- Improved the validation of activities and asset profiles when combining a custom asset profile symbol with a data source other than `MANUAL`
- Improved the response of the historical market data gathering endpoint for a specific date
- Introduced a timeout for the asset profile and the historical market data gathering jobs
- Reduced the number of attempts of the asset profile and the historical market data gathering jobs
- Improved the historical market data gathering by loading the asset profiles with recent market data in a single database query per run
- Upgraded `bull-board` from version `8.6.0` to `9.0.1`

##### Fixed

- Fixed the missing benchmark in the performance chart for calendar year date ranges on the analysis page
- Fixed the country mapping of Macau in the *Financial Modeling Prep* service
- Fixed the asset profile and historical market data gathering of a symbol getting blocked permanently by a failed job by discarding the failed jobs
- Fixed the asset profile data gathering of a symbol in the admin control panel by removing an existing job before enqueueing a new one
- Fixed the date of the gathered historical market data for instances running in a time zone other than UTC
- Fixed the repeated historical market data gathering for instances running in a time zone other than UTC

### [`v3.60.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3600---2026-08-24)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.59.1...3.60.0)

##### Added

- Added `isCarriedForward` to the `MarketData` database schema

##### Changed

- Improved the style of the table in the data providers management of the admin control panel
- Improved the style of the table in the platform management of the admin control panel
- Improved the style of the table in the tag management of the admin control panel
- Improved the historical market data gathering by storing the market prices carried forward for the most recent dates without data from the data provider, distinguished by `isCarriedForward`
- Introduced a cooldown of 12 hours for the historical market data gathering of a symbol by retaining the completed jobs

##### Fixed

- Fixed the repeated historical market data gathering for symbols without weekend market data on Sundays and Mondays

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.61.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/349


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.195.0...v1.196.0
