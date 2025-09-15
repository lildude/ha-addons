## Ghostfolio Release Notes

### [`v2.199.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#21990---2025-09-14)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.198.0...2.199.0)

##### Added

- Extended the content of the performance calculation method by dividends on the Frequently Asked Questions (FAQ) page
- Added a *Storybook* story for the entity logo image component

##### Changed

- Improved the search in the *Yahoo Finance* service
- Moved the holdings table into the holdings section on the public page
- Migrated to the *Prisma Configuration File* approach (`prisma.config.ts`)
- Refactored the login with access token dialog component to standalone
- Prefixed the `crypto`, `fs` and `path` imports with `node:`
- Upgraded `yahoo-finance2` from version `3.8.0` to `3.10.0`

##### Fixed

- Fixed a pagination issue in the market data endpoint by adding `id` as a secondary sort criterion to ensure consistent ordering in the admin control panel
- Fixed a pagination issue in the user endpoint by adding `id` as a secondary sort criterion to ensure consistent ordering in the admin control panel

### [`v2.198.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#21980---2025-09-11)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.197.0...2.198.0)

##### Changed

- Extended the variations of the interstitials for the subscription
- Renamed the job identifier column in the jobs queue view of the admin control panel
- Refactored the markets page to standalone
- Refactored the fear and greed index component to standalone
- Refactored the header component to standalone
- Refactored the investment chart component to standalone
- Refactored the rule component to standalone
- Refactored the rules component to standalone
- Refactored the subscription interstitial dialog component to standalone
- Removed the `IonIcon` import from the landing page
- Improved the language localization for German (`de`)
- Upgraded `angular` from version `20.1.3` to `20.2.4`
- Upgraded `eslint` dependencies
- Upgraded `Nx` from version `21.3.9` to `21.5.1`
- Upgraded `storybook` from version `9.0.17` to `9.1.5`

##### Fixed

- Fixed the holdings table on the public page

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v2.197.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/190
* Update softprops/action-gh-release action to v2.3.3 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/189
* Update Ghostfolio to v2.199.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/191


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.96.0...v1.97.0
