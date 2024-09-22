## Ghostfolio Release Notes

### [`v2.109.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#21090---2024-09-17)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.108.0...2.109.0)

##### Added

-   Extended the *Public API* with a new endpoint that provides portfolio performance metrics (experimental)
-   Added the portfolio performance metrics to the public page
-   Added a blog post: *Hacktoberfest 2024*

##### Changed

-   Improved the usability of the create or update access dialog
-   Improved the loading indicator of the accounts table
-   Exposed the concurrency of the asset profile data gathering as an environment variable (`PROCESSOR_CONCURRENCY_GATHER_ASSET_PROFILE`)
-   Exposed the concurrency of the historical market data gathering as an environment variable (`PROCESSOR_CONCURRENCY_GATHER_HISTORICAL_MARKET_DATA`)
-   Exposed the concurrency of the portfolio snapshot calculation as an environment variable (`PROCESSOR_CONCURRENCY_PORTFOLIO_SNAPSHOT`)
-   Improved the language localization for German (`de`)
-   Improved the language localization for Polish (`pl`)
-   Upgraded `prisma` from version `5.19.0` to `5.19.1`

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v2.109.0 by @renovate in https://github.com/lildude/ha-addon-ghostfolio/pull/79
* Improve release notes gathering by @lildude in https://github.com/lildude/ha-addon-ghostfolio/pull/81


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.24.0...v1.25.0
