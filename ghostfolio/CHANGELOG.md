## Ghostfolio Release Notes

### [`v3.7.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#370---2026-06-02)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.6.0...3.7.0)

##### Added

- Added support for routing selected requests through the *OpenRouter* `web_fetch` tool in the `FetchService`

##### Changed

- Extended the countries mapping in the data enhancer for asset profile data via *Trackinsight*
- Removed the deprecated attributes (`assetClass`, `assetClassLabel`, `assetSubClass`, `assetSubClassLabel`, `countries`, `currency`, `dataSource`, `holdings`, `name`, `sectors`, `symbol` and `url`) from the holdings of the portfolio details endpoint response
- Upgraded `Nx` from version `22.7.2` to `22.7.5`

##### Fixed

- Resolved an issue in the impersonation mode where the values did not match the owner’s currency
- Fixed the environment variable expansion in the `.env` file when debugging via *Visual Studio Code*

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.7.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/288


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.149.0...v1.150.0
