## Ghostfolio Release Notes

### [`v3.83.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3830---2026-10-10)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.82.0...3.83.0)

##### Added

- Added the performance timeline grouped by year to the analysis page (experimental)
- Extended the `GET api/v2/portfolio/performance` endpoint by the `groupBy` query parameter (`year`)

##### Changed

- Extended the benchmark comparator to support benchmarks whose market data starts later than the portfolio
- Harmonized the colors in the investment chart component
- Improved the performance of getting the historical market data by loading only the requested asset profiles
- Improved the language localization for Chinese (`zh`)

##### Fixed

- Fixed an issue where a user could create a custom asset profile with a symbol of the prefix `GF_`
- Fixed the horizontal overflow on the overview tab of the home page on mobile

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.83.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/374


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.218.0...v1.219.0
