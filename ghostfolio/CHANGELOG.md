## Ghostfolio Release Notes

### [`v3.94.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3940---2026-10-28)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.93.0...3.94.0)

##### Changed

- Improved the data source filter in the historical market data table of the admin control panel to only list the data providers in use
- Restricted the health check endpoint of the AI service (`GET api/v1/health/ai`) to administrators
- Increased the timeout in the health check endpoint of the AI service to 30 seconds
- Deprecated the `api/v1/access` endpoints in favor of the `api/v1/accesses` endpoints
- Deprecated the `api/v1/account` and `api/v1/account-balance` endpoints in favor of the `api/v1/accounts` endpoints
- Improved the performance of the code style check in the build workflow by skipping the warning-level rules of *ESLint*
- Refreshed the cryptocurrencies list
- Upgraded `undici` from version `8.12.2` to `8.12.3`

##### Fixed

- Fixed the double submission of forms in the account detail dialog, the create or update access dialog, the historical market data editor, the import activities dialog, the coupon system and the create asset profile dialog of the admin control panel
- Fixed an issue where the benchmarks in the markets overview were not updated after adding or deleting a benchmark
- Fixed an issue where users could grant a private access to themselves
- Fixed the status code of the endpoints to add and delete a benchmark if the asset profile does not exist
- Fixed the git-hook via `husky` to lint and check the formatting of the uncommitted changes before a commit

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.94.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/385


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.229.0...v1.230.0
