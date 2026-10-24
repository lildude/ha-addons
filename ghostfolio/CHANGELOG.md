## Ghostfolio Release Notes

### [`v3.91.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3910---2026-10-23)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.90.0...3.91.0)

##### Added

- Added a link to the holdings tab in the holdings table on the overview tab of the home page (experimental)

##### Changed

- Extended the account detail dialog to include the change and the performance (experimental)
- Improved the market price in the benchmark detail dialog by adding the currency and reducing the precision on mobile
- Improved the style of the close button in the dialog footer component
- Improved the style of the close button in the dialog header component
- Restricted the asset endpoint (`GET api/v1/asset/:dataSource/:symbol`) to authenticated users
- Refined the MCP server instructions based on the user’s subscription (experimental)
- Improved the language localization for German (`de`)
- Upgraded `prettier` from version `3.9.9` to `3.9.10`

##### Fixed

- Fixed a transaction timeout for presets in the historical market data table of the admin control panel
- Added the missing permission check in the `GET api/v1/import/dividends/:dataSource/:symbol` endpoint

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.91.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/382


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.226.0...v1.227.0
