## Ghostfolio Release Notes

### [`v3.34.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3340---2026-07-25)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.33.0...3.34.0)

##### Changed

- Included cash in the performance calculation of the portfolio
- Moved the support for tags in the account from experimental to general availability
- Improved the user experience of the users table in the admin control panel by eliminating the reload when opening and closing the user detail dialog
- Upgraded `countup.js` from version `2.10.0` to `2.10.1`
- Upgraded `dotenv` from version `17.2.3` to `17.4.2`
- Upgraded `dotenv-expand` from version `12.0.3` to `13.0.0`
- Upgraded `fuse.js` from version `7.3.0` to `7.5.0`

##### Fixed

- Fixed the *Add activity* link of the onboarding on the overview tab of the home page to open the create activity dialog
- Fixed the link of the no activities info component to open the create activity dialog
- Resolved an exception in the `POST api/v1/activities` endpoint when creating an activity with the update account balance option but without an account

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.34.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/325


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.177.0...v1.178.0
