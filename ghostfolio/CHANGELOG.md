## Ghostfolio Release Notes

### [`v2.235.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#22350---2026-02-03)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.234.0...2.235.0)

##### Added

- Added the ability to fetch top holdings for ETF and mutual fund assets from *Yahoo Finance*
- Added support for the impersonation mode in the endpoint `GET api/v1/account/:id/balances`
- Added an action menu to the user detail dialog in the users section of the admin control panel

##### Changed

- Optimized the value redaction interceptor for the impersonation mode by introducing `fast-redact`
- Refactored `showTransactions` in favor of `showActivitiesCount` in the accounts table component
- Refactored `transactionCount` in favor of `activitiesCount` in the accounts table component
- Deprecated `transactionCount` in favor of `activitiesCount` in the endpoint `GET api/v1/admin`
- Removed the deprecated `firstBuyDate` in the portfolio calculator
- Upgraded `yahoo-finance2` from version `3.11.2` to `3.13.0`

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v2.235.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/241


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.123.0...v1.124.0
