## TeslaMate Release Notes

### [`v4.0.1`](https://redirect.github.com/teslamate-org/teslamate/releases/tag/v4.0.1)

[Compare Source](https://redirect.github.com/teslamate-org/teslamate/compare/v4.0.0...v4.0.1)

This release resolves the issue with refresh tokens. This was a community effort: the community conducted research, submitted pull requests, and the maintainers provided test images. We love to see, and we hope, we do not need another quick hotfix in the next days, weeks, ... .
To make your TeslaMate experience even better, we have also made more than 8 other improvements.

Enjoy!

##### New features

##### Improvements and bug fixes

- fix: enable HTTP/2 and set TLS to 1.3 for TESLA\_AUTH\_HOST ([#&#8203;5406](https://redirect.github.com/teslamate-org/teslamate/issues/5406) - [@&#8203;kenc420](https://redirect.github.com/kenc420) and [@&#8203;longzheng](https://redirect.github.com/longzheng))
- feat: log Erlang and OTP version ([#&#8203;5397](https://redirect.github.com/teslamate-org/teslamate/issues/5397) - [@&#8203;swiffer](https://redirect.github.com/swiffer))

##### Build, CI, internal

- ci: remove now obsolete ARMv7 buildcache ([#&#8203;5397](https://redirect.github.com/teslamate-org/teslamate/issues/5397) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- build: remove now unused zstd compression tool to reduce docker image size ([#&#8203;5397](https://redirect.github.com/teslamate-org/teslamate/issues/5397) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- build(deps): bump floki from 0.38.1 to 0.38.3 ([#&#8203;5359](https://redirect.github.com/teslamate-org/teslamate/issues/5359))
- ci(osv-scanner): don't fail on main pushes and merge queue ([#&#8203;5410](https://redirect.github.com/teslamate-org/teslamate/issues/5410) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))

##### Dashboards

##### Translations

##### Documentation

- docs: clarify Grafana and Erlang requirements ([#&#8203;5397](https://redirect.github.com/teslamate-org/teslamate/issues/5397) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- docs: clarify which docker images are provided and what to do if the user have a Raspberry Pi with ARMv7 OS ([#&#8203;5397](https://redirect.github.com/teslamate-org/teslamate/issues/5397) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- docs: clarify Erlang and OTP support in contributing guide ([#&#8203;5397](https://redirect.github.com/teslamate-org/teslamate/issues/5397) - [@&#8203;swiffer](https://redirect.github.com/swiffer))

[complete changelog](https://redirect.github.com/teslamate-org/teslamate/compare/v4.0.0...v4.0.1)

### [`v4.0.0`](https://redirect.github.com/teslamate-org/teslamate/releases/tag/v4.0.0)

[Compare Source](https://redirect.github.com/teslamate-org/teslamate/compare/v3.1.0...v4.0.0)

**This is a breaking change release:**

This release resolves the issue of 403 Forbidden errors with Owner API tokens. To accomplish this, we had to drop ARMv7 support, a plan that had been in place for a long time, as it held us back from recent updates. The need for this change in such a short time span was unforeseeable.
To make your TeslaMate experience even better, we have also made more than 4 other improvements.

Enjoy!

##### New features

##### Improvements and bug fixes

- fix: restore vehicle\_unavailable fallback for streaming fetches to prevent unwanted vehicle online state ([#&#8203;5378](https://redirect.github.com/teslamate-org/teslamate/issues/5378) - [@&#8203;ciyahu](https://redirect.github.com/ciyahu))
- fix: properly clean up state and delete tokens on sign out ([#&#8203;5379](https://redirect.github.com/teslamate-org/teslamate/issues/5379) - [@&#8203;jlestel](https://redirect.github.com/jlestel))

##### Build, CI, internal

- build: use Elixir 1.19.5 OTP 28 ([#&#8203;5391](https://redirect.github.com/teslamate-org/teslamate/issues/5391) - [@&#8203;NirKli](https://redirect.github.com/NirKli) and [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build: drop ARMv7 support as announced in Changelog of v3.1.0 ([#&#8203;5391](https://redirect.github.com/teslamate-org/teslamate/issues/5391) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): update flake.lock ([#&#8203;5386](https://redirect.github.com/teslamate-org/teslamate/issues/5386))
- build(deps): bump shell-quote from 1.8.3 to 1.8.4 in /website ([#&#8203;5381](https://redirect.github.com/teslamate-org/teslamate/issues/5381))

##### Dashboards

##### Translations

##### Documentation

[complete changelog](https://redirect.github.com/teslamate-org/teslamate/compare/v3.1.0...v4.0.0)

### [`v3.1.0`](https://redirect.github.com/teslamate-org/teslamate/releases/tag/v3.1.0)

[Compare Source](https://redirect.github.com/teslamate-org/teslamate/compare/v3.0.0...v3.1.0)

MCU2 upgraded cars are now fully supported in the main release (please switch from the now deprecated mcu2 branch aka pr-4453).

As always, there have been many improvements. We now use the latest version of Grafana (13.0.1+security-01). The dashboards have been improved in terms of performance, and all dashboards now function as expected even if no geofence exists. BRIN indexes are now maintained to prevent performance degradation over time.
To make your TeslaMate experience even better, we have also made more than 80 other improvements.

Enjoy!

##### ARMv7 deprecation

This is the last TeslaMate release to include ARMv7 Docker images. To keep up with current Elixir versions, ARMv7 support will be dropped going forward. Please migrate your OS to ARM64 or AMD64 before upgrading to the next release. If this is not possible, please inform us in [#&#8203;5304](https://redirect.github.com/teslamate-org/teslamate/issues/5304).

##### New features

- feat: handle sleep behavior of MCU2 upgraded cars ([#&#8203;4453](https://redirect.github.com/teslamate-org/teslamate/issues/4453) -> [f58df80](https://redirect.github.com/teslamate-org/teslamate/commit/f58df8088c3b935851e84e2f935a041fc393b3ff) - [@&#8203;micves](https://redirect.github.com/micves), [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld) and [@&#8203;brianmay](https://redirect.github.com/brianmay))

##### Improvements and bug fixes

- feat(webview): Sort vehicles by display\_priority ([#&#8203;5188](https://redirect.github.com/teslamate-org/teslamate/issues/5188) - [@&#8203;olsoybakk](https://redirect.github.com/olsoybakk) and [@&#8203;swiffer](https://redirect.github.com/swiffer))
- feat(webview): Make icons inherit text color for better contrast in dark mode ([#&#8203;5193](https://redirect.github.com/teslamate-org/teslamate/issues/5193) - [@&#8203;olsoybakk](https://redirect.github.com/olsoybakk))
- feat(webview): Add dark mode support for background and buttons in the map ([#&#8203;5240](https://redirect.github.com/teslamate-org/teslamate/issues/5240) - [@&#8203;olsoybakk](https://redirect.github.com/olsoybakk) and [@&#8203;swiffer](https://redirect.github.com/swiffer))
- fix(webview): Prevent rounding of map tiles via Bulma CSS ([#&#8203;5265](https://redirect.github.com/teslamate-org/teslamate/issues/5265) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- perf: ensure BRIN indexes don't degrade over time ([#&#8203;5276](https://redirect.github.com/teslamate-org/teslamate/issues/5276) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- fix: fix folder creation and bash 3.2 compatibility in dashboards.sh ([#&#8203;5233](https://redirect.github.com/teslamate-org/teslamate/issues/5233) - [@&#8203;svennergr](https://redirect.github.com/svennergr))
- fix: handle nil tire pressure values in summary view ([#&#8203;5297](https://redirect.github.com/teslamate-org/teslamate/issues/5297) - [@&#8203;elemated](https://redirect.github.com/elemated))
- feat: use Grafana 13.0.1+security-01 ([#&#8203;5324](https://redirect.github.com/teslamate-org/teslamate/issues/5324) - [@&#8203;swiffer](https://redirect.github.com/swiffer))

##### Build, CI, internal

- build(deps): bump ex\_cldr from 2.46.0 to 2.47.1 to fix 100% CPU lock when accessing TeslaMate web ([#&#8203;5166](https://redirect.github.com/teslamate-org/teslamate/issues/5166))
- ci: migrate runners for arm from buildjet to gha native ([#&#8203;5206](https://redirect.github.com/teslamate-org/teslamate/issues/5206) - [@&#8203;adriankumpf](https://redirect.github.com/adriankumpf))
- ci: limit DevOps workflow runs of type push to branch main to prevent duplicate runs on PR ([#&#8203;5211](https://redirect.github.com/teslamate-org/teslamate/issues/5211) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- build(deps): update flake.lock ([#&#8203;5186](https://redirect.github.com/teslamate-org/teslamate/issues/5186))
- fix(nix): update mix dependency hash in nix builds ([#&#8203;5186](https://redirect.github.com/teslamate-org/teslamate/issues/5186) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): bump actions/stale from 10.1.1 to 10.2.0 ([#&#8203;5162](https://redirect.github.com/teslamate-org/teslamate/issues/5162))
- build(deps): bump crate-ci/typos from 1.42.3 to 1.44.0 ([#&#8203;5163](https://redirect.github.com/teslamate-org/teslamate/issues/5163))
- build(deps): bump finch from 0.20.0 to 0.21.0 ([#&#8203;5165](https://redirect.github.com/teslamate-org/teslamate/issues/5165))
- build(deps): bump immutable from 5.1.4 to 5.1.5 in /assets ([#&#8203;5176](https://redirect.github.com/teslamate-org/teslamate/issues/5176))
- build(deps): bump svgo from 3.3.2 to 3.3.3 in /website ([#&#8203;5177](https://redirect.github.com/teslamate-org/teslamate/issues/5177))
- ci: bump actions to avoid warnings for node 20 ([#&#8203;5213](https://redirect.github.com/teslamate-org/teslamate/issues/5213) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- ci: ensure fully purging PR related tags for images hosted on GHCR on PR close ([#&#8203;5212](https://redirect.github.com/teslamate-org/teslamate/issues/5212) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- ci: build images for main branch and use buildcache of main as fallback for PR builds ([#&#8203;5212](https://redirect.github.com/teslamate-org/teslamate/issues/5212) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- ci: run Purge PR images workflow only if PR is from our own repo ([#&#8203;5217](https://redirect.github.com/teslamate-org/teslamate/issues/5217) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- ci: for check\_paths ensure the job value is retrieved and set as workflow output correctly ([#&#8203;5219](https://redirect.github.com/teslamate-org/teslamate/issues/5219) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- build(deps): bump castore from 1.0.17 to 1.0.18 ([#&#8203;5255](https://redirect.github.com/teslamate-org/teslamate/issues/5255))
- build(deps-dev): bump credo from 1.7.16 to 1.7.17 ([#&#8203;5254](https://redirect.github.com/teslamate-org/teslamate/issues/5254))
- build(deps): bump floki from 0.38.0 to 0.38.1 ([#&#8203;5249](https://redirect.github.com/teslamate-org/teslamate/issues/5249))
- build(deps): bump crate-ci/typos from 1.44.0 to 1.45.0 ([#&#8203;5251](https://redirect.github.com/teslamate-org/teslamate/issues/5251))
- build(deps): bump actions/cache from 5.0.3 to 5.0.4 ([#&#8203;5248](https://redirect.github.com/teslamate-org/teslamate/issues/5248))
- build(deps): bump dorny/paths-filter from 4.0.0 to 4.0.1 ([#&#8203;5247](https://redirect.github.com/teslamate-org/teslamate/issues/5247))
- build(deps): bump ecto\_sql from 3.13.4 to 3.13.5 ([#&#8203;5260](https://redirect.github.com/teslamate-org/teslamate/issues/5260) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- build(deps): bump ex\_cldr from 2.47.1 to 2.47.2 ([#&#8203;5260](https://redirect.github.com/teslamate-org/teslamate/issues/5260) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- build(deps-dev): bump esbuild from 0.27.3 to 0.27.7 in /assets ([#&#8203;5261](https://redirect.github.com/teslamate-org/teslamate/issues/5261) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- build(deps-dev): bump esbuild-sass-plugin from 3.6.0 to 3.7.0 in /assets ([#&#8203;5261](https://redirect.github.com/teslamate-org/teslamate/issues/5261) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- build(deps-dev): bump sass from 1.97.3 to 1.99.0 in /assets ([#&#8203;5261](https://redirect.github.com/teslamate-org/teslamate/issues/5261) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- build(deps): update packages in /website and remove obsolete overrides ([#&#8203;5266](https://redirect.github.com/teslamate-org/teslamate/issues/5266) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- build(deps): update flake.lock ([#&#8203;5275](https://redirect.github.com/teslamate-org/teslamate/issues/5275))
- build(deps): update flake.lock ([#&#8203;5288](https://redirect.github.com/teslamate-org/teslamate/issues/5288))
- build(deps): bump docusaurus from 3.9.2 to 3.10.0 in /website ([#&#8203;5302](https://redirect.github.com/teslamate-org/teslamate/issues/5302) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- refactor: replace fake\_online\_state integer with typed mcu2\_online\_check atom ([#&#8203;5245](https://redirect.github.com/teslamate-org/teslamate/issues/5245) - [@&#8203;brianmay](https://redirect.github.com/brianmay))
- fix: update GitHub Actions configuration for Dependabot to include action directories ([#&#8203;5316](https://redirect.github.com/teslamate-org/teslamate/issues/5316) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- build(deps): bump docker/login-action from 4.0.0 to 4.1.0, docker/build-push-action from 7.0.0 to 7.1.0, actions/upload-artifact from 7.0.0 to 7.0.1, actions/upload-artifact/merge from 7.0.0 to 7.0.1, erlef/setup-beam from 1.18.1 to 1.24.0, actions/cache from 5.0.4 to 5.0.5, actions/cache/restore from 5.0.4 to 5.0.5, actions/cache/save from 5.0.4 to 5.0.5 and crate-ci/typos from 1.45.0 to 1.46.0 ([#&#8203;5317](https://redirect.github.com/teslamate-org/teslamate/issues/5317))
- build(deps): bump leaflet-geoman-free from 2.19.2 to 2.19.3 in /assets ([#&#8203;5301](https://redirect.github.com/teslamate-org/teslamate/issues/5301) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- build(deps): bump plug\_cowboy from 2.8.0 to 2.8.1 ([#&#8203;5314](https://redirect.github.com/teslamate-org/teslamate/issues/5314))
- build(deps-dev): bump esbuild from 0.27.7 to 0.28.0 in /assets ([#&#8203;5312](https://redirect.github.com/teslamate-org/teslamate/issues/5312))
- build(deps-dev): bump credo from 1.7.17 to 1.7.18 ([#&#8203;5315](https://redirect.github.com/teslamate-org/teslamate/issues/5315))
- sec(deps): add uuid override to version 14.0.0 in /website ([#&#8203;5320](https://redirect.github.com/teslamate-org/teslamate/issues/5320) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): bump [@&#8203;babel/plugin-transform-modules-systemjs](https://redirect.github.com/babel/plugin-transform-modules-systemjs) from 7.29.0 to 7.29.4 in /website ([#&#8203;5328](https://redirect.github.com/teslamate-org/teslamate/issues/5328))
- build(deps): bump fast-uri from 3.1.0 to 3.1.2 in /website ([#&#8203;5327](https://redirect.github.com/teslamate-org/teslamate/issues/5327))
- build(deps): update flake.lock ([#&#8203;5326](https://redirect.github.com/teslamate-org/teslamate/issues/5326))
- sec(deps): fix OSV vulnerabilities - update cowlib, decimal, and phoenix to patched versions ([#&#8203;5332](https://redirect.github.com/teslamate-org/teslamate/issues/5332) - [@&#8203;brianmay](https://redirect.github.com/brianmay))
- ci: add osv scanner to scan for vulnerabilities ([#&#8203;5332](https://redirect.github.com/teslamate-org/teslamate/issues/5332) - [@&#8203;brianmay](https://redirect.github.com/brianmay) and [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): update flake.lock ([#&#8203;5338](https://redirect.github.com/teslamate-org/teslamate/issues/5338))
- refactor: use frame key when specifying window to improve readability ([#&#8203;5339](https://redirect.github.com/teslamate-org/teslamate/issues/5339) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- build(deps): bump cowlib from 2.16.0 to 2.16.1 ([#&#8203;5342](https://redirect.github.com/teslamate-org/teslamate/issues/5342) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): bump cowboy from 2.14.2 to 2.15.0 ([#&#8203;5342](https://redirect.github.com/teslamate-org/teslamate/issues/5342) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): bump plug from 1.19.1 to 1.19.2 ([#&#8203;5342](https://redirect.github.com/teslamate-org/teslamate/issues/5342) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): bump postgrex from 0.22.0 to 0.22.2 and db\_connection from 2.9.0 to 2.10.1 ([#&#8203;5342](https://redirect.github.com/teslamate-org/teslamate/issues/5342) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): update flake.lock ([#&#8203;5342](https://redirect.github.com/teslamate-org/teslamate/issues/5342) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): bump webpack-dev-server from 5.2.3 to 5.2.4 in /website ([#&#8203;5343](https://redirect.github.com/teslamate-org/teslamate/issues/5343))
- sec(deps): add ws override to version 8.20.1 in /website ([#&#8203;5344](https://redirect.github.com/teslamate-org/teslamate/issues/5344) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- feat(nix): update NixOS version to 26.05 ([#&#8203;5350](https://redirect.github.com/teslamate-org/teslamate/issues/5350) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(nix): correct URL format for PostgreSQL connection in Grafana 13+ ([#&#8203;5351](https://redirect.github.com/teslamate-org/teslamate/issues/5351) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(nix): make grafana.secretKeyFile optional with old insecure grafana default fallback ([#&#8203;5352](https://redirect.github.com/teslamate-org/teslamate/issues/5352) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): bump ex\_cldr from 2.47.2 to 2.47.4 ([#&#8203;5361](https://redirect.github.com/teslamate-org/teslamate/issues/5361))
- ci(deps): bump the actions-deps group across 4 directories with 11 updates ([#&#8203;5368](https://redirect.github.com/teslamate-org/teslamate/issues/5368))
- build(deps): update flake.lock ([#&#8203;5354](https://redirect.github.com/teslamate-org/teslamate/issues/5354))
- build(deps): bump finch from 0.21.0 to 0.22.0 ([#&#8203;5358](https://redirect.github.com/teslamate-org/teslamate/issues/5358))
- build(deps): bump react and react-dom from 19.2.5 to 19.2.6 in /website ([#&#8203;5366](https://redirect.github.com/teslamate-org/teslamate/issues/5366))
- build(deps-dev): bump sass from 1.99.0 to 1.100.0 in /assets ([#&#8203;5360](https://redirect.github.com/teslamate-org/teslamate/issues/5360))
- build(deps): bump [@&#8203;docusaurus/core](https://redirect.github.com/docusaurus/core), /faster and /preset-classic from 3.10.0 to 3.10.1 in /website ([#&#8203;5365](https://redirect.github.com/teslamate-org/teslamate/issues/5365))

##### Dashboards

- fix: use FLOOR/CEIL over ROUND for timestamps used in dashboard links to avoid timeranges becoming to narrow ([#&#8203;5187](https://redirect.github.com/teslamate-org/teslamate/issues/5187) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- fix: ensure Charges / Drives dashboards load correctly if no Geofence exists ([#&#8203;5199](https://redirect.github.com/teslamate-org/teslamate/issues/5199), [#&#8203;5335](https://redirect.github.com/teslamate-org/teslamate/issues/5335) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- fix: division by zero in SQL query for cost\_mileage in Trips dashboard ([#&#8203;5198](https://redirect.github.com/teslamate-org/teslamate/issues/5198) - [@&#8203;DrMichael](https://redirect.github.com/DrMichael))
- fix: handle incomplete data correctly in Charging Stats / Statistics / Trips dashboards ([#&#8203;5229](https://redirect.github.com/teslamate-org/teslamate/issues/5229) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- feat: enable timepicker in efficiency dashboard ([#&#8203;5257](https://redirect.github.com/teslamate-org/teslamate/issues/5257) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- fix: ensure low precision mode is used for consumption gross for larger intervals ([#&#8203;5257](https://redirect.github.com/teslamate-org/teslamate/issues/5257) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- feat: improve filters in Statistics dashboard ([#&#8203;5340](https://redirect.github.com/teslamate-org/teslamate/issues/5340) - [@&#8203;DrMichael](https://redirect.github.com/DrMichael))
- feat: add geofence filter to Charging Stats dashboard with default to all ([#&#8203;5355](https://redirect.github.com/teslamate-org/teslamate/issues/5355) - [@&#8203;faekz0r](https://redirect.github.com/faekz0r))

##### Translations

- i18n: updated Catalan default.po ([#&#8203;5180](https://redirect.github.com/teslamate-org/teslamate/issues/5180) - [@&#8203;pellix](https://redirect.github.com/pellix))
- i18n: Update Korean translations in default.po ([#&#8203;5218](https://redirect.github.com/teslamate-org/teslamate/issues/5218) - [@&#8203;dongbum](https://redirect.github.com/dongbum))

##### Documentation

- docs: drop private schema before restore ([#&#8203;5190](https://redirect.github.com/teslamate-org/teslamate/issues/5190) - [@&#8203;brianmay](https://redirect.github.com/brianmay))
- docs: remove references to mcu2-upgraded-cars branch ([#&#8203;5371](https://redirect.github.com/teslamate-org/teslamate/issues/5371)- [@&#8203;brianmay](https://redirect.github.com/brianmay))
- docs: update DROP SCHEMA commands to include IF EXISTS to avoid issues with old installations ([@&#8203;5372-](https://redirect.github.com/5372-) [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))

[complete changelog](https://redirect.github.com/teslamate-org/teslamate/compare/v3.0.0...v3.1.0)

---

## Add-on Release Notes




## What's Changed
* Update softprops/action-gh-release action to v2.6.1 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/131
* Update home-assistant/builder action to v2026.03.0 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/132
* Update home-assistant/builder action to v2026.03.2 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/133
* Update docker/login-action action to v4.1.0 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/134
* Update docker/login-action action to v4.2.0 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/137
* Update softprops/action-gh-release action to v3 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/136
* Update actions/checkout action to v6.0.3 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/138
* Update TeslaMate to v4 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/142


**Full Changelog**: https://github.com/lildude/ha-addon-teslamate/compare/v2.4.0...v2.5.0
