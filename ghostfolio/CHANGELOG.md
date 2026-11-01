## Ghostfolio Release Notes

### [`v3.96.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3960---2026-10-31)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.95.0...3.96.0)

##### Added

- Added a blog post: *Black Weeks 2026*

##### Changed

- Extended the sectors mapping in the data enhancer for asset profile data via *Trackinsight*
- Improved the logging of the `web_fetch` tool in the `FetchService`
- Improved the validation of the `WEB_FETCH_ROUTES` setting in the `FetchService`
- Improved the validation of the response of the `web_fetch` tool in the `FetchService`
- Deprecated the `api/v1/admin/user`, `api/v1/user/:id` and `api/v1/user/:id/access-token` endpoints in favor of the `api/v1/users` endpoints
- Improved the language localization for German (`de`)
- Upgraded `chart.js` from version `4.5.1` to `4.6.1`

##### Fixed

- Fixed the overwrite of `countries`, `holdings` and `sectors` with empty values in the data gathering of asset profiles
- Fixed the validation of the responses in the data enhancer for asset profile data via *Trackinsight*

### [`v3.95.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3950---2026-10-31)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.94.0...3.95.0)

##### Changed

- Localized the number formatting in the tooltip of the line chart, the investment chart and the benchmark comparator
- Deprecated the `api/v1/symbol` endpoints in favor of the `api/v1/symbols` endpoints
- Removed the redundant currency from the activities in the currency of the asset profile
- Changed the *Redis* image from `redis:alpine` to `redis:8-alpine` in the `docker-compose` file (`docker-compose.yml`)
- Upgraded `@internationalized/number` from version `3.6.8` to `3.6.9`
- Upgraded `countries-and-timezones` from version `3.10.0` to `3.11.0`
- Upgraded `envalid` from version `8.2.0` to `9.0.0`
- Upgraded `uuid` from version `14.0.2` to `14.0.3`
- Upgraded `yahoo-finance2` from version `4.0.2` to `4.0.5`

##### Fixed

- Fixed the sign-out logic which deleted all cookies of the origin and did not delete the *Bull Board* cookie on plain HTTP
- Fixed the validation of the asset profile in the update activity endpoint

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.96.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/386


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.230.0...v1.231.0
