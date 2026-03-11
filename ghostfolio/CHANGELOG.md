## Ghostfolio Release Notes

### [`v2.249.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#22490---2026-03-10)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.248.0...2.249.0)

##### Added

- Integrated *Bull Dashboard* for a detailed jobs queue view in the admin control panel (experimental)
- Added a debounce to the `PortfolioChangedListener` and `AssetProfileChangedListener` to minimize redundant *Redis* and database operations

##### Changed

- Improved the *Storybook* stories of the value component
- Improved the language localization for Dutch (`nl`)
- Improved the language localization for German (`de`)
- Upgraded `class-validator` from version `0.14.3` to `0.15.1`

##### Fixed

- Fixed false *Redis* health check failures by using unique keys and increasing the timeout to 5s

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v2.249.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/259


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.136.0...v1.137.0
