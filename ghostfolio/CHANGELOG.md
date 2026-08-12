## Ghostfolio Release Notes

### [`v3.48.1`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3481---2026-08-11)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.48.0...3.48.1)

##### Added

- Added the quantity to the accounts tab of the holding detail dialog (experimental)

##### Changed

- Improved the performance of the *X-ray* page by resolving the user only once per request
- Refactored the impersonation mode to resolve the impersonated user once per request in a guard instead of in every endpoint
- Restricted the modification of data in impersonation mode to the data of the authenticated user
- Restricted the update of the user settings in impersonation mode to the settings of the authenticated user

##### Fixed

- Fixed the allocation in the accounts tab of the holding detail dialog caused by floating-point rounding
- Fixed the allocation in the accounts tab of the holding detail dialog by excluding the cash balance of the account
- Fixed the account aggregations in impersonation mode to be based on the impersonated user
- Fixed the base currency of the activities in impersonation mode to be based on the impersonated user
- Fixed the base currency of the dividends in impersonation mode to be based on the impersonated user
- Fixed the base currency of the user account settings in impersonation mode to be disabled
- Fixed the benchmark of the performance chart in impersonation mode to be based on the authenticated user
- Fixed the emergency fund of the *X-ray* page in impersonation mode to be based on the impersonated user
- Fixed the redaction of the emergency fund, projected total amount and savings rate in a restricted view
- Fixed the rules of the *X-ray* page to be withheld in a restricted view
- Fixed the savings rate of the *FIRE* calculator in impersonation mode to be presented
- Fixed the user settings in impersonation mode to be based on the impersonated user
- Fixed the validation of the impersonation identifier of an unknown user

### [`v3.48.0`](https://redirect.github.com/ghostfolio/ghostfolio/releases/tag/3.48.0)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.47.0...3.48.0)

##### Added

- Added the quantity to the accounts tab of the holding detail dialog (experimental)

##### Fixed

- Fixed the allocation in the accounts tab of the holding detail dialog caused by floating-point rounding
- Fixed the allocation in the accounts tab of the holding detail dialog by excluding the cash balance of the account
- Fixed the account aggregations in impersonation mode to be based on the impersonated user
- Fixed the base currency of the activities in impersonation mode to be based on the impersonated user
- Fixed the base currency of the dividends in impersonation mode to be based on the impersonated user
- Fixed the base currency of the user account settings in impersonation mode to be disabled
- Fixed the benchmark selector of the performance chart on the analysis page in impersonation mode to be disabled
- Fixed the emergency fund of the *X-ray* page in impersonation mode to be based on the impersonated user
- Fixed the savings rate of the *FIRE* calculator in impersonation mode to be presented
- Fixed the user settings in impersonation mode to be based on the impersonated user
- Fixed the validation of the impersonation identifier of an unknown user

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.48.1 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/336


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.184.0...v1.185.0
