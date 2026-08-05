## Ghostfolio Release Notes

### [`v3.42.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3420---2026-08-04)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.41.0...3.42.0)

##### Changed

- Improved the usability of the portfolio summary by collapsing the *Holdings* and *Cash* breakdowns by default
- Extended the support of the *Exclude from Analysis* tag from accounts to activities
- Optimized the performance of the search in the assistant by reusing the cached portfolio snapshot
- Improved the validation of the import functionality when referencing an asset profile with the data source `MANUAL`
- Improved the validation of the endpoint to add a custom asset profile in the admin control panel

##### Fixed

- Fixed the fuzzy search for the holdings in the assistant

### [`v3.41.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3410---2026-08-03)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.40.0...3.41.0)

##### Added

- Added support for the account platforms in the activities import
- Added the database model and endpoints to manage the stock splits of an asset profile (experimental)

##### Changed

- Improved the usability of the admin control panel by eliminating the page reload on changing a setting
- Improved the usability of the admin control panel by eliminating the page reload on deleting an asset profile
- Improved the usability of the admin control panel by eliminating the page reload on flushing the cache
- Improved the usability of the admin control panel by eliminating the page reload on gathering historical market data
- Improved the language localization for German (`de`)

##### Fixed

- Fixed the loading state in the user detail dialog of the admin control panel’s users section
- Fixed a race condition where the portfolio snapshot computation was completed before its result had been cached, causing a redundant recomputation
- Fixed an endless loop in the portfolio snapshot computation if the computed result could not be read from the cache

### [`v3.40.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3400---2026-08-02)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.39.0...3.40.0)

##### Changed

- Improved the style of the read-only tags in the tags selector component
- Improved the language localization for Chinese (`zh`)
- Upgraded `nestjs` from version `11.1.27` to `11.1.28`

##### Fixed

- Fixed the handling of the *Exclude from Analysis* tag in the activities table
- Fixed the persistence of an empty comment in the create or update account dialog
- Resolved a validation error caused by empty strings in the asset profile details dialog of the admin control panel

### [`v3.39.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3390---2026-08-01)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.38.0...3.39.0)

##### Changed

- Harmonized the data format of the export functionality
- Removed the deprecated `firstOrderDate` attribute from the `GET api/v2/portfolio/performance` endpoint response
- Removed the deprecated `isExcluded` attribute of the account in favor of the *Exclude from Analysis* tag including a data migration
- Improved the language localization for German (`de`)
- Upgraded `prisma` from version `7.8.0` to `7.9.1`

##### Fixed

- Fixed the scroll behavior of the page content behind an open dialog
- Fixed the export functionality to only include the accounts of the exported activities if a filter is applied

### [`v3.38.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3380---2026-07-31)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.37.0...3.38.0)

##### Added

- Added support for the date range filter in the export functionality
- Added support for the date range filter on the portfolio activities page

##### Changed

- Improved the style of the tabs in the account detail dialog on mobile
- Improved the style of the tabs in the holding detail dialog on mobile
- Improved the style of the tabs in the asset profile dialog of the admin control panel on mobile
- Improved the style of the empty state in the *Fear & Greed Index* component
- Added the activity count to the delete menu item of the activities table
- Added the activity count to the deletion confirmation dialog of the activities table
- Improved the style of the type filter in the activities table component (experimental)
- Improved the search functionality by trimming the query
- Improved the log output in the search functionality of the *Yahoo Finance* service for unsupported queries
- Improved the performance of the property service by caching the properties in memory
- Improved the validation of the query parameters in the activities endpoints
- Improved the language localization for German (`de`)

##### Fixed

- Fixed the calendar year date range in time zones with a negative *UTC* offset
- Fixed the deletion of activities to respect the activity type filter on the activities page (experimental)
- Fixed the deletion of activities to respect the date range filter on the activities page
- Fixed the static portfolio analysis rule for a portfolio with no holdings: *Asset Class Cluster Risks* (Equity)
- Fixed the static portfolio analysis rule for a portfolio with no holdings: *Asset Class Cluster Risks* (Fixed Income)
- Fixed the static portfolio analysis rule for a portfolio with no holdings: *Currency Cluster Risks* (Investment)
- Fixed the static portfolio analysis rule for a portfolio with no holdings: *Currency Cluster Risks* (Investment: Base Currency)
- Fixed the static portfolio analysis rule for a portfolio with no holdings: *Economic Market Cluster Risks* (Developed Markets)
- Fixed the static portfolio analysis rule for a portfolio with no holdings: *Economic Market Cluster Risks* (Emerging Markets)
- Fixed the static portfolio analysis rule for a portfolio with no holdings: *Regional Market Cluster Risks* (Asia-Pacific)
- Fixed the static portfolio analysis rule for a portfolio with no holdings: *Regional Market Cluster Risks* (Emerging Markets)
- Fixed the static portfolio analysis rule for a portfolio with no holdings: *Regional Market Cluster Risks* (Europe)
- Fixed the static portfolio analysis rule for a portfolio with no holdings: *Regional Market Cluster Risks* (Japan)
- Fixed the static portfolio analysis rule for a portfolio with no holdings: *Regional Market Cluster Risks* (North America)

### [`v3.37.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3370---2026-07-30)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.36.0...3.37.0)

##### Added

- Added an empty state to the *Fear & Greed Index* component
- Added a *Storybook* story for the *Fear & Greed Index* component

##### Changed

- Moved the tags to the overview tab of the account detail dialog (experimental)
- Moved the tags to the overview tab of the holding detail dialog
- Consolidated the markets pages into a single route where the *Fear & Greed Index* is controlled by permission
- Refactored the line chart components to share the common chart configuration
- Improved the language localization for Spanish (`es`)
- Improved the language localization for Ukrainian (`uk`)

##### Fixed

- Ignored future-dated account balances in the portfolio calculation

### [`v3.36.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3360---2026-07-29)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.35.0...3.36.0)

##### Added

- Added an overview tab to the account detail dialog
- Added the tags (read-only) to the account detail dialog (experimental)

##### Changed

- Improved the portfolio summary tab on the home page
- Improved the language localization for German (`de`)
- Upgraded `@openrouter/ai-sdk-provider` from version `2.9.1` to `3.0.0`
- Upgraded `ai` from version `6.0.174` to `7.0.37`

##### Fixed

- Fixed the time in market of the portfolio summary to be empty if there is no activity
- Fixed an issue with the delete button in the activities filter component
- Fixed the tags in the read-only mode of the tags selector component

---

## Add-on Release Notes




## What's Changed
* Make integration test more resilient and easier to diagnose failures by @lildude in https://github.com/lildude/ha-addon-ghostfolio/pull/328
* Resolve home assistant's http port instead of assuming 8123 and add scheduled canary runs for beta channel by @lildude in https://github.com/lildude/ha-addon-ghostfolio/pull/329
* Update Ghostfolio to v3.42.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/327


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.179.0...v1.180.0
