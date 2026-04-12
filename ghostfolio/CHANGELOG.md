## Ghostfolio Release Notes

### [`v2.254.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#22540---2026-03-10)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.253.0...2.254.0)

##### Added

- Added loan as an asset sub class

##### Changed

- Extended the asset profile details dialog in the admin control panel to support editing countries for all asset types
- Extended the asset profile details dialog in the admin control panel to support editing sectors for all asset types
- Migrated the data collection for the *Open Startup* (`/open`) page to the queue design pattern
- Improved the language localization for German (`de`)
- Upgraded `lodash` from version `4.17.23` to `4.18.1`

##### Fixed

- Improved the style of the activity type component

### [`v2.253.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#22530---2026-03-06)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.252.0...2.253.0)

##### Added

- Added support for filtering by activity type on the activities page (experimental)
- Extended the admin control panel by adding a copy-to-clipboard button for the application version

##### Changed

- Extended the terms of service for the *Ghostfolio* SaaS (cloud) to include *Paid Plans* and *Refund Policy*
- Upgraded `prisma` from version `6.19.0` to `6.19.3`

##### Fixed

- Fixed the allocations by account chart on the allocations page in the *Presenter View*
- Fixed the allocations by asset class chart on the allocations page in the *Presenter View*
- Fixed the allocations by currency chart on the allocations page in the *Presenter View*
- Fixed the allocations by ETF provider chart on the allocations page in the *Presenter View*
- Fixed the allocations by platform chart on the allocations page in the *Presenter View*

### [`v2.252.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#22520---2026-03-02)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.251.0...2.252.0)

##### Added

- Added support for a copy-to-clipboard functionality in the value component
- Extended the holding detail dialog by adding a copy-to-clipboard button for the ISIN number (experimental)
- Extended the holding detail dialog by adding a copy-to-clipboard button for the symbol (experimental)
- Extended the user detail dialog of the admin control panel’s users section by adding a copy-to-clipboard button for the user id

##### Changed

- Refreshed the cryptocurrencies list
- Improved the language localization for German (`de`)
- Improved the language localization for Spanish (`es`)
- Upgraded `countries-list` from version `3.2.2` to `3.3.0`
- Upgraded `ng-extract-i18n-merge` from `3.2.1` to `3.3.0`
- Upgraded `stripe` from version `20.3.0` to `20.4.1`

---

## Add-on Release Notes




## What's Changed
* Update docker/login-action action to v4.1.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/267
* Migrate from deprecated home-assistant/builder to new composable actions by @Copilot in https://github.com/lildude/ha-addon-ghostfolio/pull/269
* Update softprops/action-gh-release action to v2.6.2 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/270
* Update softprops/action-gh-release action to v3 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/271
* Update Ghostfolio to v2.254.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/268

## New Contributors
* @Copilot made their first contribution in https://github.com/lildude/ha-addon-ghostfolio/pull/269

**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.139.0...v1.140.0
