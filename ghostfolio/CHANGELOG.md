## Ghostfolio Release Notes

### [`v2.133.1`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#21331---2025-01-09)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.133.0...2.133.1)

##### Added

-   Added a *Copy AI prompt to clipboard* action to the analysis page (experimental)

##### Changed

-   Improved the usability of the *Copy link to clipboard* action by adding a confirmation on success in the access table to share the portfolio
-   Improved the endpoint to fetch the logo of an asset or a platform by sending the original MIME type
-   Eliminated `got` in favor of using `fetch`
-   Changed the `REDIS_HOST` from `localhost` to `redis` in `.env.example`
-   Changed the *Postgres* host from `localhost` to `postgres` in `.env.example`
-   Changed the *Postgres* image from `postgres:15` to `postgres:15-alpine` in the `docker-compose` files
-   Introduced `extends` in the `docker-compose` files
-   Improved the language localization for German (`de`)
-   Refreshed the cryptocurrencies list
-   Upgraded `envalid` from version `7.3.1` to `8.0.0`
-   Upgraded `replace-in-file` from version `7.0.1` to `8.3.0`

##### Fixed

-   Improved the handling of a missing url in the endpoint to fetch the logo of an asset or a platform
-   Fixed the *Storybook* setup

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v2.133.1 by @renovate in https://github.com/lildude/ha-addon-ghostfolio/pull/115


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.46.0...v1.47.0
