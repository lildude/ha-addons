## Ghostfolio Release Notes

### [`v2.134.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#21340---2025-01-15)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.133.1...2.134.0)

##### Added

-   Set up the language localization for Українська (`uk`)

##### Changed

-   Extended the health check endpoint to include database and cache operations (experimental)
-   Refactored various `lodash` functions with native JavaScript equivalents
-   Improved the language localization for German (`de`)
-   Upgraded `prisma` from version `6.1.0` to `6.2.1`

##### Fixed

-   Fixed an issue with the import of activities with type `FEE` (where unit price is `0`)
-   Fixed an issue with the renaming of activities with type `FEE`, `INTEREST`, `ITEM` or `LIABILITY`
-   Handled an exception in the scraper configuration introduced by the migration from `got` to `fetch`

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v2.134.0 by @renovate in https://github.com/lildude/ha-addon-ghostfolio/pull/116


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.47.0...v1.48.0
