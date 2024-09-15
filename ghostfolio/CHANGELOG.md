## Ghostfolio Release Notes

### [`v2.107.1`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#21071---2024-09-12)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.107.0...2.107.1)

##### Fixed

-   Fixed an issue in the activities filters that occurred during destructuring

### [`v2.107.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#21070---2024-09-10)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.106.0...2.107.0)

##### Added

-   Extended the filters of the activities endpoint by `dataSource` and `symbol`

##### Changed

-   Migrated the portfolio snapshot calculation to the queue design pattern
-   Optimized the asynchronous operations using `Promise.all()` in the info service
-   Optimized the asynchronous operations using `Promise.all()` in the admin control panel endpoint
-   Extracted the users from the admin control panel endpoint to a dedicated endpoint
-   Improved the language localization for French (`fr`)
-   Improved the language localization for Italian (`it`)
-   Upgraded `bull` from version `4.10.4` to `4.16.2`

### [`v2.106.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#21060---2024-09-07)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.105.0...2.106.0)

##### Added

-   Set up a performance logging service
-   Added a loading indicator to the queue jobs table in the admin control panel
-   Added a loading indicator to the users table in the admin control panel
-   Added the attribute `mode` to the scraper configuration to get quotes instantly

##### Changed

-   Reworked the portfolio calculator
-   Improved the caching of the portfolio snapshot in the portfolio calculator by returning cached data and recalculating in the background when it expires
-   Exposed the log levels as an environment variable (`LOG_LEVELS`)
-   Exposed the maximum of chart data items as an environment variable (`MAX_CHART_ITEMS`)
-   Changed the data format of the environment variable `CACHE_QUOTES_TTL` from seconds to milliseconds
-   Changed the data format of the environment variable `CACHE_TTL` from seconds to milliseconds
-   Removed the environment variable `MAX_ITEM_IN_CACHE`
-   Improved the error logs of the scraper configuration test in the asset profile details dialog of the admin control
-   Improved the language localization for Polish (`pl`)
-   Migrated from `cache-manager-redis-store` to `cache-manager-redis-yet`
-   Upgraded `cache-manager` from version `3.4.3` to `5.7.6`
-   Upgraded `prisma` from version `5.18.0` to `5.19.0`

##### Fixed

-   Fixed an issue in the view mode toggle of the holdings tab on the home page (experimental)
-   Fixed an issue on the portfolio activities page by loading the data only once
-   Fixed an issue in the carousel component for the testimonial section on the landing page
-   Fixed the historical market data gathering in the *Yahoo Finance* service by switching from `historical()` to `chart()`
-   Handled an exception in the historical market data component of the asset profile details dialog in the admin control panel

### [`v2.105.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#21050---2024-08-21)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.104.1...2.105.0)

##### Added

-   Added support to deactivate rules in the *X-ray* section (experimental)

##### Changed

-   Improved the language localization for German (`de`)

##### Fixed

-   Fixed the currency conversion for fees and values in the dividend import by applying the correct rate based on the activity date
-   Fixed the currency conversion for fees and values in the activities service by applying the correct rate based on the activity date

### [`v2.104.1`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#21041---2024-08-17)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.104.0...2.104.1)

##### Fixed

-   Fixed an issue with the clone functionality of an activity caused by a changed date format

### [`v2.104.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#21040---2024-08-17)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.103.0...2.104.0)

##### Added

-   Set up a notification service for alert and confirmation dialogs

##### Changed

-   Refactored the dark theme CSS selector
-   Improved the language localization for German (`de`)
-   Upgraded `date-fns` from version `2.29.3` to `3.6.0`
-   Upgraded `zone.js` from version `0.14.7` to `0.14.10`

##### Fixed

-   Removed `read_only: true` from the `docker-compose.yml` file to allow `prisma` to run migrations

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio by @renovate in https://github.com/lildude/ha-addon-ghostfolio/pull/69
* Use a fixed version for the builder by @lildude in https://github.com/lildude/ha-addon-ghostfolio/pull/71
* Update Ghostfolio to v2.103.0 by @renovate in https://github.com/lildude/ha-addon-ghostfolio/pull/70
* Update home-assistant/builder action to v2024.08.2 by @renovate in https://github.com/lildude/ha-addon-ghostfolio/pull/72
* Update Ghostfolio to v2.107.1 by @renovate in https://github.com/lildude/ha-addon-ghostfolio/pull/73


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.22.0...v1.23.0
