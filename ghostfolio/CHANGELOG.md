## Ghostfolio Release Notes

### [`v3.85.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3850---2026-10-12)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.84.2...3.85.0)

##### Added

- Added an option to enable *Ghostfolio AI* in the user settings of the user account page (experimental)
- Added an icon to indicate the client of the last request in the users table of the admin control panel

##### Changed

- Removed the deprecated `SymbolProfile` field from the endpoint `POST api/v1/activities`
- Upgraded `ai` from version `7.0.114` to `7.0.127`

##### Fixed

- Fixed the border color of the drop area in the import activities dialog (dark mode)
- Fixed the start date of the investment timeline chart on the analysis page
- Fixed the matching of assets and accounts in the import of activities with *Ghostfolio AI* (experimental)
- Fixed an issue where the update of an activity could change the asset class and asset sub class of an asset profile which does not belong to the user

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.85.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/376


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.220.0...v1.221.0
