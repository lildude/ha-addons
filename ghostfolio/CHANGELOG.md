## Ghostfolio Release Notes

### [`v3.67.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3670---2026-09-05)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.66.0...3.67.0)

##### Added

- Introduced a DTO for the query parameters of the asset profiles endpoint
- Introduced a DTO for the query parameters of the symbol lookup endpoints

##### Changed

- Improved the server of the Model Context Protocol (MCP) (experimental)
- Introduced a maximum length for the comment in the API endpoints
- Introduced a maximum length for the search query and the symbol in the API endpoints
- Hardened the validation of the query parameters (`accounts`, `assetClasses`, `dataSource` and `tags`) in the API endpoints with filters
- Upgraded `nestjs` from version `11.1.28` to `11.2.3`
- Upgraded `ngx-skeleton-loader` from version `12.0.0` to `13.0.0`

##### Fixed

- Fixed the missing icon of the expiration date picker in the create or update access dialog
- Fixed the data provider information in the holding detail dialog
- Fixed the storage of the market data in the data provider service to only include the newly fetched quotes
- Fixed the immediate expiration of a portfolio snapshot with errors
- Fixed the missing country mapping of *Congo (Dem. Rep. of the)* and *Congo (Rep. of)* in the *Financial Modeling Prep* service

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.67.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/356


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.201.0...v1.202.0
