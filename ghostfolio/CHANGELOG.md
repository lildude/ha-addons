## Ghostfolio Release Notes

### [`v2.113.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#21130---2024-10-06)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.112.0...2.113.0)

##### Added

-   Set up a git-hook via `husky` to lint and format the changes before a commit
-   Added the `typescript-eslint/recommended-type-checked` rule to the `eslint` configuration
-   Added the `typescript-eslint/stylistic-type-checked` rule to the `eslint` configuration

##### Changed

-   Optimized the portfolio calculations by reusing date intervals
-   Refactored the calculation of the allocations by market on the allocations page
-   Refactored the calculation of the allocations by market on the public page

##### Fixed

-   Handled an exception in the historical market data gathering of derived currencies

### [`v2.112.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#21120---2024-10-03)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.111.0...2.112.0)

##### Added

-   Added a message to the search asset component if no results have been found in the create or update activity dialog
-   Added support to customize the rule thresholds in the *X-ray* section (experimental)

##### Changed

-   Optimized the portfolio calculations with smarter date interval selection
-   Improved the language localization for German (`de`)

##### Fixed

-   Fixed an issue in the calculation of allocations by market (*Unknown*)
-   Fixed the `eslint` configuration

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v2.113.0 by @renovate in https://github.com/lildude/ha-addon-ghostfolio/pull/86


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.27.0...v1.28.0
