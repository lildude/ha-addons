## Ghostfolio Release Notes

### [`v2.175.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#21750---2025-06-28)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.174.0...2.175.0)

##### Added

- Set up the language localization for the static portfolio analysis rule: *Asset Class Cluster Risks* (Equity)
- Set up the language localization for the static portfolio analysis rule: *Asset Class Cluster Risks* (Fixed Income)
- Set up the language localization for the static portfolio analysis rule: *Currency Cluster Risks* (Investment)
- Set up the language localization for the static portfolio analysis rule: *Currency Cluster Risks* (Investment: Base Currency)

##### Changed

- Extended the selector handling of the scraper configuration for more use cases
- Extended the *AI* service by an access to *OpenRouter* (experimental)
- Changed `node main` to `exec node main` in the `entrypoint.sh` file to improve the container signal handling
- Renamed `Account` to `account` in the `AccountBalance` database schema
- Improved the language localization for Catalan (`ca`)
- Improved the language localization for Dutch (`nl`)
- Improved the language localization for Español (`es`)
- Improved the language localization for German (`de`)
- Improved the language localization for Turkish (`tr`)

##### Fixed

- Fixed an issue with the locale in the scraper configuration

### [`v2.174.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#21740---2025-06-24)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.173.0...2.174.0)

##### Added

- Set up the language localization for the static portfolio analysis rule: *Account Cluster Risks* (Current Investment)
- Extended the data providers management of the admin control panel by the online status

##### Changed

- Migrated the `@ghostfolio/ui/value` component to control flow
- Renamed `Platform` to `platform` in the `Account` database schema
- Refactored the health check endpoint for data enhancers
- Refactored the health check endpoint for data providers
- Improved the language localization for French (`fr`)
- Improved the language localization for German (`de`)
- Refreshed the cryptocurrencies list

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v2.172.0 by @renovate in https://github.com/lildude/ha-addon-ghostfolio/pull/162
* Update Ghostfolio to v2.173.0 by @renovate in https://github.com/lildude/ha-addon-ghostfolio/pull/163
* Don't set `API_KEY_COINGECKO_PRO` and `API_KEY_COINGECKO_DEMO` environment variables to null by @lildude in https://github.com/lildude/ha-addon-ghostfolio/pull/166
* Catch initial language redirect and improve nginx config by @lildude in https://github.com/lildude/ha-addon-ghostfolio/pull/167
* Update Ghostfolio to v2.175.0 by @renovate in https://github.com/lildude/ha-addon-ghostfolio/pull/165


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.81.0...v1.82.0
