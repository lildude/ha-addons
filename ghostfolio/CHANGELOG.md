## Ghostfolio Release Notes

### [`v2.115.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#21150---2024-10-14)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.114.0...2.115.0)

##### Added

-   Added the name to the tooltip of the chart of the holdings tab on the home page (experimental)

##### Changed

-   Improved the backgrounds of the chart of the holdings tab on the home page (experimental)
-   Improved the labels of the chart of the holdings tab on the home page (experimental)
-   Improved the usability to customize the rule thresholds in the *X-ray* section by introducing sliders (experimental)
-   Refactored the rule thresholds in the *X-ray* section (experimental)
-   Exposed the timeout of the portfolio snapshot computation as an environment variable (`PROCESSOR_PORTFOLIO_SNAPSHOT_COMPUTATION_TIMEOUT`)
-   Harmonized the processor concurrency environment variables
-   Improved the portfolio unit tests to work with exported activity files
-   Enabled the `noUnusedLocals` compiler option in the `tsconfig`
-   Enabled the `noUnusedParameters` compiler option in the `tsconfig`

##### Fixed

-   Considered the language of the user settings on login with *Security Token*

##### Todo

-   Rename the environment variable from `PROCESSOR_CONCURRENCY_GATHER_ASSET_PROFILE` to `PROCESSOR_GATHER_ASSET_PROFILE_CONCURRENCY`
-   Rename the environment variable from `PROCESSOR_CONCURRENCY_GATHER_HISTORICAL_MARKET_DATA` to `PROCESSOR_GATHER_HISTORICAL_MARKET_DATA_CONCURRENCY`
-   Rename the environment variable from `PROCESSOR_CONCURRENCY_PORTFOLIO_SNAPSHOT` to `PROCESSOR_PORTFOLIO_SNAPSHOT_COMPUTATION_CONCURRENCY`

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v2.115.0 by @renovate in https://github.com/lildude/ha-addon-ghostfolio/pull/89


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.29.0...v1.30.0
