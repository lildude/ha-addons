## TeslaMate Release Notes

### [`v2.1.0`](https://redirect.github.com/teslamate-org/teslamate/blob/HEAD/CHANGELOG.md#100---2019-07-25)

[Compare Source](https://redirect.github.com/teslamate-org/teslamate/compare/v2.0.0...v2.1.0)


As always, there are many improvements. We have introduced new database fields to store the total ascent and descent of a drive, which can be used in the drives and efficiency dashboards. This is a valuable addition for users who wish to analyze their driving patterns and performance in hilly areas, and it enhances the efficiency metrics.
The database will be migrated automatically to include these new fields. Depending on your host and the size of your database, this process may take some time. Please be patient and wait for the process to finish (depending on your host, it takes a few seconds to about a minute on a Raspberry Pi 3B+ with a 1 GB database).

We now use the latest Grafana 12.0.1, and you can now open a Google Maps link for the car's current location by clicking on the location marker icon in the webview to quickly navigate to your car's location, without having to open the Tesla app.
Additionally, we have fixed some issues with the consumption for drives with a positive SOC difference, and we have aligned the usage of time-range filters to resolve consumption gross issues in some edge cases.
The charging stats are now even more consistent. We now detect consecutive charges and exclude them from the charge / discharge stats (PV surplus charging: we've got you covered).

Enjoy it.

### New features

- feat(webview): add map marker icon to open Google Maps link with car's current location ([#&#8203;4838](https://redirect.github.com/teslamate-org/teslamate/issues/4838) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- feat: add total ascent & descent to the drive table to use in the drives dashboards ([#&#8203;4798](https://redirect.github.com/teslamate-org/teslamate/issues/4798) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- feat(nix): add idiomatic backup and restore scripts ([#&#8203;4835](https://redirect.github.com/teslamate-org/teslamate/issues/4835) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))

### Improvements and bug fixes

- fix(nix): update cldr hash ([#&#8203;4723](https://redirect.github.com/teslamate-org/teslamate/issues/4723) - [@&#8203;brianmay](https://redirect.github.com/brianmay))
- feat: use Grafana 12.0.0 ([#&#8203;4721](https://redirect.github.com/teslamate-org/teslamate/issues/4721) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- feat: use Grafana 12.0.1 ([#&#8203;4756](https://redirect.github.com/teslamate-org/teslamate/issues/4756) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- feat: preserve the folders when restoring dashboards ([#&#8203;4715](https://redirect.github.com/teslamate-org/teslamate/issues/4715) - [@&#8203;IngmarStein](https://redirect.github.com/IngmarStein))
- feat: use Grafana 12.0.1+security-01 ([#&#8203;4799](https://redirect.github.com/teslamate-org/teslamate/issues/4799) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- feat: use Grafana 12.0.2 ([#&#8203;4805](https://redirect.github.com/teslamate-org/teslamate/issues/4805) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- feat(mqtt): always publish healthy status and disable retain to prevent stale healthy status via mqtt ([#&#8203;4817](https://redirect.github.com/teslamate-org/teslamate/issues/4817) - [@&#8203;allivshits](https://redirect.github.com/allivshits))
- feat: use the k8s-style API introduced in Grafana v12 if using manual dashboard setup ([#&#8203;4764](https://redirect.github.com/teslamate-org/teslamate/issues/4764)- [@&#8203;IngmarStein](https://redirect.github.com/IngmarStein))
- feat(db-check): allow beta / rc PostgreSQL versions for testing ([#&#8203;4795](https://redirect.github.com/teslamate-org/teslamate/issues/4795) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- feat: enhance HTTP limits for managing fleets with over 10 vehicles ([#&#8203;4607](https://redirect.github.com/teslamate-org/teslamate/issues/4607) - [@&#8203;jlestel](https://redirect.github.com/jlestel))

#### Build, CI, internal

- build(deps): bump tzdata from 1.1.2 to 1.1.3 ([#&#8203;4713](https://redirect.github.com/teslamate-org/teslamate/issues/4713))
- build(deps-dev): bump mock from 0.3.8 to 0.3.9 ([#&#8203;4712](https://redirect.github.com/teslamate-org/teslamate/issues/4712))
- build(deps-dev): bump credo from 1.7.11 to 1.7.12 ([#&#8203;4711](https://redirect.github.com/teslamate-org/teslamate/issues/4711))
- build(deps): bump crate-ci/typos from 1.31.1 to 1.31.2 ([#&#8203;4710](https://redirect.github.com/teslamate-org/teslamate/issues/4710))
- fix(nix): update mix dependency hash in nix builds ([08fe0ac](https://github.com/teslamate-org/teslamate/commit/08fe0ac934176484c84fd4329c8d64925b6b0b97) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- feat(nix): use nixos-25.05 ([#&#8203;4716](https://redirect.github.com/teslamate-org/teslamate/issues/4716) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): update flake.lock ([#&#8203;4716](https://redirect.github.com/teslamate-org/teslamate/issues/4716))
- fix(nix): skip duplicate cldr download to fix build on darwin and improve reproducibility ([#&#8203;4763](https://redirect.github.com/teslamate-org/teslamate/issues/4763) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): bump DeterminateSystems/update-flake-lock from 24 to 25 ([#&#8203;4774](https://redirect.github.com/teslamate-org/teslamate/issues/4774))
- build(deps): bump crate-ci/typos from 1.31.2 to 1.32.0 ([#&#8203;4775](https://redirect.github.com/teslamate-org/teslamate/issues/4775))
- build(deps): bump castore from 1.0.12 to 1.0.14 ([#&#8203;4778](https://redirect.github.com/teslamate-org/teslamate/issues/4778))
- build(deps): update flake.lock ([#&#8203;4772](https://redirect.github.com/teslamate-org/teslamate/issues/4772))
- build(deps): bump phoenix_ecto from 4.6.3 to 4.6.4 ([#&#8203;4779](https://redirect.github.com/teslamate-org/teslamate/issues/4779))
- build(deps): bump @docusaurus/preset-classic from 3.7.0 to 3.8.0 in /website ([#&#8203;4776](https://redirect.github.com/teslamate-org/teslamate/issues/4776))
- build(deps): bump @docusaurus/core from 3.7.0 to 3.8.0, @docusaurus/preset-classic from 3.8.0 to 3.8.1, bump dependencies in /website ([#&#8203;4777](https://redirect.github.com/teslamate-org/teslamate/issues/4777) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): bump nixbuild/nix-quick-install-action from 30 to 32 ([#&#8203;4813](https://redirect.github.com/teslamate-org/teslamate/issues/4813))
- build(deps): bump brace-expansion from 1.1.11 to 1.1.12 in /website ([#&#8203;4821](https://redirect.github.com/teslamate-org/teslamate/issues/4821))
- build(deps): bump plug_cowboy from 2.7.3 to 2.7.4 ([#&#8203;4816](https://redirect.github.com/teslamate-org/teslamate/issues/4816))
- build(deps): bump crate-ci/typos from 1.33.1 to 1.34.0 ([#&#8203;4814](https://redirect.github.com/teslamate-org/teslamate/issues/4814))
- build(deps): bump timex from 3.7.11 to 3.7.13 ([#&#8203;4815](https://redirect.github.com/teslamate-org/teslamate/issues/4815))
- build(deps): update flake.lock ([#&#8203;4828](https://redirect.github.com/teslamate-org/teslamate/issues/4828) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(nix): update mix dependency hash in nix builds ([#&#8203;4828](https://redirect.github.com/teslamate-org/teslamate/issues/4828) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- chore(issue-template): enhance bug report template with additional fields and guidance ([#&#8203;4827](https://redirect.github.com/teslamate-org/teslamate/issues/4827) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): bump on-headers from 1.0.2 to 1.1.0 and compression from 1.0.2 to 1.1.0 in /website ([#&#8203;4831](https://redirect.github.com/teslamate-org/teslamate/issues/4831))
- sec(deps): override webpack-dev-server to version 5.2.1 to fix CVE-2025-30360 ([#&#8203;4833](https://redirect.github.com/teslamate-org/teslamate/issues/4833) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- ci(coverage): explicitly set mix-env to test ([322c2a2](https://github.com/teslamate-org/teslamate/commit/322c2a26e61ce68d5b44cb7f0f1a7c1820e0164d) and [e6931ab](https://github.com/teslamate-org/teslamate/commit/e6931aba6809c457cc7224aec934b8e419d2c116) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(mix): add "coveralls.github" to preferred_cli_env to avoid missing task error in CI runs ([1c76994](https://github.com/teslamate-org/teslamate/commit/1c76994b563a4e61514a1cf62c310532775add46) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): update flake.lock ([#&#8203;4834](https://redirect.github.com/teslamate-org/teslamate/issues/4834))
- chore(issue-template): update bug report template to include Unraid as unsupported installation method ([#&#8203;4829](https://redirect.github.com/teslamate-org/teslamate/issues/4829) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))

#### Dashboards

- fix: new image on home dashboard as old got removed from Tesla mediaserver ([#&#8203;4702](https://redirect.github.com/teslamate-org/teslamate/issues/4702) - @JakobLichterfeld, [@&#8203;swiffer](https://redirect.github.com/swiffer))
- feat: update image on home dashboard to juniper and back to dark ([#&#8203;4742](https://redirect.github.com/teslamate-org/teslamate/issues/4742) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- fix: consumption for drives with positive soc diff ([#&#8203;4746](https://redirect.github.com/teslamate-org/teslamate/issues/4746) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- fix: align usage of time-range filters to fix consumption gross issues in some edge cases ([#&#8203;4787](https://redirect.github.com/teslamate-org/teslamate/issues/4787) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- feat(dashboards-Charging-Stats): align query conditions and introduce a min duration filter applied to all panels to ensure consistent charging stats ([#&#8203;4791](https://redirect.github.com/teslamate-org/teslamate/issues/4791) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- feat(dashboards): reliably calculate charging costs per 100 km for shorter periods and align across trip, statistics and charging stats dashboards ([#&#8203;4791](https://redirect.github.com/teslamate-org/teslamate/issues/4791) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- feat(dashboards): detect consecutive charges and exclude from Charge / Discharge Stats ([#&#8203;4791](https://redirect.github.com/teslamate-org/teslamate/issues/4791) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- feat(dashboards): introduce slope-adjusted efficiency metric in drives dashboard ([#&#8203;4798](https://redirect.github.com/teslamate-org/teslamate/issues/4798) - [@&#8203;swiffer](https://redirect.github.com/swiffer))

#### Translations

- i18n: create Catalan default.po ([#&#8203;4727](https://redirect.github.com/teslamate-org/teslamate/issues/4727) and [#&#8203;4728](https://redirect.github.com/teslamate-org/teslamate/issues/4728) - [@&#8203;pellix](https://redirect.github.com/pellix))
- i18n: more descriptive italian localization ([#&#8203;4748](https://redirect.github.com/teslamate-org/teslamate/issues/4748) -[@&#8203;StarkITA](https://redirect.github.com/StarkITA))

#### Documentation

- docs: improvement to the Debian installation instructions ([#&#8203;4734](https://redirect.github.com/teslamate-org/teslamate/issues/4734) - [@&#8203;iustin](https://redirect.github.com/iustin))
- docs: add note on accessory power functionality can prevent car sleep ([#&#8203;4737](https://redirect.github.com/teslamate-org/teslamate/issues/4737) - [@&#8203;darox](https://redirect.github.com/darox))
- docs: clarify pricing for Teslemetry ([#&#8203;4705](https://redirect.github.com/teslamate-org/teslamate/issues/4705) - [@&#8203;Bre77](https://redirect.github.com/Bre77))
- docs: add NixOS installation guide ([#&#8203;4768](https://redirect.github.com/teslamate-org/teslamate/issues/4768) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- doc: add OpenSSF scorecard ([#&#8203;4819](https://redirect.github.com/teslamate-org/teslamate/issues/4819) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- docs: streamline installation guides ([#&#8203;4829](https://redirect.github.com/teslamate-org/teslamate/issues/4829) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- docs: add nix develop to run treefmt to support non nix direnv users ([#&#8203;4829](https://redirect.github.com/teslamate-org/teslamate/issues/4829) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- docs: add Unraid installation and maintenance instructions (no support) ([#&#8203;4758](https://redirect.github.com/teslamate-org/teslamate/issues/4758), [#&#8203;4829](https://redirect.github.com/teslamate-org/teslamate/issues/4829) - @vypergts and [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- docs: clarify the use of secure connection to access TeslaMate ([#&#8203;4829](https://redirect.github.com/teslamate-org/teslamate/issues/4829) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- docs: reorder guides into advanced guides, categories FleetAPI documentation as config ([#&#8203;4829](https://redirect.github.com/teslamate-org/teslamate/issues/4829) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- docs: clarify which installation methods are supported and which are not ([#&#8203;4829](https://redirect.github.com/teslamate-org/teslamate/issues/4829) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- docs: mention dedicated version for MCU2 upgraded cars ([#&#8203;4829](https://redirect.github.com/teslamate-org/teslamate/issues/4829) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))

[complete Changelog](https://github.com/teslamate-org/teslamate/compare/v2.0.0...v2.1.0)

---

## Add-on Release Notes




## What's Changed
* Update TeslaMate to v2.1.0 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/94


**Full Changelog**: https://github.com/lildude/ha-addon-teslamate/compare/v2.0.1...v2.1.0
