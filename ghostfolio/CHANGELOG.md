## Ghostfolio Release Notes

### [`v3.30.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3300---2026-07-19)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.29.0...3.30.0)

##### Added

- Added support for converting an asset profile to the `MANUAL` data source in the asset profile details dialog of the admin control panel

##### Changed

- Extended the `extractNumberFromString()` function to support negative values
- Restricted the symbol data endpoint (`GET /api/v1/symbol/:dataSource/:symbol`) to authenticated users
- Removed the deprecated `auth` endpoint of the login with *Security Token* (`GET`)
- Simplified the `getHistorical()` function response in the data provider interface
- Upgraded `bull-board` from version `8.0.1` to `8.1.2`

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.30.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/320


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.173.0...v1.174.0
