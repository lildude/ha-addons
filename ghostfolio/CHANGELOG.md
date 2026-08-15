## Ghostfolio Release Notes

### [`v3.52.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3520---2026-08-15)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.51.0...3.52.0)

##### Added

- Added the business logic and tests for stock splits of an asset profile (experimental)
- Added the scopes to the access
- Added an index for `symbolProfileId` to the order database table

##### Changed

- Restricted the creation of tags to unique names in the tags selector component
- Changed the redaction of the monetary values in impersonation mode to be based on the scopes of the access
- Deprecated the `permissions` attribute of the access in favor of the scopes
- Extended the `GET api/v1/access` endpoint by the scopes
- Extended the `GET api/v1/user` endpoint by the scopes
- Improved the performance of deleting activities by loading only the required data

##### Fixed

- Fixed the missing currency conversion of the dividends on the analysis page
- Fixed the missing error state in the watchlist
- Fixed the missing loading indicator in the benchmarks of the markets overview
- Fixed the incorrect error log output when deleting activities

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.52.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/339


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.187.0...v1.188.0
