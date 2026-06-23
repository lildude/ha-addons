## Ghostfolio Release Notes

### [`v3.14.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3140---2026-06-22)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.13.0...3.14.0)

##### Added

- Exposed the `ENABLE_FEATURE_CRON` environment variable to control scheduled cron job execution
- Exposed the `PROCESSOR_GATHER_STATISTICS_CONCURRENCY` environment variable to control the concurrency of the statistics gathering queue processor

##### Changed

- Consolidated the exchange rates to be gathered with hourly market data
- Improved the language localization for German (`de`)
- Upgraded `@openrouter/ai-sdk-provider` from version `2.9.0` to `2.9.1`
- Upgraded `undici` from version `7.24.4` to `8.5.0`

##### Fixed

- Fixed an issue in the data provider service where asset profiles and historical data could be missing for symbols that exist in multiple data sources by keying the responses by the asset profile identifier
- Resolved an exception in the benchmarks service when the current market price is unavailable

---

## Add-on Release Notes




## What's Changed
* Move away from the legacy build.json build config by @lildude in https://github.com/lildude/ha-addon-ghostfolio/pull/298
* Pin GitHub Actions to the tag's SHA by @lildude in https://github.com/lildude/ha-addon-ghostfolio/pull/299
* Update Ghostfolio to v3.14.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/300


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.156.0...v1.157.0
