## Ghostfolio Release Notes

### [`v3.59.1`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3591---2026-08-23)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.58.0...3.59.1)

##### Added

- Added support to remove a received access on the access page
- Extended the holdings table by the activities count in the *Copy AI prompt to clipboard for analysis* action on the analysis page (experimental)
- Extended the holdings table by the activities count in the *Copy portfolio data to clipboard for AI prompt* action on the analysis page (experimental)
- Extended the holdings table by the date of first activity in the *Copy AI prompt to clipboard for analysis* action on the analysis page (experimental)
- Extended the holdings table by the date of first activity in the *Copy portfolio data to clipboard for AI prompt* action on the analysis page (experimental)
- Added a server of the Model Context Protocol (MCP) with a tool to get the holdings of the portfolio (experimental)
- Added the `type` to the `Access` database schema
- Improved the language localization for German (`de`)

##### Fixed

- Fixed an issue in the create or update access dialog where a public access could not be updated (experimental)
- Fixed the performance calculation for dates without historical market data by carrying forward the market price from dates with activities

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.59.1 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/348


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.194.0...v1.195.0
