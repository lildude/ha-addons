## Ghostfolio Release Notes

### [`v3.87.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3870---2026-10-17)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.86.0...3.87.0)

##### Added

- Added a *Storybook* story for the investment chart component

##### Changed

- Highlighted the negative values in the performance timeline chart on the analysis page (experimental)
- Moved the investment chart component to `@ghostfolio/ui`
- Improved the matching of assets in the import of activities with *Ghostfolio AI* to prefer the holdings of the user (experimental)
- Extended the holdings table by the ISIN in the *Copy AI prompt to clipboard* actions on the analysis page and in the tool to get the portfolio of the server of the Model Context Protocol (MCP) (experimental)
- Hardened the validation of the date in the endpoint to create an account balance
- Improved the language localization for German (`de`)
- Upgraded `bootstrap` from version `4.6.2` to `5.3.8`
- Upgraded `stripe` from version `22.6.2` to `23.0.0`

##### Fixed

- Fixed an exception in the authentication interceptor when the time zone of the browser is not available
- Fixed the missing `userId` in the unique constraint of the `AccountBalance` database schema

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.87.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/378


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.222.0...v1.223.0
