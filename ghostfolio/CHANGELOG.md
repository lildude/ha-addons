## Ghostfolio Release Notes

### [`v3.81.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3810---2026-10-07)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.80.2...3.81.0)

##### Changed

- Moved the performance calculation including dividends (total return) from experimental to general availability
- Improved the language localization for German (`de`)
- Improved the language localization for Turkish (`tr`)

##### Fixed

- Fixed the visibility of the asset class, asset sub class, fee and quantity fields of a valuable in the create activity dialog
- Fixed the missing mapping for Aland Islands in the country weightings of the *Financial Modeling Prep* service
- Fixed the net performance percentage of date ranges in the portfolio performance calculation by weighting the average investment by the number of days between the chart dates
- Fixed the start date of calendar year date ranges in the portfolio performance calculation
- Fixed an issue where the Content Security Policy in HTTP security headers blocked the status check of the Ghostfolio data provider when `ENABLE_FEATURE_SECURITY_HEADERS` was enabled (experimental)

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.81.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/372


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.216.0...v1.217.0
