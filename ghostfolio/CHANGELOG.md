## Ghostfolio Release Notes

### [`v3.35.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3350---2026-07-27)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.34.0...3.35.0)

##### Added

- Added a loading indicator to the access table to share the portfolio

##### Changed

- Improved the portfolio summary by presenting the cash and the holdings as a breakdown of the total assets
- Improved the *FIRE* calculator by including the cash which is not part of the emergency fund
- Improved the performance calculation and the value of the portfolio by excluding cash denominated in the base currency
- Extended the portfolio details endpoint to include the total assets and the total cash in the portfolio summary
- Deprecated `firstOrderDate` in favor of `dateOfFirstActivity` in the `GET api/v2/portfolio/performance` endpoint
- Improved the log output in the get asset profile functionality of the *Financial Modeling Prep* service for delisted asset profiles
- Refreshed the cryptocurrencies list
- Upgraded `prettier` from version `3.8.4` to `3.9.6`

##### Fixed

- Resolved an exception in the user service when getting a non-existent user
- Fixed the missing currency in the get quotes functionality of the *Financial Modeling Prep* service for cryptocurrencies without an asset profile

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.35.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/326


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.178.0...v1.179.0
