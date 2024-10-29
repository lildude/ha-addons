## TeslaMate Release Notes

### [`v1.31.1`](https://redirect.github.com/teslamate-org/teslamate/releases/tag/v1.31.1)

[Compare Source](https://redirect.github.com/teslamate-org/teslamate/compare/v1.31.0...v1.31.1)

This release primarily prevents beam.smp from overloading the CPU on ARM hosts. It also includes a number of other bug fixes and performance improvements. Enjoy it.
Please also note: [v1.31.0 Release Notes](https://redirect.github.com/teslamate-org/teslamate/releases/tag/v1.31.0)

##### New features

##### Improvements and bug fixes

-   fix: use elixir-1.17.3-otp-26 to avoid beam.smp chewing CPU on arm ([#&#8203;4319](https://redirect.github.com/teslamate-org/teslamate/issues/4319) - [@&#8203;swiffer](https://redirect.github.com/swiffer) and [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))

##### Build, CI, internal

-   ci(fix): update cleanup_caches.yml to use new cache management commands and fix permissions ([d6793ce](https://redirect.github.com/teslamate-org/teslamate/commit/d6793ce5717687b9e984067bf4c208415e15fdac), [b0b694f](https://redirect.github.com/teslamate-org/teslamate/commit/b0b694fc8c3c45036aafda45200f3b0d068a2f50), [16bb503](https://redirect.github.com/teslamate-org/teslamate/commit/16bb5032c7d81cb86e76cc19662e3332456291a0) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   ci: Add workflow to manually cleanup largest 100 caches ([dad7e3d](https://redirect.github.com/teslamate-org/teslamate/commit/dad7e3dea0ae1d799398bf1b31a0d598eff784bf), [523419d](https://redirect.github.com/teslamate-org/teslamate/commit/523419d35a610c7b06bbf7e9c2edd105e7d089aa) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))

##### Dashboards

-   perf: add ideal_battery_range_km as query condition ([#&#8203;4305](https://redirect.github.com/teslamate-org/teslamate/issues/4305) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   fix: re-add missing changes from pr 4124 ([#&#8203;4310](https://redirect.github.com/teslamate-org/teslamate/issues/4310) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   feat: add max speed & speed histogram to drive stats ([#&#8203;4253](https://redirect.github.com/teslamate-org/teslamate/issues/4253) - [@&#8203;js94x](https://redirect.github.com/js94x))
-   fix: remove convert_km from kwh calculations in timeline dashboard ([#&#8203;4318](https://redirect.github.com/teslamate-org/teslamate/issues/4318) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   fix: ensure dutch-tax dashboard is not repeating multiple times per car (row and table) ([#&#8203;4317](https://redirect.github.com/teslamate-org/teslamate/issues/4317) - [@&#8203;swiffer](https://redirect.github.com/swiffer))

##### Translations

-   Update default.po for thai ([#&#8203;4312](https://redirect.github.com/teslamate-org/teslamate/issues/4312) - [@&#8203;tomzt](https://redirect.github.com/tomzt))
-   Spanish translation of missing items ([#&#8203;4320](https://redirect.github.com/teslamate-org/teslamate/issues/4320) -[@&#8203;ferminmg](https://redirect.github.com/ferminmg))

##### Documentation

-   docs: fix ghcr image path in contributing guide ([#&#8203;4309](https://redirect.github.com/teslamate-org/teslamate/issues/4309) - [@&#8203;swiffer](https://redirect.github.com/swiffer))

[complete changelog](https://redirect.github.com/teslamate-org/teslamate/compare/v1.31.0...v1.31.1)

---

## Add-on Release Notes




## What's Changed
* Update TeslaMate to v1.31.1 by @renovate in https://github.com/lildude/ha-addon-teslamate/pull/54


**Full Changelog**: https://github.com/lildude/ha-addon-teslamate/compare/v1.2.0...v1.3.0
