## TeslaMate Release Notes

### [`v1.32.0`](https://redirect.github.com/teslamate-org/teslamate/releases/tag/v1.32.0)

[Compare Source](https://redirect.github.com/teslamate-org/teslamate/compare/v1.31.1...v1.32.0)

As always, there are many improvements. The focus has been on quality of life improvements and standardization across all dashboards. Enjoy it.

##### New features

##### Improvements and bug fixes

-   feat: use Grafana 11.2.3 ([#&#8203;4338](https://redirect.github.com/teslamate-org/teslamate/issues/4338) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   feat: Update marketing name to recognize Model S LR+ ([#&#8203;4370](https://redirect.github.com/teslamate-org/teslamate/issues/4370) - [@&#8203;cwanja](https://redirect.github.com/cwanja))
-   fix(nix): bump hash for dependencies ([#&#8203;4371](https://redirect.github.com/teslamate-org/teslamate/issues/4371) - [@&#8203;brianmay](https://redirect.github.com/brianmay))

##### Build, CI, internal

-   ci: remove unknown flag --ref for gh cache delete in cleanup_caches workflow ([3a515df](https://redirect.github.com/teslamate-org/teslamate/commit/3a515df5aa400139acf8ef638e5ae37339c553cf) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   build(deps): bump actions/checkout from 4.2.1 to 4.2.2 ([#&#8203;4340](https://redirect.github.com/teslamate-org/teslamate/issues/4340))
-   build(deps): bump actions/cache from 4.0.2 to 4.1.2 ([#&#8203;4341](https://redirect.github.com/teslamate-org/teslamate/issues/4341))
-   build(deps): bump cachix/install-nix-action from 27 to 30 ([#&#8203;4342](https://redirect.github.com/teslamate-org/teslamate/issues/4342))
-   build(deps): bump tesla from 1.12.1 to 1.13.0 ([#&#8203;4335](https://redirect.github.com/teslamate-org/teslamate/issues/4335))
-   build(deps): bump floki from 0.36.2 to 0.36.3 ([#&#8203;4336](https://redirect.github.com/teslamate-org/teslamate/issues/4336))
-   feat: add CONTRIBUTING file to exclusion lists for treefmt ([#&#8203;4359](https://redirect.github.com/teslamate-org/teslamate/issues/4359) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   ci: create PR to update flake.lock every saturday ([#&#8203;4372](https://redirect.github.com/teslamate-org/teslamate/issues/4372) - [@&#8203;brianmay](https://redirect.github.com/brianmay))
-   ci(fix): correct permissions for flake.lock updates ([c673ef3](https://redirect.github.com/teslamate-org/teslamate/commit/c673ef363ba73ad076680d71ef54bd549582d41f)- [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   ci: update flake.lock workflow with appropriate labels for created pr's ([54c41c1](https://redirect.github.com/teslamate-org/teslamate/commit/54c41c1fe66664b62d817502d1b2bdb244b70dc2) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
-   build(deps): bump cross-spawn from 7.0.3 to 7.0.6 in /website ([#&#8203;4391](https://redirect.github.com/teslamate-org/teslamate/issues/4391))
-   build(deps): bump crate-ci/typos from 1.26.0 to 1.27.0 ([#&#8203;4344](https://redirect.github.com/teslamate-org/teslamate/issues/4344))
-   build(deps): update flake.lock ([#&#8203;4381](https://redirect.github.com/teslamate-org/teslamate/issues/4381))

##### Dashboards

-   fix: allow editing of dashboards - [changes will be overwritten on update](https://grafana.com/docs/grafana/latest/administration/provisioning/#making-changes-to-a-provisioned-dashboard) ([#&#8203;4338](https://redirect.github.com/teslamate-org/teslamate/issues/4338) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   fix: ensure max speed panels are converted according to length unit setting in drive stats dashboard ([#&#8203;4338](https://redirect.github.com/teslamate-org/teslamate/issues/4338) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   perf: speed up queries used to calculate max speed in drive stats dashboard ([#&#8203;4338](https://redirect.github.com/teslamate-org/teslamate/issues/4338) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   feat: add a welcome dashboard ([#&#8203;4338](https://redirect.github.com/teslamate-org/teslamate/issues/4338) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   fix: Charges Dashboard -> Range added renamed to Ø Charge rate ([#&#8203;4349](https://redirect.github.com/teslamate-org/teslamate/issues/4349) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   fix: Axis Labels for XY Chart in Battery Health and reduces Query count in Visited ([#&#8203;4364](https://redirect.github.com/teslamate-org/teslamate/issues/4364) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   feat: Dashboard refinements and standardization ([#&#8203;4367](https://redirect.github.com/teslamate-org/teslamate/issues/4367) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
-   feat: add Detailed Energy Use to drive-details ([#&#8203;4386](https://redirect.github.com/teslamate-org/teslamate/issues/4386) - [@&#8203;jameskitt616](https://redirect.github.com/jameskitt616))

##### Translations

##### Documentation

docs: add contributing guidelines link for GitHub ([#&#8203;4345](https://redirect.github.com/teslamate-org/teslamate/issues/4345) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
docs: update Home Assistant integration documentation with configuration URL and model name hints ([#&#8203;4359](https://redirect.github.com/teslamate-org/teslamate/issues/4359) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
docs: Remove availability from Home Assistant MQTT sensors, as it can be misleading and prevent sensors from receiving updated values ([#&#8203;4362](https://redirect.github.com/teslamate-org/teslamate/issues/4362) - [@&#8203;longzheng](https://redirect.github.com/longzheng))
docs: Introducing TeslaMate Guru on Gurubase.io ([#&#8203;4390](https://redirect.github.com/teslamate-org/teslamate/issues/4390) - [@&#8203;kursataktas](https://redirect.github.com/kursataktas))

[complete changelog](https://redirect.github.com/teslamate-org/teslamate/compare/v1.31.1...v1.32.0)

---

## Add-on Release Notes




## What's Changed
* Update softprops/action-gh-release action to v2.0.9 by @renovate in https://github.com/lildude/ha-addon-teslamate/pull/55
* Update softprops/action-gh-release action to v2.1.0 by @renovate in https://github.com/lildude/ha-addon-teslamate/pull/56
* Update TeslaMate to v1.32.0 by @renovate in https://github.com/lildude/ha-addon-teslamate/pull/57


**Full Changelog**: https://github.com/lildude/ha-addon-teslamate/compare/v1.3.0...v1.4.0
