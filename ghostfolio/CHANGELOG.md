## Ghostfolio Release Notes

### [`v3.28.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3280---2026-07-17)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.27.0...3.28.0)

##### Changed

- Migrated the clone, create and edit activity dialogs to dedicated routes
- Improved the language localization in the historical market data table of the admin control panel
- Improved the language localization in the tag management of the admin control panel

##### Fixed

- Fixed the missing validation of the tags when creating or updating an activity
- Fixed the missing validation of the tags when updating the tags of a holding
- Fixed an issue where the tags of an activity were lost if updating the activity failed
- Fixed an issue where the dividends, the interest and the liabilities of asset profiles without market data have been valued at zero in the portfolio calculation
- Fixed an issue where an error has been reported for asset profiles without market data which do not hold any units
- Fixed an issue with removing a linked account from a buy, sell or dividend activity

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.28.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/318


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.171.0...v1.172.0
