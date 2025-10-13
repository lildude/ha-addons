## Ghostfolio Release Notes

### [`v2.208.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#22080---2025-10-11)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.207.0...2.208.0)

##### Added

- Added support for configuring the safe withdrawal rate in the *FIRE* section (experimental)

##### Changed

- Changed the *As seen in* section on the landing page to an animated carousel
- Refactored `transactionCount` to `activitiesCount` in the endpoint `GET api/v1/portfolio/holding/:dataSource/:symbol`
- Refactored various components to use self-closing tags
- Removed the deprecated endpoint `GET api/v1/portfolio/position/:dataSource/:symbol`
- Removed the deprecated endpoint `PUT api/v1/portfolio/position/:dataSource/:symbol/tags`
- Improved the language localization for German (`de`)
- Upgraded `prisma` from version `6.16.1` to `6.16.3`

##### Fixed

- Fixed the server startup message to properly display IPv6 addresses
- Enabled IPv6 connectivity for *Redis* in the job queue module by setting the address family
- Fixed an issue where importing custom asset profiles failed due to validation errors

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v2.208.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/203


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.103.0...v1.104.0
