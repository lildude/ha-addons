## Ghostfolio Release Notes

### [`v2.225.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#22250---2025-12-31)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.224.2...2.225.0)

##### Added

- Added a new endpoint to get all platforms (`GET api/v1/platforms`)
- Added the session url to the endpoint response of the *Stripe* checkout

##### Changed

- Improved the routing of the user detail dialog in the users section of the admin control panel
- Lifted the asset profile identifier editing restriction for `MANUAL` data sources in the asset profile details dialog of the admin control panel
- Deprecated the public *Stripe* key
- Improved the language localization for German (`de`)
- Eliminated `ngx-stripe`
- Upgraded `angular` from version `20.2.4` to `21.0.6`
- Upgraded `marked` from version `15.0.4` to `17.0.1`
- Upgraded `ngx-device-detector` from version `10.1.0` to `11.0.0`
- Upgraded `ng-extract-i18n-merge` from `3.1.0` to `3.2.1`
- Upgraded `ngx-markdown` from version `20.0.0` to `21.0.1`
- Upgraded `Nx` from version `21.5.1` to `22.3.3`
- Upgraded `shx` from version `0.3.4` to `0.4.0`
- Upgraded `storybook` from version `9.1.5` to `10.1.10`
- Upgraded `zone.js` from version `0.15.1` to `0.16.0`

##### Fixed

- Added the missing currency suffix to the cash balance field in the create or update account dialog
- Fixed the time in market display of the portfolio summary tab on the home page for the impersonation mode
- Fixed the delete button in the asset profile details dialog of the admin control panel by providing the missing `watchedByCount` parameter

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v2.225.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/225


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.115.0...v1.116.0
