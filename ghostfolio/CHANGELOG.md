## Ghostfolio Release Notes

### [`v3.58.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3580---2026-08-22)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.57.0...3.58.0)

##### Changed

- Improved the type filter of the activities table on the activities page to only list the activity types in use (experimental)
- Improved the permission selector with icons in the create or update access dialog
- Extracted the access level icon to a reusable component
- Disabled the telemetry in the *Storybook* setup
- Improved the indexes of the order database table
- Upgraded the `Node.js` engine from version `>=22.18.0` to `>=22.22.3` (`package.json`)

##### Fixed

- Fixed the benchmark label in the tooltip of the benchmark comparator on the analysis page
- Fixed the *Storybook* setup by loading the `@angular/localize` polyfill centrally
- Fixed an issue in the activities import where an unused custom asset profile was created if the related activities were not imported
- Fixed the missing close price in the historical market data of the *Yahoo Finance* service by falling back to the market price of the quote
- Fixed the historical market data gathering by no longer storing the last known market price for the most recent dates without data from the data provider

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.58.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/347


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.193.0...v1.194.0
