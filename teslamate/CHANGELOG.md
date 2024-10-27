## TeslaMate Release Notes

### [`v1.31.0`](https://redirect.github.com/teslamate-org/teslamate/releases/tag/v1.31.0)

[Compare Source](https://redirect.github.com/teslamate-org/teslamate/compare/v1.30.1...v1.31.0)

As always, lots of improvements. The focus has been on performance improvements, especially on slow HW like Raspberry Pi 3B+. We achieved 240x speed improvements in several dashboards :rocket: And we welcomed [@&#8203;swiffer](https://redirect.github.com/swiffer) to the TeslaMate-Org team :wave: And much, much more. Enjoy it.

**Regarding PostgreSQL 17:** TeslaMate uses PostgreSQL as database, this is an external dependency and needs to be updated by yourself. Although TeslaMate currently runs fine with PostgreSQL 12+ we strongly recommend upgrading to the latest supported version. We recommend that you do this as follows:

-   [Backup your data](https://docs.teslamate.org/docs/maintenance/backup_restore#backup)
-   [Upgrade TeslaMate to this version](https://docs.teslamate.org/docs/upgrading)
-   [Backup your data after the upgrade](https://docs.teslamate.org/docs/maintenance/backup_restore#backup)
-   [Upgrade PostgreSQL to postgres:17](https://docs.teslamate.org/docs/maintenance/upgrading_postgres) (Yes, you will have to erase your data, which is why you need your backup in the first place.)

**Additional info:** In some very rare cases with very old installations of TeslaMate (from 2019) we have observed performance issues due to missing indexes. These should normally be added with our automatic migrations. If you think your installation may be missing some indexes, see [#&#8203;4201](https://redirect.github.com/teslamate-org/teslamate/issues/4201) for the corrective SQL command.

##### New features

##### Improvements and bug fixes

-   fix: 401 on direct Fleet API calls ([#&#8203;4095](https://redirect.github.com/teslamate-org/teslamate/issues/4095) - [@&#8203;jlestel](https://redirect.github.com/jlestel))
-   feat: add support for PostgreSQL 17 ([#&#8203;4231](https://redirect.github.com/teslamate-org/teslamate/issues/4231) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   fix: add nix module option to specify postgres package ([#&#8203;4227](https://redirect.github.com/teslamate-org/teslamate/issues/4227) - [@&#8203;brianmay](https://redirect.github.com/brianmay))
-   perf: limit positions to set elevation for to last 10 days ([#&#8203;4228](https://redirect.github.com/teslamate-org/teslamate/issues/4228) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   feat: add treefmt-nix to nix flake ([#&#8203;4219](https://redirect.github.com/teslamate-org/teslamate/issues/4219) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   feat: use Grafana 11.0.6-security-01 ([#&#8203;4279](https://redirect.github.com/teslamate-org/teslamate/issues/4279) - [@&#8203;swiffer](https://redirect.github.com/swiffer))

##### Build, CI, internal

-   ci: pin GitHub action dependencies to protect against supply chain attacks ([#&#8203;4076](https://redirect.github.com/teslamate-org/teslamate/issues/4076) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   chore: correct comment for pinned Docker login-action to version 3.2.0 ([#&#8203;4120](https://redirect.github.com/teslamate-org/teslamate/issues/4120) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   build(deps): bump erlef/setup-beam from 1.18.0 to 1.18.1 ([#&#8203;4116](https://redirect.github.com/teslamate-org/teslamate/issues/4116))
-   build(deps): bump docker/login-action from 3.2.0 to 3.3.0 ([#&#8203;4115](https://redirect.github.com/teslamate-org/teslamate/issues/4115))
-   chore: update PostgreSQL to version 16 in flake.nix ([#&#8203;4135](https://redirect.github.com/teslamate-org/teslamate/issues/4135)- [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   build(deps): bump webpack from 5.92.1 to 5.94.0 in /website ([#&#8203;4171](https://redirect.github.com/teslamate-org/teslamate/issues/4171))
-   build(deps): bump micromatch from 4.0.5 to 4.0.8 in /website ([#&#8203;4174](https://redirect.github.com/teslamate-org/teslamate/issues/4174))
-   chore: Update tzdata to version 1.1.2 and mimerl to version 1.3.0 ([#&#8203;4205](https://redirect.github.com/teslamate-org/teslamate/issues/4205) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   build(deps): bump send and express in /website ([#&#8203;4203](https://redirect.github.com/teslamate-org/teslamate/issues/4203))
-   ci: enable dependabot for mix and npm ([#&#8203;4207](https://redirect.github.com/teslamate-org/teslamate/issues/4207) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   build(deps): bump [@&#8203;docusaurus/preset-classic](https://redirect.github.com/docusaurus/preset-classic) from 3.4.0 to 3.5.2 in /website ([#&#8203;4210](https://redirect.github.com/teslamate-org/teslamate/issues/4210))
-   build(deps): bump phoenix_ecto from 4.4.3 to 4.6.2 ([#&#8203;4213](https://redirect.github.com/teslamate-org/teslamate/issues/4213))
-   build(deps): bump jason from 1.4.1 to 1.4.4 ([#&#8203;4216](https://redirect.github.com/teslamate-org/teslamate/issues/4216))
-   build(deps): bump classnames from 2.3.2 to 2.5.1 in /website ([#&#8203;4211](https://redirect.github.com/teslamate-org/teslamate/issues/4211))
-   ci: add treefmt as code formatting multiplexer ([#&#8203;4219](https://redirect.github.com/teslamate-org/teslamate/issues/4219) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   ci(refactor): use composite action to avoid duplication in elixir workflow ([#&#8203;4219](https://redirect.github.com/teslamate-org/teslamate/issues/4219) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   ci: prevent workflow runs for certain conditions and allow scheduled runs ([#&#8203;4219](https://redirect.github.com/teslamate-org/teslamate/issues/4219) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   ci(refactor): use reusable workflow to check paths ([#&#8203;4219](https://redirect.github.com/teslamate-org/teslamate/issues/4219) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   ci(refactor): use reusable workflows for streamlined DevOps pipeline ([#&#8203;4219](https://redirect.github.com/teslamate-org/teslamate/issues/4219) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   ci(refactor): allow ghcr_build parallel to elixir test ([#&#8203;4219](https://redirect.github.com/teslamate-org/teslamate/issues/4219) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   ci: ensure proper linting via treefmt ([#&#8203;4219](https://redirect.github.com/teslamate-org/teslamate/issues/4219) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   doc: update CI badge URL for devops workflow ([#&#8203;4219](https://redirect.github.com/teslamate-org/teslamate/issues/4219) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   ci(fix): handle empty path filter output ([#&#8203;4219](https://redirect.github.com/teslamate-org/teslamate/issues/4219) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   fix: avoid the need for impure for devenv ([#&#8203;4245](https://redirect.github.com/teslamate-org/teslamate/issues/4245) - [@&#8203;brianmay](https://redirect.github.com/brianmay))
-   ci(fix): run ghcr build workflow only for specific conditions ([#&#8203;4219](https://redirect.github.com/teslamate-org/teslamate/issues/4219) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   ci: remove branch restriction for check_paths workflow to increase sec ([#&#8203;4219](https://redirect.github.com/teslamate-org/teslamate/issues/4219) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   build(deps): bump actions/checkout from 4.1.7 to 4.2.1 ([#&#8203;4262](https://redirect.github.com/teslamate-org/teslamate/issues/4262))
-   ci(fix): only run ghcr build in DevOps workflow on own repo ([022b173](https://redirect.github.com/teslamate-org/teslamate/commit/022b173430221d385479f4ec9d91d8ccffbfe7b9) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   ci: pin ubuntu-24.04 as runner OS ([40dab3e](https://redirect.github.com/teslamate-org/teslamate/commit/40dab3e2a978b8a867f1159626d4c157ccab6c56) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   ci: cleanup caches when pr is closed ([75cfc7c](https://redirect.github.com/teslamate-org/teslamate/commit/75cfc7cdd4b8f83f247211dc7fc5c5cd433bf746) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   ci(fix): run ghcr build in DevOps workflow for forks ([688147e](https://redirect.github.com/teslamate-org/teslamate/commit/688147e2cf3fb5b55e702185a97a4a4ebb14d7ca) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   ci(fix): correct syntax in ghcr_build workflow for workflow_call ([9e6a275](https://redirect.github.com/teslamate-org/teslamate/commit/9e6a2758d5ff21604976184ad69befc1c546e600) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   ci(fix): run ghcr build as separate workflow to fix permission issues with forks ([0410593](https://redirect.github.com/teslamate-org/teslamate/commit/0410593850cde00e8f201a9b7d6009f0581ed43c) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   build(deps-dev): bump credo from 1.7.1 to 1.7.8 ([#&#8203;4238](https://redirect.github.com/teslamate-org/teslamate/issues/4238))
-   build(deps): bump crate-ci/typos from 1.22.9 to 1.26.0 ([#&#8203;4261](https://redirect.github.com/teslamate-org/teslamate/issues/4261))
-   refactor: Cleanup nix code ([#&#8203;4265](https://redirect.github.com/teslamate-org/teslamate/issues/4265) - [@&#8203;scottbot95](https://redirect.github.com/scottbot95))
-   build(deps): bump elixir from 1.16.2-otp-26 to 1.17.2-otp-27 ([#&#8203;4296](https://redirect.github.com/teslamate-org/teslamate/issues/4296) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   build(deps): bump http-proxy-middleware from 2.0.6 to 2.0.7 in /website ([#&#8203;4303](https://redirect.github.com/teslamate-org/teslamate/issues/4303))
-   feat: update to Phoenix HTML 4.1, bump dependencies ([#&#8203;4277](https://redirect.github.com/teslamate-org/teslamate/issues/4277) - sdwalker and [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))

##### Dashboards

-   Improve Battery Health dashboard estimations on rated range ([#&#8203;4074](https://redirect.github.com/teslamate-org/teslamate/issues/4074) - [@&#8203;jheredianet](https://redirect.github.com/jheredianet))
-   Update charges.json: range added per hour ([#&#8203;4089](https://redirect.github.com/teslamate-org/teslamate/issues/4089) - [@&#8203;DrMichael](https://redirect.github.com/DrMichael))
-   small visual distinguish between AC & DC charging in charges dashboard and unification of the DC coloring in all dashboards ([#&#8203;4124](https://redirect.github.com/teslamate-org/teslamate/issues/4124) - [@&#8203;stauffenberg2020](https://redirect.github.com/stauffenberg2020))
-   Improve drive stats ([#&#8203;4148](https://redirect.github.com/teslamate-org/teslamate/issues/4148) - [@&#8203;jheredianet](https://redirect.github.com/jheredianet))
-   Improve drives dashboard ([#&#8203;4146](https://redirect.github.com/teslamate-org/teslamate/issues/4146) - [@&#8203;jheredianet](https://redirect.github.com/jheredianet))
-   Odometer in charges ([#&#8203;4144](https://redirect.github.com/teslamate-org/teslamate/issues/4144) - [@&#8203;jheredianet](https://redirect.github.com/jheredianet))
-   Update charging-stats for handling suc cost mixed with AC charge on TWC ([#&#8203;4137](https://redirect.github.com/teslamate-org/teslamate/issues/4137) - [@&#8203;cyberden](https://redirect.github.com/cyberden))
-   Fix the issue of failing to restore efficiency dashboard ([#&#8203;4153](https://redirect.github.com/teslamate-org/teslamate/issues/4153) - [@&#8203;ghostiee](https://redirect.github.com/ghostiee))
-   Improve rounding to month / weeks / days in Updates "Since Previous Update" column ([#&#8203;4164](https://redirect.github.com/teslamate-org/teslamate/issues/4164) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   feat: Improve cost filter on Charges dashboard to show charges with negative cost as well ([#&#8203;4179](https://redirect.github.com/teslamate-org/teslamate/issues/4179) - [@&#8203;jheredianet](https://redirect.github.com/jheredianet))
-   feat: display vehicle VIN as a fallback for vehicle name on grafana dashboards ([#&#8203;4198](https://redirect.github.com/teslamate-org/teslamate/issues/4198) - [@&#8203;arcastro](https://redirect.github.com/arcastro))
-   feat: Add Moving Average / Percentiles to Charge Level dashboard & bucket data to support longer periods ([#&#8203;4200](https://redirect.github.com/teslamate-org/teslamate/issues/4200) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   increase max battery charge gauge threshold to 101 in case of LFP ([#&#8203;4191](https://redirect.github.com/teslamate-org/teslamate/issues/4191) - [@&#8203;neothematrix](https://redirect.github.com/neothematrix))
-   multiple cars, same name, add VIN next to name ([#&#8203;4230](https://redirect.github.com/teslamate-org/teslamate/issues/4230) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   json_build_object instead of concat in battery-health ([#&#8203;4229](https://redirect.github.com/teslamate-org/teslamate/issues/4229) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   perf: fix skipping streaming data in charging stats ([#&#8203;4252](https://redirect.github.com/teslamate-org/teslamate/issues/4252) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   perf: improvements drive stats ([#&#8203;4258](https://redirect.github.com/teslamate-org/teslamate/issues/4258) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   fix: for drives not showing if duration < 1 minute ([#&#8203;4284](https://redirect.github.com/teslamate-org/teslamate/issues/4284) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   feat: add max speed in drives dashboard ([#&#8203;4284](https://redirect.github.com/teslamate-org/teslamate/issues/4284) / [#&#8203;4267](https://redirect.github.com/teslamate-org/teslamate/issues/4267) - [@&#8203;js94x](https://redirect.github.com/js94x))
-   perf: exclude streaming data when getting battery level ([#&#8203;4286](https://redirect.github.com/teslamate-org/teslamate/issues/4286) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   perf: exclude streaming data in visited dashboard ([#&#8203;4287](https://redirect.github.com/teslamate-org/teslamate/issues/4287) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   fix: weighted average calculation for consumption in drives dashboard ([#&#8203;4289](https://redirect.github.com/teslamate-org/teslamate/issues/4289) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   perf: improvement in charge level ([#&#8203;4301](https://redirect.github.com/teslamate-org/teslamate/issues/4301) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   perf: improvement and deprecated syntax removal ([#&#8203;4304](https://redirect.github.com/teslamate-org/teslamate/issues/4304) - [@&#8203;swiffer](https://redirect.github.com/swiffer))

##### Translations

-   Adding missing Swedish translation ([#&#8203;4097](https://redirect.github.com/teslamate-org/teslamate/issues/4097) - [@&#8203;tobiasehlert](https://redirect.github.com/tobiasehlert))

##### Documentation

-   doc: Add initial author and list of contributors to README.md ([#&#8203;4084](https://redirect.github.com/teslamate-org/teslamate/issues/4084) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   doc: add steps to the guide regarding how to switch to Fleet API ([#&#8203;4103](https://redirect.github.com/teslamate-org/teslamate/issues/4103) - [@&#8203;yangiak](https://redirect.github.com/yangiak))
-   doc: align TPMS Pressure naming in sensor config to match UI config for home assistant ([#&#8203;4104](https://redirect.github.com/teslamate-org/teslamate/issues/4104) - [@&#8203;helmo](https://redirect.github.com/helmo))
-   doc: Update screenshots and rearrange links ([#&#8203;4151](https://redirect.github.com/teslamate-org/teslamate/issues/4151) - [@&#8203;jheredianet](https://redirect.github.com/jheredianet))
-   doc: fix markdownlint warnings in fleet API documentation ([#&#8203;4173](https://redirect.github.com/teslamate-org/teslamate/issues/4173) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   doc: clarify using fleet API has lots of drawbacks ([#&#8203;4173](https://redirect.github.com/teslamate-org/teslamate/issues/4173) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   docs: fix Home Assistant MQTT sensor JSON templates warnings ([#&#8203;4257](https://redirect.github.com/teslamate-org/teslamate/issues/4257) - [@&#8203;longzheng](https://redirect.github.com/longzheng))
-   docs: add recommended RAM size ([#&#8203;4278](https://redirect.github.com/teslamate-org/teslamate/issues/4278) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   docs: add best practice section to contribution guide ([#&#8203;4288](https://redirect.github.com/teslamate-org/teslamate/issues/4288) - [@&#8203;swiffer](https://redirect.github.com/swiffer))

[complete changelog](https://redirect.github.com/teslamate-org/teslamate/compare/v1.30.1...v1.31.0)

---

## Add-on Release Notes




## What's Changed
* Fix release note gathering by @lildude in https://github.com/lildude/ha-addon-teslamate/pull/44
* Update actions/checkout action to v4.2.0 by @renovate in https://github.com/lildude/ha-addon-teslamate/pull/46
* Update actions/checkout action to v4.2.1 by @renovate in https://github.com/lildude/ha-addon-teslamate/pull/47
* Consolidate versions and renovate config to a single file by @lildude in https://github.com/lildude/ha-addon-teslamate/pull/48
* Update actions/checkout action to v4.2.2 by @renovate in https://github.com/lildude/ha-addon-teslamate/pull/49
* Update TeslaMate to v1.31.0 by @renovate in https://github.com/lildude/ha-addon-teslamate/pull/51
* Switch to new S6 service configuration by @lildude in https://github.com/lildude/ha-addon-teslamate/pull/40


**Full Changelog**: https://github.com/lildude/ha-addon-teslamate/compare/v1.1.5...v1.2.0
