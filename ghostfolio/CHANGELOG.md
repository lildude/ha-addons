## Ghostfolio Release Notes

### [`v3.75.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3750---2026-09-28)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.74.0...3.75.0)

##### Changed

- Extended the net performance on the analysis page to include the dividends (experimental)
- Extended the net performance in the portfolio summary to include the dividends (experimental)
- Improved the get quotes functionality of the *Manual* service
- Migrated the historical market data editor dialog from `ngModel` to form control
- Migrated the *ESLint* configuration to the flat config format without `FlatCompat`
- Upgraded `chartjs-chart-treemap` from version `4.2.0` to `4.2.2`

##### Fixed

- Fixed an issue where holdings without a quote have been valued at the unit price of the latest activity instead of the latest market price
- Fixed the discovery of the *OpenID Connect* (`OIDC`) configuration for issuer URLs with a trailing slash (experimental)

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.75.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/365


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.210.0...v1.211.0
