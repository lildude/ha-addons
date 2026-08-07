## Ghostfolio Release Notes

### [`v3.44.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3440---2026-08-07)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.43.0...3.44.0)

##### Added

- Added a live preview of the date and number format to the user settings
- Added the country flag to the currency selector
- Added a *Storybook* story for the currency selector component
- Added the platform logo to the account selectors in the transfer cash balance dialog
- Extended the entity logo component by a `hasPlaceholder` attribute to reserve the space of a missing logo
- Warmed up the portfolio snapshot calculation in the background during the biometric authentication

##### Changed

- Improved the usability of the create watchlist item dialog by setting the initial focus to the search field
- Migrated the abstract *Material* form field from a component to a directive
- Removed the redundant `balance` attribute of the account in favor of the account balances

##### Fixed

- Fixed the values of the charts and tables in impersonation mode with an unrestricted access to show absolute values instead of percentages
- Fixed the savings rate of the investment timeline chart and the streaks on the analysis page in impersonation mode to be based on the impersonated user
- Fixed the savings rate of the *FIRE* calculator in impersonation mode to not be based on the impersonating user

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.43.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/331
* Update Ghostfolio to v3.44.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/332


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.180.0...v1.181.0
