## Ghostfolio Release Notes

### [`v3.9.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#390---2026-06-12)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.8.0...3.9.0)

##### Added

- Extended the *Public API* with the endpoint to update the asset profile data (`PATCH api/v1/asset-profiles/:dataSource/:symbol`) (experimental)
- Added support for a dedicated *OpenRouter* model for the `web_fetch` tool in the `FetchService`

##### Changed

- Prefilled the form in the account balance management with the current cash balance
- Disabled the selection of future dates in the account balance management
- Grouped commodities and cryptocurrencies into the unknown bucket of the allocations by continent, country, currency, market and sector charts on the allocations page
- Moved the support for specific calendar year date ranges (`2025`, `2024`, `2023`, etc.) in the assistant from experimental to general availability
- Migrated various components from `NgStyle` to style bindings
- Improved the language localization for Korean (`ko`)

##### Fixed

- Grouped activities without an account into the unknown bucket of the allocations by account and platform charts on the allocations page

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.9.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/290


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.151.0...v1.152.0
