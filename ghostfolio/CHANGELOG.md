## Ghostfolio Release Notes

### [`v3.46.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3460---2026-08-09)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.45.0...3.46.0)

##### Added

- Added the *Draft* tag, assigned automatically to activities dated in the future

##### Changed

- Deprecated the `isDraft` attribute of the activity in favor of the *Draft* tag
- Changed the activities count of an account to include draft activities
- Extended the *Draft* tag to activities with a custom asset profile of type `BUY`
- Improved the language localization for German (`de`)
- Upgraded `bull-board` from version `8.1.2` to `8.6.0`

##### Fixed

- Fixed the dividend and interest of an account by excluding draft activities
- Resolved an issue with unknown country names in the country weightings of the *Financial Modeling Prep* service
- Resolved an issue with unknown country names in the data enhancer for asset profile data via *Trackinsight*

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.46.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/334


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.182.0...v1.183.0
