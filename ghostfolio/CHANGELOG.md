## Ghostfolio Release Notes

### [`v3.19.1`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3191---2026-07-03)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.19.0...3.19.1)

##### Added

- Added support for routing outgoing requests through a per-domain proxy via the `PROXY_ROUTES` setting in the `FetchService`
- Added `@prisma/config` as a development dependency used by the *Prisma Configuration File*

##### Changed

- Harmonized the date picker styling across various components
- Updated the *Privacy Policy*
- Updated the *Terms of Service*
- Improved the parsing of integer query parameters (`skip` and `take`) in the `GET api/v1/activities` endpoint
- Improved the language localization for German (`de`)
- Improved the language localization for Japanese (`ja`)
- Upgraded `@ionic/angular` from version `8.8.5` to `8.8.12`
- Upgraded `nestjs` from version `11.1.21` to `11.1.27`

##### Fixed

- Fixed an issue where values incorrectly rounded to negative zero in the value component
- Fixed the colorization of the change from all time high in the benchmark component when values round to zero
- Fixed the market condition of the benchmarks when values round to zero
- Fixed the validation of the data source field of an asset profile with market data
- Fixed a recurring issue where single-value fields were incorrectly validated as arrays in various endpoints

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.19.1 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/306


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.162.0...v1.163.0
