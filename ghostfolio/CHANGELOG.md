## Ghostfolio Release Notes

### [`v2.206.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#22060---2025-10-04)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.205.0...2.206.0)

##### Changed

- Localized the number formatting in the settings dialog to customize the rule thresholds of the *X-ray* page
- Improved the usability of the assistant by preselecting the first search result
- Improved the usability of the *Cancel* / *Close* buttons in the create watchlist item dialog
- Refactored the `fireWealth` from `number` type to a structured object in the summary of the portfolio details endpoint
- Refactored the *Open Startup* (`/open`) page to standalone
- Refactored the file drop directive to standalone
- Refactored the symbol pipe to standalone

##### Fixed

- Handled an exception in the get asset profile functionality of the *Financial Modeling Prep* service
- Added the missing `CommonModule` import in the import activities dialog

### [`v2.205.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#22050---2025-10-01)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.204.0...2.205.0)

##### Changed

- Restricted the selection of the retirement date picker in the *FIRE* calculator to a future date
- Improved the support for mutual funds in the *Financial Modeling Prep* service (get asset profiles)
- Improved the language localization for German (`de`)
- Upgraded `prisma` from version `6.16.1` to `6.16.3`

### [`v2.204.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#22040---2025-09-30)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.203.0...2.204.0)

##### Added

- Added the safe withdrawal rate to the user settings (experimental)

##### Changed

- Improved the number formatting of the y-axis labels in the investment chart component
- Localized the number formatting of the y-axis labels in the line chart component
- Improved the wording of the 4% rule in the *FIRE* section
- Improved the usability of the create asset profile dialog in the market data section of the admin control panel
- Improved the language localization for German (`de`)

##### Fixed

- Improved the table headers’ alignment of the activities table

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v2.206.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/198
* Update softprops/action-gh-release action to v2.3.4 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/199
* Update docker/login-action action to v3.6.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/197


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.101.0...v1.102.0
