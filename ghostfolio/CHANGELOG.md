## Ghostfolio Release Notes

### [`v3.80.2`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3802---2026-10-06)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.80.1...3.80.2)

##### Added

- Exposed the `ENABLE_FEATURE_SECURITY_HEADERS` environment variable to enable HTTP security headers (experimental)

##### Changed

- Improved the portfolio snapshot calculation to get the quotes of active holdings only
- Improved the performance of getting the latest market data by optimizing the indexes of the market data table
- Deprecated `SymbolProfile` in favor of `assetProfile` in the endpoint `POST api/v1/activities`
- Upgraded `Nx` from version `23.1.1` to `23.2.1`

##### Fixed

- Fixed a layout issue in the top and bottom holdings of the analysis page by truncating long names
- Fixed the missing thousands separator of 4-digit numbers in certain locales
- Fixed an issue where holdings without a market price have been valued at the unit price of a dividend, a fee, an interest or a liability
- Fixed the check for today in the current rate service for instances running in a time zone behind UTC

### [`v3.80.1`](https://redirect.github.com/ghostfolio/ghostfolio/releases/tag/3.80.1)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.80.0...3.80.1)

##### Added

- Exposed the `ENABLE_FEATURE_SECURITY_HEADERS` environment variable to enable HTTP security headers (experimental)

##### Changed

- Improved the portfolio snapshot calculation to get the quotes of active holdings only
- Improved the performance of getting the latest market data by optimizing the indexes of the market data table
- Deprecated `SymbolProfile` in favor of `assetProfile` in the endpoint `POST api/v1/activities`
- Upgraded `Nx` from version `23.1.1` to `23.2.1`

##### Fixed

- Fixed a layout issue in the top and bottom holdings of the analysis page by truncating long names
- Fixed the missing thousands separator of 4-digit numbers in certain locales
- Fixed an issue where holdings without a market price have been valued at the unit price of a dividend, a fee, an interest or a liability
- Fixed the check for today in the current rate service for instances running in a time zone behind UTC

##### Special Thanks

- [@&#8203;antoniodgonzalez](https://redirect.github.com/antoniodgonzalez)
- [@&#8203;dtslvr](https://redirect.github.com/dtslvr)
- [@&#8203;KenTandrian](https://redirect.github.com/KenTandrian)

### [`v3.80.0`](https://redirect.github.com/ghostfolio/ghostfolio/releases/tag/3.80.0)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.79.0...3.80.0)

##### Added

- Exposed the `ENABLE_FEATURE_SECURITY_HEADERS` environment variable to enable HTTP security headers (experimental)

##### Changed

- Improved the portfolio snapshot calculation to get the quotes of active holdings only
- Improved the performance of getting the latest market data by optimizing the indexes of the market data table
- Deprecated `SymbolProfile` in favor of `assetProfile` in the endpoint `POST api/v1/activities`
- Upgraded `Nx` from version `23.1.1` to `23.2.1`

##### Fixed

- Fixed a layout issue in the top and bottom holdings of the analysis page by truncating long names
- Fixed the missing thousands separator of 4-digit numbers in certain locales
- Fixed an issue where holdings without a market price have been valued at the unit price of a dividend, a fee, an interest or a liability
- Fixed the check for today in the current rate service for instances running in a time zone behind UTC

##### Special Thanks

- [@&#8203;antoniodgonzalez](https://redirect.github.com/antoniodgonzalez)
- [@&#8203;dtslvr](https://redirect.github.com/dtslvr)
- [@&#8203;KenTandrian](https://redirect.github.com/KenTandrian)

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.80.2 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/371


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.215.0...v1.216.0
