## Ghostfolio Release Notes

### [`v3.21.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3210---2026-07-05)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.20.0...3.21.0)

##### Added

- Added support for tags in the account (experimental)
- Exposed the `PROCESSOR_PORTFOLIO_SNAPSHOT_COMPUTATION_REMOVE_ON_FAIL` environment variable to control the removal of failed jobs in the portfolio snapshot computation queue

##### Changed

- Set the change detection strategy to `OnPush` in the alert dialog component
- Set the change detection strategy to `OnPush` in the confirmation dialog component
- Set the change detection strategy to `OnPush` in the prompt dialog component
- Set the change detection strategy to `OnPush` in the overview of the admin control panel
- Set the change detection strategy to `OnPush` in the portfolio page
- Deprecated the `isExcluded` attribute of the account in favor of the *Exclude from Analysis* tag
- Improved the language localization in the users table of the admin control panel
- Improved the language localization for German (`de`)
- Upgraded `envalid` from version `8.1.1` to `8.2.0`
- Upgraded `stripe` from version `21.0.1` to `22.2.3`

##### Fixed

- Fixed an issue with the custom tags of the user in the import functionality
- Fixed the creation of the *Stripe* checkout session for languages not supported by *Stripe* (`ca` and `uk`)
- Fixed the error handling in the endpoint to create a *Stripe* checkout session

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.21.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/308


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.164.0...v1.165.0
