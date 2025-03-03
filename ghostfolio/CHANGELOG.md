## Ghostfolio Release Notes

### [`v2.143.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#21430---2025-03-02)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.142.0...2.143.0)

##### Added

-   Added the Ghostfolio *LinkedIn* page to the about page
-   Added the Ghostfolio *LinkedIn* page to the footer

##### Changed

-   Optimized the asynchronous operations using `Promise.all()` in the portfolio service (`getPerformance`)
-   Improved the symbol lookup in the *Trackinsight* data enhancer for asset profile data
-   Removed the no transactions info component from the holdings table on the home page
-   Refactored the show condition of the step by step introduction for new users using the activities count
-   Upgraded `color` from version `4.2.3` to `5.0.0`
-   Upgraded `prisma` from version `6.3.0` to `6.4.1`

##### Fixed

-   Handled an exception in the export functionality related to platforms
-   Handled an exception in the benchmark service related to unnamed asset profiles

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v2.143.0 by @renovate in https://github.com/lildude/ha-addon-ghostfolio/pull/129


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.56.0...v1.57.0
