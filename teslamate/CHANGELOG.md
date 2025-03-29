## TeslaMate Release Notes

### [`v1.33.0`](https://redirect.github.com/teslamate-org/teslamate/releases/tag/v1.33.0)

[Compare Source](https://redirect.github.com/teslamate-org/teslamate/compare/v1.32.0...v1.33.0)

As always, there are many improvements.

We now use Grafana 11.6.0 which was release the last days, improved the logging and state transitions, added a new dashboard for database information and improved other dashboards. We also added a new section to the documentation about the Entity Relationship Model (ERM) of TeslaMate. This is a great help for developers who want to understand the data model of TeslaMate and how to extend it.

Enjoy it.

##### New features

##### Improvements and bug fixes

-   fix(nix): wait for mosquitto to start before starting teslamate ([#&#8203;4419](https://redirect.github.com/teslamate-org/teslamate/issues/4419) - [@&#8203;brianmay](https://redirect.github.com/brianmay))
-   feat: use Grafana 11.4.0 ([#&#8203;4299](https://redirect.github.com/teslamate-org/teslamate/issues/4299) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   feat: improve logging messages ([#&#8203;4467](https://redirect.github.com/teslamate-org/teslamate/issues/4467) - [@&#8203;micves](https://redirect.github.com/micves) and [@&#8203;brianmay](https://redirect.github.com/brianmay))
-   feat: optimize state transitions ([#&#8203;4473](https://redirect.github.com/teslamate-org/teslamate/issues/4473) - [@&#8203;micves](https://redirect.github.com/micves) and [@&#8203;brianmay](https://redirect.github.com/brianmay))
    -   don't try to sleep if power > 0
    -   cancel an ongoing suspended state/trying to sleep and go back to online
    -   add conditions to enter charging
-   feat: support accessing PostgreSQL on unix domain sockets ([#&#8203;4456](https://redirect.github.com/teslamate-org/teslamate/issues/4456) - [@&#8203;j-baker](https://redirect.github.com/j-baker))
-   fix(nix): temporarily disable browser locale in date formats for nix deployment as well ([#&#8203;4480](https://redirect.github.com/teslamate-org/teslamate/issues/4480) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   feat: Grafana 11.5.0 ([#&#8203;4509](https://redirect.github.com/teslamate-org/teslamate/issues/4509) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   feat: Grafana 11.5.2 ([#&#8203;4551](https://redirect.github.com/teslamate-org/teslamate/issues/4551) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   fix(nix): update mix dependency hash in nix builds. ([#&#8203;4577](https://redirect.github.com/teslamate-org/teslamate/issues/4577) - [@&#8203;weiren2](https://redirect.github.com/weiren2))
-   feat: Grafana 11.6.0 ([#&#8203;4570](https://redirect.github.com/teslamate-org/teslamate/issues/4570) - [@&#8203;swiffer](https://redirect.github.com/swiffer))

##### Build, CI, internal

-   build(deps): bump castore from 1.0.9 to 1.0.10 ([#&#8203;4414](https://redirect.github.com/teslamate-org/teslamate/issues/4414))
-   build(deps): bump [@&#8203;docusaurus/preset-classic](https://redirect.github.com/docusaurus/preset-classic) from 3.5.2 to 3.6.3 in /website ([#&#8203;4412](https://redirect.github.com/teslamate-org/teslamate/issues/4412))
-   build(deps): bump path-to-regexp from 1.8.0 to 1.9.0 in /website ([#&#8203;4424](https://redirect.github.com/teslamate-org/teslamate/issues/4424))
-   build(deps): bump crate-ci/typos from 1.27.0 to 1.28.1 ([#&#8203;4411](https://redirect.github.com/teslamate-org/teslamate/issues/4411))
-   build(deps): bump tesla from 1.13.0 to 1.13.2 ([#&#8203;4416](https://redirect.github.com/teslamate-org/teslamate/issues/4416))
-   build(deps): bump postgrex from 0.19.1 to 0.19.3 ([#&#8203;4415](https://redirect.github.com/teslamate-org/teslamate/issues/4415))
-   build(nix): switch to nixos-24.11 ([#&#8203;4420](https://redirect.github.com/teslamate-org/teslamate/issues/4420) - [@&#8203;brianmay](https://redirect.github.com/brianmay))
-   build(deps): update flake.lock ([#&#8203;4427](https://redirect.github.com/teslamate-org/teslamate/issues/4427))
-   fix: update mix deps hash to fix build error on recent NixOS 24.11 update ([#&#8203;4428](https://redirect.github.com/teslamate-org/teslamate/issues/4428))
-   build(deps): bump path-to-regexp and express in /website ([#&#8203;4433](https://redirect.github.com/teslamate-org/teslamate/issues/4433))
-   build(deps): update flake.lock ([#&#8203;4440](https://redirect.github.com/teslamate-org/teslamate/issues/4440))
-   build(deps): bump actions/cache from 4.1.2 to 4.2.0 ([#&#8203;4465](https://redirect.github.com/teslamate-org/teslamate/issues/4465))
-   build(deps): bump phoenix from 1.7.14 to 1.7.18 ([#&#8203;4462](https://redirect.github.com/teslamate-org/teslamate/issues/4462))
-   build(deps-dev): bump dialyxir from 1.4.4 to 1.4.5 ([#&#8203;4460](https://redirect.github.com/teslamate-org/teslamate/issues/4460))
-   build(deps): bump ex_cldr from 2.40.1 to 2.40.2 ([#&#8203;4461](https://redirect.github.com/teslamate-org/teslamate/issues/4461))
-   build(deps): bump crate-ci/typos from 1.28.1 to 1.29.0 ([#&#8203;4464](https://redirect.github.com/teslamate-org/teslamate/issues/4464))
-   ci: update actions/cache to v4.2.0 ([79107d5](https://redirect.github.com/teslamate-org/teslamate/commit/79107d53b7712934587bbe40c503e63d5dd9f122) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   build(deps): bump DeterminateSystems/magic-nix-cache-action from 8 to 9 ([#&#8203;4515](https://redirect.github.com/teslamate-org/teslamate/issues/4515))
-   build(deps): bump actions/stale from 9.0.0 to 9.1.0 ([#&#8203;4516](https://redirect.github.com/teslamate-org/teslamate/issues/4516))
-   build(deps): bump crate-ci/typos from 1.29.0 to 1.29.5 ([#&#8203;4514](https://redirect.github.com/teslamate-org/teslamate/issues/4514))
-   build(deps-dev): bump excoveralls from 0.18.3 to 0.18.5 ([#&#8203;4524](https://redirect.github.com/teslamate-org/teslamate/issues/4524))
-   build(deps-dev): bump credo from 1.7.8 to 1.7.11 ([#&#8203;4523](https://redirect.github.com/teslamate-org/teslamate/issues/4523))
-   build(deps): bump [@&#8203;docusaurus/preset-classic](https://redirect.github.com/docusaurus/preset-classic) from 3.6.3 to 3.7.0 in /website ([#&#8203;4518](https://redirect.github.com/teslamate-org/teslamate/issues/4518))
-   build(deps): bump serialize-javascript from 6.0.1 to 6.0.2 in /website ([#&#8203;4548](https://redirect.github.com/teslamate-org/teslamate/issues/4548))
-   build(deps): update flake.lock ([#&#8203;4455](https://redirect.github.com/teslamate-org/teslamate/issues/4455))
-   style(markdownlint): allow 'details', 'summary', and 'TabItem' elements ([d5b1a55](https://redirect.github.com/teslamate-org/teslamate/commit/d5b1a55007eefedd5d852ecd50d67b8c4d36faa5) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   style(environment_variables): remove multiple whitespaces ([603ff82](https://redirect.github.com/teslamate-org/teslamate/commit/603ff824b052b4465fcce9fe77e5e40ad586c07a) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   style(docs): fix line length fenced-code-style, no bare url links, multiple whitespaces, alt text, header style ([1972584](https://redirect.github.com/teslamate-org/teslamate/commit/1972584d8f9d11c2f640de046a8e9fd47b43c4fb) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   build(deps): bump actions/cache from 4.2.0 to 4.2.2 ([#&#8203;4564](https://redirect.github.com/teslamate-org/teslamate/issues/4564))
-   build(deps): bump crate-ci/typos from 1.29.5 to 1.30.0 ([#&#8203;4563](https://redirect.github.com/teslamate-org/teslamate/issues/4563))
-   build(deps): bump castore from 1.0.11 to 1.0.12 ([#&#8203;4565](https://redirect.github.com/teslamate-org/teslamate/issues/4565))
-   build(deps): bump plug_cowboy from 2.7.2 to 2.7.3 ([#&#8203;4566](https://redirect.github.com/teslamate-org/teslamate/issues/4566))
-   build(deps): bump prismjs from 1.29.0 to 1.30.0 in /website ([#&#8203;4582](https://redirect.github.com/teslamate-org/teslamate/issues/4582))
-   build(deps): bump [@&#8203;babel/runtime](https://redirect.github.com/babel/runtime) from 7.26.0 to 7.26.10 in /website ([#&#8203;4589](https://redirect.github.com/teslamate-org/teslamate/issues/4589))
-   build(deps): bump [@&#8203;babel/helpers](https://redirect.github.com/babel/helpers) from 7.26.7 to 7.26.10 in /website ([#&#8203;4588](https://redirect.github.com/teslamate-org/teslamate/issues/4588))
-   build(deps): bump [@&#8203;babel/runtime-corejs3](https://redirect.github.com/babel/runtime-corejs3) in /website ([#&#8203;4587](https://redirect.github.com/teslamate-org/teslamate/issues/4587))
-   build(deps): update flake.lock ([#&#8203;4562](https://redirect.github.com/teslamate-org/teslamate/issues/4562))

##### Dashboards

-   fix: for battery health dashboard erroring out if no charge data has been collected so far ([#&#8203;4448](https://redirect.github.com/teslamate-org/teslamate/issues/4448) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   fix: url for releases in home dashboard ([#&#8203;4452](https://redirect.github.com/teslamate-org/teslamate/issues/4452) -[@&#8203;FLX3009](https://redirect.github.com/FLX3009))
-   feat: add 0 as lower bound for gauge to ensure proper scaling ([#&#8203;4498](https://redirect.github.com/teslamate-org/teslamate/issues/4498) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   feat(dashboards): improve elevation scale in drive stats ([#&#8203;4546](https://redirect.github.com/teslamate-org/teslamate/issues/4546) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   feat: add Database Information Dashboard ([#&#8203;4578](https://redirect.github.com/teslamate-org/teslamate/issues/4578) - [@&#8203;jheredianet](https://redirect.github.com/jheredianet))

##### Translations

-   feat: Translate remaining Spanish sentences ([#&#8203;4529](https://redirect.github.com/teslamate-org/teslamate/issues/4529) - [@&#8203;jheredianet](https://redirect.github.com/jheredianet))

##### Documentation

-   doc: bump elixir based on availability ([#&#8203;4431](https://redirect.github.com/teslamate-org/teslamate/issues/4431) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   doc: align node req with what is used in CI ([#&#8203;4430](https://redirect.github.com/teslamate-org/teslamate/issues/4430) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   doc: added missing topic "charging_state" in mqtt doc ([#&#8203;4466](https://redirect.github.com/teslamate-org/teslamate/issues/4466) - [@&#8203;Beme99](https://redirect.github.com/Beme99))
-   docs: Grafana 11.4 for manual install on FreeBSD ([#&#8203;4474](https://redirect.github.com/teslamate-org/teslamate/issues/4474) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   doc: Fixing typo for sensor psi calculation ([#&#8203;4470](https://redirect.github.com/teslamate-org/teslamate/issues/4470) - [@&#8203;Phazz](https://redirect.github.com/Phazz))
-   doc: Simplify Home Assistant sensors, add device_class to allow changing measurement units ([#&#8203;4472](https://redirect.github.com/teslamate-org/teslamate/issues/4472) - [@&#8203;longzheng](https://redirect.github.com/longzheng))
-   docs: add reindexing instructions for database maintenance to improve performance in case of index bloat due to frequent updates or deletions ([#&#8203;4558](https://redirect.github.com/teslamate-org/teslamate/issues/4558) and [#&#8203;4574](https://redirect.github.com/teslamate-org/teslamate/issues/4574) - [@&#8203;jheredianet](https://redirect.github.com/jheredianet))
-   docs: Update projects using TeslaMate ([#&#8203;4573](https://redirect.github.com/teslamate-org/teslamate/issues/4573) - [@&#8203;jheredianet](https://redirect.github.com/jheredianet))
-   docs: fix and rearrange screenshot links (alphabetical) ([#&#8203;4580](https://redirect.github.com/teslamate-org/teslamate/issues/4580) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   docs: enhance TeslaFi import documentation with updated Python script for bulk data export ([#&#8203;4575](https://redirect.github.com/teslamate-org/teslamate/issues/4575) - [@&#8203;TheLinuxGuy](https://redirect.github.com/TheLinuxGuy) and [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   docs: add Entity Relationship Model section to development documentation ([#&#8203;4586](https://redirect.github.com/teslamate-org/teslamate/issues/4586) - [@&#8203;DrMichael](https://redirect.github.com/DrMichael) and [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))

[complete changelog](https://redirect.github.com/teslamate-org/teslamate/compare/v1.32.0...v1.33.0)

---

## Add-on Release Notes




## What's Changed
* Update home-assistant/builder action to v2025.03.0 by @renovate in https://github.com/lildude/ha-addon-teslamate/pull/81
* Document migrating to a different PostgresSQL server and restoring teslamate.bak backups by @lildude in https://github.com/lildude/ha-addon-teslamate/pull/82
* Update TeslaMate to v1.33.0 by @renovate in https://github.com/lildude/ha-addon-teslamate/pull/83


**Full Changelog**: https://github.com/lildude/ha-addon-teslamate/compare/v1.4.4...v1.5.0
