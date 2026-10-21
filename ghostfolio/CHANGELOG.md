## Ghostfolio Release Notes

### [`v3.89.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3890---2026-10-20)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.88.0...3.89.0)

##### Added

- Added a *Storybook* story for the file drop area component

##### Changed

- Improved the layout of the user account settings on mobile
- Improved the usability of the activities page by eliminating the reload on canceling the import activities dialog
- Improved the loading state of the file drop area component
- Improved the accessibility of the *Buy me a coffee* button on the about page
- Improved the accessibility of the entity logo component
- Extracted the file drop area of the import activities dialog to a reusable component
- Improved the performance of the historical market data table of the admin control panel by loading only the latest market price per asset profile
- Introduced a cooldown of 12 hours for the asset profile and exchange rate gathering on activity creation by retaining the completed jobs
- Deprecated the `api/v1/platform` endpoints in favor of the `api/v1/platforms` endpoints

##### Fixed

- Fixed the missing localization of the date picker in the *FIRE* calculator
- Fixed the missing localization of the date picker in the asset profile details dialog of the admin control panel
- Fixed the missing tooltip of the client of the last request in the users table of the admin control panel

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.89.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/380


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.224.0...v1.225.0
