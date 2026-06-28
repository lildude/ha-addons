## Ghostfolio Release Notes

### [`v3.18.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3180---2026-06-28)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.17.0...3.18.0)

##### Added

- Added support for filtering in the public access for portfolio sharing (experimental)
- Set up the language localization for Japanese (`ja`)

##### Changed

- Improved the alias display in the access table to share the portfolio
- Improved the language localization for German (`de`)

##### Fixed

- Fixed a phantom `UNKNOWN` slice in the portfolio proportion chart component caused by floating-point rounding
- Fixed the base currency for the total value calculation in the public access for portfolio sharing
- Fixed an issue in the public access for portfolio sharing that exposed absolute values of the top holdings of ETFs
- Fixed the time zone handling in the `api` test suite for deterministic execution in `UTC`

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.18.0 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/304


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.160.0...v1.161.0
