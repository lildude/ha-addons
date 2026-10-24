## Ghostfolio Release Notes

### [`v3.92.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3920---2026-10-24)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.91.0...3.92.0)

##### Changed

- Extended the creation and the import of activities to support the asset profiles of a premium data provider which the user already has
- Improved the performance of the historical market data table of the admin control panel by counting the market data per asset profile
- Improved the performance of the historical market data table of the admin control panel by querying subscription usage in a single database query
- Improved the matching of assets in the import of activities with *Ghostfolio AI* to include closed positions and excluded accounts (experimental)
- Hardened the `POST api/v1/import` endpoint by hiding internal error messages
- Upgraded `Nx` from version `23.2.1` to `23.3.1`
- Upgraded `zod` from version `4.6.5` to `4.6.7`

##### Fixed

- Fixed the width of the content in the overview tab of the account detail dialog, the asset profile details dialog of the admin control panel and the holding detail dialog
- Fixed the state of the market data in the historical market data gathering endpoint for a specific date

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.92.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/383


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.227.0...v1.228.0
