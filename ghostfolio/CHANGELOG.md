## Ghostfolio Release Notes

### [`v3.71.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3710---2026-09-19)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.70.1...3.71.0)

##### Added

- Added a hint for the performance calculation type to the analysis page
- Added support for country codes to the entity logo component and used it for cash holdings and currency selectors

##### Changed

- Localized the default account name created during user registration
- Improved the performance of the watchlist by removing an unnecessary index from the market data table
- Improved the performance of deleting a watchlist item
- Extended the `POST api/v1/user` endpoint by the language code
- Improved the language localization for German (`de`)
- Upgraded `@internationalized/number` from version `3.6.7` to `3.6.8`
- Upgraded `bull-board` from version `9.8.0` to `9.9.0`
- Upgraded `marked` from version `17.0.2` to `18.0.12`
- Upgraded `ngx-markdown` from version `22.0.0` to `22.0.2`

##### Fixed

- Fixed the missing account balance of the current day for users in a time zone ahead of the instance

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.71.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/361


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.206.0...v1.207.0
