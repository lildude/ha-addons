## Ghostfolio Release Notes

### [`v2.148.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#21480---2025-03-24)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.147.0...2.148.0)

##### Added

-   Added the `isActive` flag to the asset profile model

##### Changed

-   Improved the language localization for German (`de`)
-   Upgraded `ngx-skeleton-loader` from version `9.0.0` to `10.0.0`

### [`v2.147.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#21470---2025-03-22)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.146.0...2.147.0)

##### Added

-   Added support for filtering in the *Copy AI prompt to clipboard* actions on the analysis page (experimental)
-   Added support for generating a new *Security Token* via the users table of the admin control panel
-   Added an endpoint to localize the `site.webmanifest`
-   Added the *Storybook* path to the `sitemap.xml` file

##### Changed

-   Improved the export functionality by applying filters on accounts and tags
-   Improved the symbol validation in the *Yahoo Finance* service (get asset profiles)
-   Eliminated `firstOrderDate` from the summary of the portfolio details endpoint in favor of using `dateOfFirstActivity` from the user endpoint
-   Refactored `lodash.uniq` with `Array.from(new Set(...))`
-   Refreshed the cryptocurrencies list
-   Improved the language localization for German (`de`)
-   Improved the language localization for Turkish (`tr`)

##### Fixed

-   Fixed an issue in the activities import functionality related to the account balances
-   Changed client-side dates to be sent in UTC format to ensure date consistency
    -   Benchmark endpoint
    -   Exchange rate endpoint

---

## Add-on Release Notes




## What's Changed
* Update devcontainer config by @lildude in https://github.com/lildude/ha-addon-ghostfolio/pull/134
* Update home-assistant/builder action to v2025.03.0 by @renovate in https://github.com/lildude/ha-addon-ghostfolio/pull/135
* Update Ghostfolio to v2.148.0 by @renovate in https://github.com/lildude/ha-addon-ghostfolio/pull/136


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.60.0...v1.61.0
