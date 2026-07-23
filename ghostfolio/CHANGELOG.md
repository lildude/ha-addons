## Ghostfolio Release Notes

### [`v3.32.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3320---2026-07-22)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.31.0...3.32.0)

##### Changed

- Upgraded `chartjs-chart-treemap` from version `3.1.0` to `4.2.0`

##### Fixed

- Skipped opening the holding detail dialog for cash positions on the allocations page, the analysis page and the portfolio holdings page
- Resolved an exception in the `GET api/v1/portfolio/holding/:dataSource/:symbol` endpoint for cash positions
- Improved the error handling in the access endpoints (`POST` and `PUT`) to return `400 Bad Request` when granting access to a non-existent user

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.32.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/323


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.175.0...v1.176.0
