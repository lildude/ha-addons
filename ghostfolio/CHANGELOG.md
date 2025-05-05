## Ghostfolio Release Notes

### [`v2.160.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#21600---2025-05-04)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.159.0...2.160.0)

##### Added

-   Added the watchlist to the features page
-   Extended the content of the Frequently Asked Questions (FAQ) pages

##### Changed

-   Moved the watchlist from experimental to general availability
-   Deprecated the endpoint to get a portfolio position in favor of get a holding
-   Deprecated the endpoint to update portfolio position tags in favor of update holding tags
-   Renamed `Account` to `accounts` in the `Platform` database schema
-   Upgraded `prisma` from version `6.6.0` to `6.7.0`

##### Fixed

-   Fixed an issue with the fee calculations related to activities in a custom currency

### [`v2.159.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#21590---2025-05-02)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.158.0...2.159.0)

##### Added

-   Extended the watchlist by the date of the last all time high, the current change to the all time high and the current market condition (experimental)
-   Added support for the impersonation mode in the watchlist (experimental)

##### Changed

-   Improved the language localization for Français (`fr`)
-   Upgraded `bootstrap` from version `4.6.0` to `4.6.2`

##### Fixed

-   Fixed the currency code validation by allowing `GBp`

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v2.160.0 by @renovate in https://github.com/lildude/ha-addon-ghostfolio/pull/150


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.72.0...v1.73.0
