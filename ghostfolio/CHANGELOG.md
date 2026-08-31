## Ghostfolio Release Notes

### [`v3.65.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3650---2026-08-31)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.64.0...3.65.0)

##### Added

- Added a tool to import activities into the portfolio to the server of the Model Context Protocol (MCP) (experimental)

##### Changed

- Extended the access to share the portfolio to support the *Restricted view and manage* permission (experimental)
- Extended the tool to get the accounts of the portfolio in the server of the Model Context Protocol (MCP) to support the filtering by account (experimental)
- Upgraded `replace-in-file` from version `8.4.0` to `9.0.0`
- Upgraded `stripe` from version `22.3.2` to `22.5.0`
- Upgraded `undici` from version `8.5.0` to `8.10.0`
- Upgraded `uuid` from version `14.0.1` to `14.0.2`

##### Fixed

- Fixed the cash positions being included in the by continent, by country and by sector charts on the allocations page and the public page
- Fixed the allocations in percentage exceeding 100% in the restricted view
- Fixed the portfolio calculation for holdings with activities before the first known historical market price by falling back to the unit price of the activity
- Fixed the additional data point at the start of the chart in the holding detail dialog for instances running in a time zone other than UTC
- Fixed the missing country mapping of *Virgin Islands (British)* in the *Financial Modeling Prep* service

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.65.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/354


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.199.0...v1.200.0
