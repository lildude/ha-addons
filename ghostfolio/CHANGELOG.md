## Ghostfolio Release Notes

### [`v3.33.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3330---2026-07-25)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.32.0...3.33.0)

##### Added

- Added the stack trace logging for `MaxListenersExceededWarning` occurrences

##### Changed

- Moved the support to create custom tags from experimental to general availability
- Recomputed the portfolio snapshot calculation in the background on a portfolio change
- Improved the deduplication of the portfolio snapshot calculation jobs by considering the filters
- Refactored the deprecated animation providers (`provideAnimations()` and `provideNoopAnimations()`)
- Improved the language localization for German (`de`)
- Improved the language localization for Polish (`pl`)

##### Fixed

- Fixed an issue with the localization in the *FIRE* page
- Improved the spacing in the testimonial section on the landing page

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.33.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/324


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.176.0...v1.177.0
