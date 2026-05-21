## Ghostfolio Release Notes

### [`v3.4.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#340---2026-05-21)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.3.0...3.4.0)

##### Added

- Added the icon column to the benchmark component
- Added support for the `DIRECT_URL` environment variable to enable direct database connections

##### Changed

- Improved the pagination in the activities table of the account detail dialog
- Improved the pagination in the activities table of the holding detail dialog
- Randomized the placeholder in the assistant
- Filtered out sectors with zero weight for ETF and mutual fund assets in the *Yahoo Finance* data enhancer
- Enabled the *Bull Dashboard* in the admin control panel without requiring an environment variable (experimental)
- Improved the verification of the *Stripe* checkout session when creating a subscription
- Relaxed the URL validation in the asset profile DTOs to accept both `HTTP` and `HTTPS` protocols
- Relaxed the URL validation in the platform DTOs to accept both `HTTP` and `HTTPS` protocols
- Extracted the page tabs to a reusable component
- Improved the language localization for German (`de`)
- Improved the language localization for Spanish (`es`)
- Upgraded `bull-board` from version `7.0.0` to `7.1.5`
- Upgraded `Nx` from version `22.7.1` to `22.7.2`

##### Fixed

- Resolved an issue with the cash balance calculation of an account for `SELL` activities to ensure fees are correctly subtracted
- Resolved an exception in the portfolio details endpoint when an asset profile is unmatched

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.4.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/284


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.146.0...v1.147.0
