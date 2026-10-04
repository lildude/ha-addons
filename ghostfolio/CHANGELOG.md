## Ghostfolio Release Notes

### [`v3.79.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3790---2026-10-04)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.78.0...3.79.0)

##### Added

- Extended the *Public API* with the liveness probe endpoint (`GET api/v1/health/liveness`) (experimental)
- Added the graceful shutdown of the server on `SIGINT` and `SIGTERM`
- Added `stop_grace_period` to the *Ghostfolio* service in the `docker-compose` file (`docker-compose.yml`)

##### Changed

- Localized the number formatting in the chart of the holdings tab on the home page
- Moved the dividend and the dividend yield in the holding detail dialog from experimental to general availability
- Changed the installation of the dependencies from `npm install` to `npm ci` in the `Dockerfile`
- Upgraded `@simplewebauthn/browser` and `@simplewebauthn/server` from version `13.3` to `14.0`
- Upgraded `nestjs` from version `11.2.3` to `11.2.6`

##### Fixed

- Fixed an issue with the algebraic sign in the tooltip of the chart of the holdings tab on the home page
- Fixed the asset profile of the activities after a fee, an interest or a liability with the same symbol in the activities import

##### Todo

- Add `stop_grace_period: 1m` to the *Ghostfolio* service in your `docker-compose` file (see `docker-compose.yml`)

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.79.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/370


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.214.0...v1.215.0
