## Ghostfolio Release Notes

### [`v3.20.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3200---2026-07-04)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.19.1...3.20.0)

##### Changed

- Refactored the rounding logic in the holding detail dialog
- Refactored the rounding logic in the treemap chart component
- Restricted the modification of activity tags in the impersonation mode
- Hardened the endpoint of the public access for portfolio sharing by restricting it to public accesses
- Improved the parsing of integer query parameters (`skip` and `take`) in the `GET api/v1/admin/user` endpoint
- Improved the parsing of integer query parameters (`skip` and `take`) in the `GET api/v1/asset-profiles` endpoint
- Improved the parsing of the integer query parameter (`includeHistoricalData`) in the `GET api/v1/market-data/markets` endpoint
- Improved the parsing of the integer query parameter (`includeHistoricalData`) in the `GET api/v1/symbol/:dataSource/:symbol` endpoint
- Harmonized the filter parsing using `groupBy` across various services
- Improved the language localization by translating various tooltips across the application
- Improved the language localization for German (`de`)
- Improved the language localization for Ukrainian (`uk`)
- Upgraded `yahoo-finance2` from version `3.14.3` to `3.15.4`

##### Fixed

- Resolved an issue in the treemap chart component when the holdings list is empty
- Fixed the handling of cash positions in the portfolio calculations when filtering by holding or tag
- Fixed the handling of cash positions in the portfolio details when filtering
- Fixed the market condition of the benchmarks in the twitter bot service when values round to zero

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.20.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/307


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.163.0...v1.164.0
