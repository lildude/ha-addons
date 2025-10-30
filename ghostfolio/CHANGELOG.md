## Ghostfolio Release Notes

### [`v2.212.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#22120---2025-10-29)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.211.0...2.212.0)

##### Added

- Added a close holding button to the holding detail dialog
- Added the *Sponsors* section to the about page
- Extended the user detail dialog in the users section of the admin control panel

##### Changed

- Refactored the generation of the holdings table in the *Copy AI prompt to clipboard for analysis* action on the analysis page (experimental)
- Refactored the generation of the holdings table in the *Copy portfolio data to clipboard for AI prompt* action on the analysis page (experimental)
- Improved the usability of the user detail dialog in the users section of the admin control panel
- Improved the language localization for German (`de`)

##### Fixed

- Ensured the locale is available in the settings dialog to customize the rule thresholds of the *X-ray* page

### [`v2.211.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#22110---2025-10-25)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.210.1...2.211.0)

##### Added

- Extended the export functionality by the user account’s performance calculation type
- Added the *SelfhostedHub* logo to the logo carousel on the landing page
- Added a user detail dialog to the users section of the admin control panel

##### Changed

- Localized the number formatting in the static portfolio analysis rule: *Liquidity* (Buying Power)
- Moved the *Prisma Configuration File* from `prisma.config.ts` to `.config/prisma.ts`
- Improved the language localization for German (`de`)
- Upgraded `prisma` from version `6.17.1` to `6.18.0`
- Upgraded `tablemark` from version `3.1.0` to `4.1.0`

##### Fixed

- Fixed the style in the footer row of the accounts table
- Fixed the rendering of names and symbols for custom assets in the import activities dialog
- Fixed an issue with the market price in base currency during the portfolio snapshot calculation

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v2.212.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/206


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.106.0...v1.107.0
