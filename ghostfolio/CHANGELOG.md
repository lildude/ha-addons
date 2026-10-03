## Ghostfolio Release Notes

### [`v3.78.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3780---2026-10-03)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.77.0...3.78.0)

##### Added

- Added the server of the Model Context Protocol (MCP) to the features page (experimental)

##### Changed

- Improved the label of the cash positions in the holdings charts and table
- Excluded the cash position in the base currency from the holdings table on the overview tab of the home page (experimental)
- Extended the tools to get the activities, the portfolio and the watchlist in the server of the Model Context Protocol (MCP) to include the data source (experimental)
- Removed the deprecated `SymbolProfile` field from the endpoints `GET api/v1/activities`, `GET api/v1/activities/:id` and `POST api/v1/import`
- Improved the language localization for German (`de`)
- Upgraded `@openrouter/ai-sdk-provider` from version `3.0.0` to `3.1.0`
- Upgraded `ai` from version `7.0.37` to `7.0.114`
- Upgraded `dotenv` from version `17.4.2` to `18.0.3`

##### Fixed

- Fixed the calculation of the interest in the account detail dialog for activities with a quantity other than one
- Fixed the positive performance from the all time high in the watchlist
- Fixed the portfolio calculation for holdings with historical market prices between the chart dates
- Fixed the asset profile identifier in the historical market data gathering of the `POST api/v1/activities` endpoint

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.78.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/369


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.213.0...v1.214.0
