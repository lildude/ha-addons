## Ghostfolio Release Notes

### [`v2.209.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#22090---2025-10-18)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.208.0...2.209.0)

##### Added

- Extended the glossary of the resources page by *Stealth Wealth*
- Extended the content of the pricing page
- Added a *Storybook* story for the holdings table component

##### Changed

- Disabled the zoom functionality in the *Progressive Web App* (PWA)
- Improved the currency validation in the get asset profiles functionality of the data provider service
- Improved the currency validation in the search functionality of the data provider service
- Optimized the get quotes functionality by utilizing the asset profile resolutions in the *Financial Modeling Prep* service
- Extracted the footer to a component
- Refactored the blog page component to standalone
- Improved the portfolio calculator unit tests to load the user currency from the exported file
- Improved the language localization for German (`de`)

##### Fixed

- Fixed an issue in the `csv` file import where custom asset profiles failed due to validation errors
- Fixed an issue with the total buy and sell calculation in the summary related to activities in a custom currency
- Respected the include indices flag in the search functionality of the *Financial Modeling Prep* service
- Fixed an issue where the scroll position was not restored when changing pages
- Fixed the word wrap in the menus of the activities table component
- Fixed the dark mode in the *As seen in* section on the landing page

---

## Add-on Release Notes




## What's Changed
* Update softprops/action-gh-release action to v2.4.1 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/202
* Update Ghostfolio to v2.209.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/204


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.104.0...v1.105.0
