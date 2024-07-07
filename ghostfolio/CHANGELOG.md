## Ghostfolio Release Notes

### [`v2.93.0`](https://togithub.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#2930---2024-07-07)

[Compare Source](https://togithub.com/ghostfolio/ghostfolio/compare/2.92.0...2.93.0)

##### Added

-   Added the *Crypto Coins Heatmap* to the resources section
-   Added the *Stock Heatmap* to the resources section
-   Extended the content of the *Self-Hosting* section by the platforms concept on the Frequently Asked Questions (FAQ) page

##### Changed

-   Improved the allocations by ETF holding on the allocations page for the impersonation mode (experimental)
-   Improved the detection of REST APIs (`JSON`) used via the scraper configuration
-   Improved the usability to delete an asset profile of type currency in the historical market data table and the asset profile details dialog of the admin control
-   Refreshed the cryptocurrencies list
-   Refactored the thresholds of the rules in the *X-ray* section
-   Removed the obsolete `version` from the `docker-compose` files
-   Upgraded `Nx` from version `19.2.2` to `19.4.0`

### [`v2.92.0`](https://togithub.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#2920---2024-06-30)

[Compare Source](https://togithub.com/ghostfolio/ghostfolio/compare/2.91.0...2.92.0)

##### Added

-   Added support for bulk deletion of asset profiles from the market data table in the admin control panel

##### Changed

-   Added support for derived currencies in the currency validation
-   Added support for automatic deletion of unused asset profiles when deleting activities
-   Improved the caching of the benchmarks in the markets overview (only cache if needed)
-   Upgraded `prisma` from version `5.15.0` to `5.16.1`

##### Fixed

-   Fixed an issue with the all time high in the benchmarks of the markets overview

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v2.93.0 by @renovate in https://github.com/lildude/ha-addon-ghostfolio/pull/57


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.17.0...v1.18.0
