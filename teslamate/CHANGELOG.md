## TeslaMate Release Notes

### [`v4.1.1`](https://redirect.github.com/teslamate-org/teslamate/releases/tag/v4.1.1)

[Compare Source](https://redirect.github.com/teslamate-org/teslamate/compare/v4.1.0...v4.1.1)

Sorry for the trouble. Days of testing, and then we squeeze in one more nice feature right before dinner and release it — yeah, I can hear it myself as I type this.

Hotfix for 4.1.0, which crashes in a startup loop on installations with MQTT enabled and no `MQTT_NAMESPACE` set. Upgrading is recommended for all MQTT users.

##### Improvements and bug fixes

- fix(mqtt): don't require the namespace option in VehicleSubscriber ([#&#8203;5611](https://redirect.github.com/teslamate-org/teslamate/issues/5611) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))

#### \[4.1.0] - notes still valid

We've fixed small bugs that had been around for years, implemented several feature requests, integrated the latest version of Grafana, and completely overhauled numerous areas within TeslaMate. As we fixed the phase detection during AC charges, existing charging processes are recomputed once during the upgrade migration: previously empty or zero `charge_energy_used` values (short or mixed AC sessions) gain values.
The first start after the upgrade can take a few minutes longer on databases with years of history and slow hardware; charge costs are deliberately not changed retroactively ([#&#8203;5592](https://redirect.github.com/teslamate-org/teslamate/issues/5592)).

And Home Assistant MQTT auto discovery landed (opt-in).

**Note for manual Home Assistant configurations:** The documented manual [mqtt\_sensors.yaml](https://docs.teslamate.org/docs/integrations/home_assistant#mqtt_sensorsyaml-mqtt-section-of-configurationyaml) now uses `state_class: total_increasing` for the `charge_energy_added` sensor ([#&#8203;5543](https://redirect.github.com/teslamate-org/teslamate/issues/5543)). If you re-sync your manual YAML, Home Assistant will treat the per-charge resets as meter cycles, which changes the long-term statistics behavior (e.g. in the Energy dashboard).

To make your TeslaMate experience even better, we have made 112 improvements.

Enjoy!

##### New features

- feat: add service mode to webview and reduce log when car is Unlocked at service mode ([#&#8203;5289](https://redirect.github.com/teslamate-org/teslamate/issues/5289) - [@&#8203;NirKli](https://redirect.github.com/NirKli))
- feat(mqtt): add service\_mode ([#&#8203;5289](https://redirect.github.com/teslamate-org/teslamate/issues/5289) - [@&#8203;NirKli](https://redirect.github.com/NirKli))
- feat: add Sun roof and individual window status via MQTT ([#&#8203;5393](https://redirect.github.com/teslamate-org/teslamate/issues/5393) - [@&#8203;nebhale](https://redirect.github.com/nebhale))
- feat: show and color the software update icon through the update lifecycle ([#&#8203;5487](https://redirect.github.com/teslamate-org/teslamate/issues/5487) - [@&#8203;NirKli](https://redirect.github.com/NirKli))
- feat(mqtt): add download\_perc and install\_perc for pending sw install ([#&#8203;5487](https://redirect.github.com/teslamate-org/teslamate/issues/5487) - [@&#8203;NirKli](https://redirect.github.com/NirKli))
- feat: link the software update icon to the notateslaapp release notes ([#&#8203;5490](https://redirect.github.com/teslamate-org/teslamate/issues/5490) - [@&#8203;NirKli](https://redirect.github.com/NirKli))
- feat: add fullscreen mode to vehicle summary map ([#&#8203;5495](https://redirect.github.com/teslamate-org/teslamate/issues/5495) - [@&#8203;hakong](https://redirect.github.com/hakong))
- feat(web): expose VIN in car summary ( [#&#8203;5556](https://redirect.github.com/teslamate-org/teslamate/issues/5556) - [@&#8203;Helvio88](https://redirect.github.com/Helvio88), [@&#8203;magrathean-uk](https://redirect.github.com/magrathean-uk))
- feat(mqtt): add opt-in Home Assistant MQTT discovery ([#&#8203;5543](https://redirect.github.com/teslamate-org/teslamate/issues/5543) - [@&#8203;brianmay](https://redirect.github.com/brianmay), [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))

##### Improvements and bug fixes

- fix(webview): show charging finish time in browser local time ([#&#8203;5436](https://redirect.github.com/teslamate-org/teslamate/issues/5436) - [@&#8203;Ashok28](https://redirect.github.com/Ashok28))
- fix(vehicle): use streaming-aware interval when a drive starts ([#&#8203;5417](https://redirect.github.com/teslamate-org/teslamate/issues/5417) - [@&#8203;evanclan](https://redirect.github.com/evanclan))
- fix(mqtt): retry failed value publications ([#&#8203;5429](https://redirect.github.com/teslamate-org/teslamate/issues/5429) - [@&#8203;ciyahu](https://redirect.github.com/ciyahu))
- fix: redact Tesla API tokens from logs ([#&#8203;5475](https://redirect.github.com/teslamate-org/teslamate/issues/5475) - [@&#8203;magrathean-uk](https://redirect.github.com/magrathean-uk))
- fix(vehicle): back off for 15 minutes on Fleet API `EXCEEDED_LIMIT` responses instead of retrying every 10-30s ([#&#8203;5476](https://redirect.github.com/teslamate-org/teslamate/issues/5476) - [@&#8203;hossamnagy](https://redirect.github.com/hossamnagy))
- refactor: send TOKEN as Bearer header via FleetAuth middleware ([#&#8203;5470](https://redirect.github.com/teslamate-org/teslamate/issues/5470) - [@&#8203;jlestel](https://redirect.github.com/jlestel))
- fix: honor DATABASE\_USER/DATABASE\_PASS with DATABASE\_SOCKET\_DIR ([#&#8203;5503](https://redirect.github.com/teslamate-org/teslamate/issues/5503) - [@&#8203;mvanhorn](https://redirect.github.com/mvanhorn))
- fix(import): accept fractional TeslaFi battery levels ([#&#8203;5513](https://redirect.github.com/teslamate-org/teslamate/issues/5513) - [@&#8203;magrathean-uk](https://redirect.github.com/magrathean-uk))
- fix(cars): enforce non-null VINs ([#&#8203;5512](https://redirect.github.com/teslamate-org/teslamate/issues/5512) - [@&#8203;magrathean-uk](https://redirect.github.com/magrathean-uk))
- fix(mqtt): return publish errors without crashing ([#&#8203;5514](https://redirect.github.com/teslamate-org/teslamate/issues/5514) - [@&#8203;magrathean-uk](https://redirect.github.com/magrathean-uk))
- fix(geofences): increase cost precision ([#&#8203;5508](https://redirect.github.com/teslamate-org/teslamate/issues/5508) - [@&#8203;magrathean-uk](https://redirect.github.com/magrathean-uk))
- fix: reconnect stream when a drive resumes after mid-drive offline phase to avoid missing elevation ([#&#8203;5535](https://redirect.github.com/teslamate-org/teslamate/issues/5535) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- refactor(nix,postgres): provision database declaratively, connect via socket ([#&#8203;5337](https://redirect.github.com/teslamate-org/teslamate/issues/5337) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(nix,maintenance): read RELEASE\_COOKIE without sourcing the env file ([#&#8203;5337](https://redirect.github.com/teslamate-org/teslamate/issues/5337) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(nix,postgres): set role password safely for any value ([#&#8203;5337](https://redirect.github.com/teslamate-org/teslamate/issues/5337) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(nix): drop schemas in the configured database during restore ([#&#8203;5337](https://redirect.github.com/teslamate-org/teslamate/issues/5337) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(nix,grafana): disable the periodic plugin update check ([#&#8203;5337](https://redirect.github.com/teslamate-org/teslamate/issues/5337) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- feat(import): continue past malformed rows and resume completed TeslaFi files- ([#&#8203;5552](https://redirect.github.com/teslamate-org/teslamate/issues/5552) - [@&#8203;magrathean-uk](https://redirect.github.com/magrathean-uk))
- fix(vehicle): update geofence while driving with streaming API ([#&#8203;5515](https://redirect.github.com/teslamate-org/teslamate/issues/5515) - [@&#8203;magrathean-uk](https://redirect.github.com/magrathean-uk))
- fix(vehicle): identify base Model 3 from model year 2022 as RWD instead of SR+ ([#&#8203;5551](https://redirect.github.com/teslamate-org/teslamate/issues/5551) - [@&#8203;magrathean-uk](https://redirect.github.com/magrathean-uk))
- fix(mqtt): avoid blocking startup on retained cleanup ([#&#8203;5549](https://redirect.github.com/teslamate-org/teslamate/issues/5549) - [@&#8203;magrathean-uk](https://redirect.github.com/magrathean-uk))
- feat: use Grafana 13.1.1 ([#&#8203;5559](https://redirect.github.com/teslamate-org/teslamate/issues/5559) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- fix(performance): use existing indexes for last-inserted / latest complete position lookups ([#&#8203;5438](https://redirect.github.com/teslamate-org/teslamate/issues/5438) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- fix(geocoder): resolve state for Australian territories ([#&#8203;3868](https://redirect.github.com/teslamate-org/teslamate/issues/3868) - mattew124)
- refactor(vehicles): make the geofence name lookup in the charging log total ([#&#8203;5599](https://redirect.github.com/teslamate-org/teslamate/issues/5599) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- feat: use Grafana 13.1.3 ([#&#8203;5587](https://redirect.github.com/teslamate-org/teslamate/issues/5587) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- fix(charging): fall back to charger\_power when phase detection fails ([#&#8203;5592](https://redirect.github.com/teslamate-org/teslamate/issues/5592) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(charges): enforce positive charger phases at the database ([#&#8203;5592](https://redirect.github.com/teslamate-org/teslamate/issues/5592) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(charging): recalculate charge\_energy\_used for existing processes ([#&#8203;5592](https://redirect.github.com/teslamate-org/teslamate/issues/5592) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))

##### Build, CI, internal

- build(nix): update mixFodDeps hash in nix builds ([954e8739](https://redirect.github.com/teslamate-org/teslamate/commit/954e8739326e092f7cddf7308dd4b704cc008f62) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): bump launch-editor from 2.13.2 to 2.14.1 in /website ([#&#8203;5426](https://redirect.github.com/teslamate-org/teslamate/issues/5426))
- build(deps): update flake.lock ([#&#8203;5427](https://redirect.github.com/teslamate-org/teslamate/issues/5427))
- build(deps): bump webpack-dev-server from 5.2.4 to 5.2.5 in /website ([#&#8203;5445](https://redirect.github.com/teslamate-org/teslamate/issues/5445))
- chore: add .codegraph to .gitignore ([#&#8203;5440](https://redirect.github.com/teslamate-org/teslamate/issues/5440) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- ci: speed up check\_linting by running treefmt in a lean app ([#&#8203;5440](https://redirect.github.com/teslamate-org/teslamate/issues/5440) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- sec(deps): add ws override to version 8.21.0 in /website ([#&#8203;5446](https://redirect.github.com/teslamate-org/teslamate/issues/5446) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps-dev): bump esbuild from 0.28.0 to 0.28.1 in /assets ([#&#8203;5444](https://redirect.github.com/teslamate-org/teslamate/issues/5444))
- sec(deps): add joi override to version 17.13.4 in /website ([#&#8203;5448](https://redirect.github.com/teslamate-org/teslamate/issues/5448) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): update flake.lock ([#&#8203;5449](https://redirect.github.com/teslamate-org/teslamate/issues/5449))
- build(deps): bump the actions-deps group across 3 directories with 9 updates ([#&#8203;5469](https://redirect.github.com/teslamate-org/teslamate/issues/5469))
- build(deps): bump ex\_cldr\_plugs from 1.3.4 to 1.4.0 ([#&#8203;5465](https://redirect.github.com/teslamate-org/teslamate/issues/5465))
- build(deps): bump react and react-dom from 19.2.6 to 19.2.7 in /website ([#&#8203;5466](https://redirect.github.com/teslamate-org/teslamate/issues/5466))
- build(deps): bump [@&#8203;geoman-io/leaflet-geoman-free](https://redirect.github.com/geoman-io/leaflet-geoman-free) from 2.19.3 to 2.20.0 in /assets ([#&#8203;5464](https://redirect.github.com/teslamate-org/teslamate/issues/5464))
- build(deps-dev): bump sass from 1.100.0 to 1.101.0 in /assets ([#&#8203;5462](https://redirect.github.com/teslamate-org/teslamate/issues/5462))
- build(deps): bump plug\_cowboy from 2.8.1 to 2.9.0 ([#&#8203;5463](https://redirect.github.com/teslamate-org/teslamate/issues/5463))
- build(deps): bump floki from 0.38.3 to 0.38.4 ([#&#8203;5461](https://redirect.github.com/teslamate-org/teslamate/issues/5461))
- test: harden async waits ([#&#8203;5456](https://redirect.github.com/teslamate-org/teslamate/issues/5456) - [@&#8203;magrathean-uk](https://redirect.github.com/magrathean-uk))
- build(deps): update flake.lock ([#&#8203;5477](https://redirect.github.com/teslamate-org/teslamate/issues/5477))
- ci: sign published images with SLSA provenance + SBOM attestations ([#&#8203;5380](https://redirect.github.com/teslamate-org/teslamate/issues/5380) - [@&#8203;oivindoh](https://redirect.github.com/oivindoh))
- fix(ci): add artifact-metadata permission for workflows as it is essential for generating attestations ([#&#8203;5484](https://redirect.github.com/teslamate-org/teslamate/issues/5484) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): update flake.lock ([#&#8203;5498](https://redirect.github.com/teslamate-org/teslamate/issues/5498))
- test: reuse API snapshots across paired fetches ([#&#8203;5510](https://redirect.github.com/teslamate-org/teslamate/issues/5510) - [@&#8203;magrathean-uk](https://redirect.github.com/magrathean-uk))
- build(deps): bump tesla from 1.14.1 to 1.20.0, migrate to Tesla.client/2 and update mix nix hash ([#&#8203;5468](https://redirect.github.com/teslamate-org/teslamate/issues/5468) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): bump websocket-driver from 0.7.4 to 0.7.5 in /website ([#&#8203;5516](https://redirect.github.com/teslamate-org/teslamate/issues/5516))
- build(deps): update flake.lock ([#&#8203;5522](https://redirect.github.com/teslamate-org/teslamate/issues/5522))
- build(deps): bump svgo from 3.3.3 to 3.3.4 in /website ([#&#8203;5536](https://redirect.github.com/teslamate-org/teslamate/issues/5536))
- build(deps): bump shell-quote from 1.8.4 to 1.10.0 in /website ([#&#8203;5537](https://redirect.github.com/teslamate-org/teslamate/issues/5537))
- build(deps): bump webpack-dev-server from 5.2.5 to 5.2.6 in /website ([#&#8203;5538](https://redirect.github.com/teslamate-org/teslamate/issues/5538))
- build(deps): bump body-parser from 1.20.5 to 1.20.6 in /website ([#&#8203;5539](https://redirect.github.com/teslamate-org/teslamate/issues/5539))
- build(deps): bump fast-uri from 3.1.2 to 3.1.4 in /website ([#&#8203;5540](https://redirect.github.com/teslamate-org/teslamate/issues/5540))
- build(deps): bump immutable from 5.1.5 to 5.1.9 in /assets ([#&#8203;5541](https://redirect.github.com/teslamate-org/teslamate/issues/5541))
- ci(treefmt): stop treefmt.toml from drifting out of sync with the flake ([#&#8203;5545](https://redirect.github.com/teslamate-org/teslamate/issues/5545) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- style(nix): format Nix code with nixfmt instead of the archived nixpkgs-fmt ([#&#8203;5545](https://redirect.github.com/teslamate-org/teslamate/issues/5545) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): update flake.lock ([#&#8203;5544](https://redirect.github.com/teslamate-org/teslamate/issues/5544))
- build(deps): bump phoenix\_live\_view from 0.20.17 to 1.2.8 and migrate accordingly ([#&#8203;5580](https://redirect.github.com/teslamate-org/teslamate/issues/5580) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): bump all [@&#8203;docusaurus](https://redirect.github.com/docusaurus) from 3.10.1 to 3.10.2 in /website ([#&#8203;5571](https://redirect.github.com/teslamate-org/teslamate/issues/5571))
- build(deps): bump react and react-dom from 19.2.7 to 19.2.8 in /website ([#&#8203;5574](https://redirect.github.com/teslamate-org/teslamate/issues/5574))
- build(deps): bump postcss from 8.5.15 to 8.5.25 in /website ([#&#8203;5582](https://redirect.github.com/teslamate-org/teslamate/issues/5582))
- build(deps): bump the actions-deps group across 4 directories with 11 updates ([#&#8203;5576](https://redirect.github.com/teslamate-org/teslamate/issues/5576))
- test(grafana): guard latest-position dashboard queries against missing partial-index predicate ([#&#8203;5581](https://redirect.github.com/teslamate-org/teslamate/issues/5581) - [@&#8203;magrathean-uk](https://redirect.github.com/magrathean-uk))
- build: use Elixir 1.20.2 OTP 29 ([#&#8203;5579](https://redirect.github.com/teslamate-org/teslamate/issues/5579) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- ci: derive Elixir cache keys from the toolchain and MIX\_ENV ([#&#8203;5595](https://redirect.github.com/teslamate-org/teslamate/issues/5595) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(test): override meck to 1.2 for OTP 29 compatibility ([#&#8203;5598](https://redirect.github.com/teslamate-org/teslamate/issues/5598) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- build(nix): reduce the manually pinned hashes to one and automate it ([#&#8203;5593](https://redirect.github.com/teslamate-org/teslamate/issues/5593) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- ci: let Dependabot pull requests refresh the Nix hashes ([#&#8203;5593](https://redirect.github.com/teslamate-org/teslamate/issues/5593) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- ci: verify Nix hashes on all dependency pull requests ([#&#8203;5593](https://redirect.github.com/teslamate-org/teslamate/issues/5593) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- ci: let maintainers run CI on pull requests touching .github ([#&#8203;5593](https://redirect.github.com/teslamate-org/teslamate/issues/5593) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): bump postgrex from 0.22.2 to 0.22.3 ([#&#8203;5570](https://redirect.github.com/teslamate-org/teslamate/issues/5570))
- build(deps): bump js-yaml from 4.2.0 to 4.3.1 in /website ([#&#8203;5597](https://redirect.github.com/teslamate-org/teslamate/issues/5597))
- build(deps): bump brace-expansion from 1.1.14 to 1.1.18 in /website ([#&#8203;5596](https://redirect.github.com/teslamate-org/teslamate/issues/5596))
- build(deps): bump fast-uri from 3.1.4 to 3.1.5 in /website ([#&#8203;5589](https://redirect.github.com/teslamate-org/teslamate/issues/5589))
- build(deps): bump phoenix from 1.7.24 to 1.8.9 and migrate accordingly ([#&#8203;5572](https://redirect.github.com/teslamate-org/teslamate/issues/5572) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): update flake.lock ([#&#8203;5560](https://redirect.github.com/teslamate-org/teslamate/issues/5560))
- build(deps-dev): bump sass from 1.101.0 to 1.102.0 in /assets ([#&#8203;5566](https://redirect.github.com/teslamate-org/teslamate/issues/5566))
- build(deps): bump leaflet-control-geocoder from 3.3.1 to 4.0.0 in /assets ([#&#8203;5565](https://redirect.github.com/teslamate-org/teslamate/issues/5565))

##### Dashboards

- feat(grafana): make data health summary actionable ([#&#8203;5526](https://redirect.github.com/teslamate-org/teslamate/issues/5526) - [@&#8203;magrathean-uk](https://redirect.github.com/magrathean-uk))
- fix(grafana): drop the Releases panel from the home dashboard to end the CORS proxy dependency ([#&#8203;5548](https://redirect.github.com/teslamate-org/teslamate/issues/5548) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(dashboards): filter latest-value position panels on complete rows so they use the partial index ([#&#8203;5438](https://redirect.github.com/teslamate-org/teslamate/issues/5438) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- fix(grafana): Battery Health latest SOC/kWh panels pick the newest UNION row and use `usable_battery_level` on charges ([#&#8203;5438](https://redirect.github.com/teslamate-org/teslamate/issues/5438) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- fix(grafana): use local calendar for Statistics period end boundaries ([#&#8203;5562](https://redirect.github.com/teslamate-org/teslamate/issues/5562) - [@&#8203;wjsall](https://redirect.github.com/wjsall))
- fix(charge-details): keep power panel in sync with the energy integration ([#&#8203;5592](https://redirect.github.com/teslamate-org/teslamate/issues/5592) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))

##### Translations

- i18n: add Hungarian translation ([#&#8203;5480](https://redirect.github.com/teslamate-org/teslamate/issues/5480) - [@&#8203;magrathean-uk](https://redirect.github.com/magrathean-uk))
- i18n: improve Traditional Chinese translations ([#&#8203;5527](https://redirect.github.com/teslamate-org/teslamate/issues/5527) - [@&#8203;occultsound](https://redirect.github.com/occultsound))

##### Documentation

- docs: update security policy to emphasize network-level protection ([27172cba](https://redirect.github.com/teslamate-org/teslamate/commit/27172cba54782f9a8eb7fdd9ea3a481dfd9d8f2b) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- docs: fix typo in DATABASE\_SSL\_SNI description ([#&#8203;5346](https://redirect.github.com/teslamate-org/teslamate/issues/5346) - [@&#8203;dashitongzhi](https://redirect.github.com/dashitongzhi))
- docs: update upgrading instructions to emphasize backup before updating more clearly ([#&#8203;5453](https://redirect.github.com/teslamate-org/teslamate/issues/5453) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- docs(mqtt): add service mode topic to MQTT integration documentation ([#&#8203;5472](https://redirect.github.com/teslamate-org/teslamate/issues/5472) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- docs: update star history chart links to new format in README ([#&#8203;5482](https://redirect.github.com/teslamate-org/teslamate/issues/5482) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- docs: update star history links in README with to include the now needed sealed token ([#&#8203;5489](https://redirect.github.com/teslamate-org/teslamate/issues/5489) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- docs: link directly to restore section in upgrading PostgreSQL guide ([#&#8203;5501](https://redirect.github.com/teslamate-org/teslamate/issues/5501) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- docs: split the backup and restore guides into two separate guides and highlight that you should transfer your backup of the host ([#&#8203;5502](https://redirect.github.com/teslamate-org/teslamate/issues/5502) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- docs: point Tesla Auth users to fixed releases ([#&#8203;5509](https://redirect.github.com/teslamate-org/teslamate/issues/5509) - [@&#8203;magrathean-uk](https://redirect.github.com/magrathean-uk))
- docs: add TeslaMate Dash to the projects page ([#&#8203;5494](https://redirect.github.com/teslamate-org/teslamate/issues/5494) - [@&#8203;gmaslowski](https://redirect.github.com/gmaslowski))

[complete changelog v4.1.1](https://redirect.github.com/teslamate-org/teslamate/compare/v4.1.0...v4.1.1)
[complete changelog 4.1.0](https://redirect.github.com/teslamate-org/teslamate/compare/v4.0.1...v4.1.0)

### [`v4.1.0`](https://redirect.github.com/teslamate-org/teslamate/releases/tag/v4.1.0)

[Compare Source](https://redirect.github.com/teslamate-org/teslamate/compare/v4.0.1...v4.1.0)

> \[!WARNING]
> This release crashes in a startup loop on installations with MQTT enabled and no `MQTT_NAMESPACE` set. Please use [v4.1.1](https://redirect.github.com/teslamate-org/teslamate/releases/tag/v4.1.1) instead.

***

We've fixed small bugs that had been around for years, implemented several feature requests, integrated the latest version of Grafana, and completely overhauled numerous areas within TeslaMate. As we fixed the phase detection during AC charges, existing charging processes are recomputed once during the upgrade migration: previously empty or zero `charge_energy_used` values (short or mixed AC sessions) gain values.
The first start after the upgrade can take a few minutes longer on databases with years of history and slow hardware; charge costs are deliberately not changed retroactively ([#&#8203;5592](https://redirect.github.com/teslamate-org/teslamate/issues/5592)).

And Home Assistant MQTT auto discovery landed (opt-in).

**Note for manual Home Assistant configurations:** The documented manual [mqtt\_sensors.yaml](https://docs.teslamate.org/docs/integrations/home_assistant#mqtt_sensorsyaml-mqtt-section-of-configurationyaml) now uses `state_class: total_increasing` for the `charge_energy_added` sensor ([#&#8203;5543](https://redirect.github.com/teslamate-org/teslamate/issues/5543)). If you re-sync your manual YAML, Home Assistant will treat the per-charge resets as meter cycles, which changes the long-term statistics behavior (e.g. in the Energy dashboard).

To make your TeslaMate experience even better, we have made 112 improvements.

Enjoy!

##### New features

- feat: add service mode to webview and reduce log when car is Unlocked at service mode ([#&#8203;5289](https://redirect.github.com/teslamate-org/teslamate/issues/5289) - [@&#8203;NirKli](https://redirect.github.com/NirKli))
- feat(mqtt): add service\_mode ([#&#8203;5289](https://redirect.github.com/teslamate-org/teslamate/issues/5289) - [@&#8203;NirKli](https://redirect.github.com/NirKli))
- feat: add Sun roof and individual window status via MQTT ([#&#8203;5393](https://redirect.github.com/teslamate-org/teslamate/issues/5393) - [@&#8203;nebhale](https://redirect.github.com/nebhale))
- feat: show and color the software update icon through the update lifecycle ([#&#8203;5487](https://redirect.github.com/teslamate-org/teslamate/issues/5487) - [@&#8203;NirKli](https://redirect.github.com/NirKli))
- feat(mqtt): add download\_perc and install\_perc for pending sw install ([#&#8203;5487](https://redirect.github.com/teslamate-org/teslamate/issues/5487) - [@&#8203;NirKli](https://redirect.github.com/NirKli))
- feat: link the software update icon to the notateslaapp release notes ([#&#8203;5490](https://redirect.github.com/teslamate-org/teslamate/issues/5490) - [@&#8203;NirKli](https://redirect.github.com/NirKli))
- feat: add fullscreen mode to vehicle summary map ([#&#8203;5495](https://redirect.github.com/teslamate-org/teslamate/issues/5495) - [@&#8203;hakong](https://redirect.github.com/hakong))
- feat(web): expose VIN in car summary ( [#&#8203;5556](https://redirect.github.com/teslamate-org/teslamate/issues/5556) - [@&#8203;Helvio88](https://redirect.github.com/Helvio88), [@&#8203;magrathean-uk](https://redirect.github.com/magrathean-uk))
- feat(mqtt): add opt-in Home Assistant MQTT discovery ([#&#8203;5543](https://redirect.github.com/teslamate-org/teslamate/issues/5543) - [@&#8203;brianmay](https://redirect.github.com/brianmay), [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))

##### Improvements and bug fixes

- fix(webview): show charging finish time in browser local time ([#&#8203;5436](https://redirect.github.com/teslamate-org/teslamate/issues/5436) - [@&#8203;Ashok28](https://redirect.github.com/Ashok28))
- fix(vehicle): use streaming-aware interval when a drive starts ([#&#8203;5417](https://redirect.github.com/teslamate-org/teslamate/issues/5417) - [@&#8203;evanclan](https://redirect.github.com/evanclan))
- fix(mqtt): retry failed value publications ([#&#8203;5429](https://redirect.github.com/teslamate-org/teslamate/issues/5429) - [@&#8203;ciyahu](https://redirect.github.com/ciyahu))
- fix: redact Tesla API tokens from logs ([#&#8203;5475](https://redirect.github.com/teslamate-org/teslamate/issues/5475) - [@&#8203;magrathean-uk](https://redirect.github.com/magrathean-uk))
- fix(vehicle): back off for 15 minutes on Fleet API `EXCEEDED_LIMIT` responses instead of retrying every 10-30s ([#&#8203;5476](https://redirect.github.com/teslamate-org/teslamate/issues/5476) - [@&#8203;hossamnagy](https://redirect.github.com/hossamnagy))
- refactor: send TOKEN as Bearer header via FleetAuth middleware ([#&#8203;5470](https://redirect.github.com/teslamate-org/teslamate/issues/5470) - [@&#8203;jlestel](https://redirect.github.com/jlestel))
- fix: honor DATABASE\_USER/DATABASE\_PASS with DATABASE\_SOCKET\_DIR ([#&#8203;5503](https://redirect.github.com/teslamate-org/teslamate/issues/5503) - [@&#8203;mvanhorn](https://redirect.github.com/mvanhorn))
- fix(import): accept fractional TeslaFi battery levels ([#&#8203;5513](https://redirect.github.com/teslamate-org/teslamate/issues/5513) - [@&#8203;magrathean-uk](https://redirect.github.com/magrathean-uk))
- fix(cars): enforce non-null VINs ([#&#8203;5512](https://redirect.github.com/teslamate-org/teslamate/issues/5512) - [@&#8203;magrathean-uk](https://redirect.github.com/magrathean-uk))
- fix(mqtt): return publish errors without crashing ([#&#8203;5514](https://redirect.github.com/teslamate-org/teslamate/issues/5514) - [@&#8203;magrathean-uk](https://redirect.github.com/magrathean-uk))
- fix(geofences): increase cost precision ([#&#8203;5508](https://redirect.github.com/teslamate-org/teslamate/issues/5508) - [@&#8203;magrathean-uk](https://redirect.github.com/magrathean-uk))
- fix: reconnect stream when a drive resumes after mid-drive offline phase to avoid missing elevation ([#&#8203;5535](https://redirect.github.com/teslamate-org/teslamate/issues/5535) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- refactor(nix,postgres): provision database declaratively, connect via socket ([#&#8203;5337](https://redirect.github.com/teslamate-org/teslamate/issues/5337) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(nix,maintenance): read RELEASE\_COOKIE without sourcing the env file ([#&#8203;5337](https://redirect.github.com/teslamate-org/teslamate/issues/5337) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(nix,postgres): set role password safely for any value ([#&#8203;5337](https://redirect.github.com/teslamate-org/teslamate/issues/5337) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(nix): drop schemas in the configured database during restore ([#&#8203;5337](https://redirect.github.com/teslamate-org/teslamate/issues/5337) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(nix,grafana): disable the periodic plugin update check ([#&#8203;5337](https://redirect.github.com/teslamate-org/teslamate/issues/5337) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- feat(import): continue past malformed rows and resume completed TeslaFi files- ([#&#8203;5552](https://redirect.github.com/teslamate-org/teslamate/issues/5552) - [@&#8203;magrathean-uk](https://redirect.github.com/magrathean-uk))
- fix(vehicle): update geofence while driving with streaming API ([#&#8203;5515](https://redirect.github.com/teslamate-org/teslamate/issues/5515) - [@&#8203;magrathean-uk](https://redirect.github.com/magrathean-uk))
- fix(vehicle): identify base Model 3 from model year 2022 as RWD instead of SR+ ([#&#8203;5551](https://redirect.github.com/teslamate-org/teslamate/issues/5551) - [@&#8203;magrathean-uk](https://redirect.github.com/magrathean-uk))
- fix(mqtt): avoid blocking startup on retained cleanup ([#&#8203;5549](https://redirect.github.com/teslamate-org/teslamate/issues/5549) - [@&#8203;magrathean-uk](https://redirect.github.com/magrathean-uk))
- feat: use Grafana 13.1.1 ([#&#8203;5559](https://redirect.github.com/teslamate-org/teslamate/issues/5559) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- fix(performance): use existing indexes for last-inserted / latest complete position lookups ([#&#8203;5438](https://redirect.github.com/teslamate-org/teslamate/issues/5438) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- fix(geocoder): resolve state for Australian territories ([#&#8203;3868](https://redirect.github.com/teslamate-org/teslamate/issues/3868) - mattew124)
- refactor(vehicles): make the geofence name lookup in the charging log total ([#&#8203;5599](https://redirect.github.com/teslamate-org/teslamate/issues/5599) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- feat: use Grafana 13.1.3 ([#&#8203;5587](https://redirect.github.com/teslamate-org/teslamate/issues/5587) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- fix(charging): fall back to charger\_power when phase detection fails ([#&#8203;5592](https://redirect.github.com/teslamate-org/teslamate/issues/5592) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(charges): enforce positive charger phases at the database ([#&#8203;5592](https://redirect.github.com/teslamate-org/teslamate/issues/5592) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(charging): recalculate charge\_energy\_used for existing processes ([#&#8203;5592](https://redirect.github.com/teslamate-org/teslamate/issues/5592) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))

##### Build, CI, internal

- build(nix): update mixFodDeps hash in nix builds ([954e8739](https://redirect.github.com/teslamate-org/teslamate/commit/954e8739326e092f7cddf7308dd4b704cc008f62) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): bump launch-editor from 2.13.2 to 2.14.1 in /website ([#&#8203;5426](https://redirect.github.com/teslamate-org/teslamate/issues/5426))
- build(deps): update flake.lock ([#&#8203;5427](https://redirect.github.com/teslamate-org/teslamate/issues/5427))
- build(deps): bump webpack-dev-server from 5.2.4 to 5.2.5 in /website ([#&#8203;5445](https://redirect.github.com/teslamate-org/teslamate/issues/5445))
- chore: add .codegraph to .gitignore ([#&#8203;5440](https://redirect.github.com/teslamate-org/teslamate/issues/5440) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- ci: speed up check\_linting by running treefmt in a lean app ([#&#8203;5440](https://redirect.github.com/teslamate-org/teslamate/issues/5440) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- sec(deps): add ws override to version 8.21.0 in /website ([#&#8203;5446](https://redirect.github.com/teslamate-org/teslamate/issues/5446) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps-dev): bump esbuild from 0.28.0 to 0.28.1 in /assets ([#&#8203;5444](https://redirect.github.com/teslamate-org/teslamate/issues/5444))
- sec(deps): add joi override to version 17.13.4 in /website ([#&#8203;5448](https://redirect.github.com/teslamate-org/teslamate/issues/5448) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): update flake.lock ([#&#8203;5449](https://redirect.github.com/teslamate-org/teslamate/issues/5449))
- build(deps): bump the actions-deps group across 3 directories with 9 updates ([#&#8203;5469](https://redirect.github.com/teslamate-org/teslamate/issues/5469))
- build(deps): bump ex\_cldr\_plugs from 1.3.4 to 1.4.0 ([#&#8203;5465](https://redirect.github.com/teslamate-org/teslamate/issues/5465))
- build(deps): bump react and react-dom from 19.2.6 to 19.2.7 in /website ([#&#8203;5466](https://redirect.github.com/teslamate-org/teslamate/issues/5466))
- build(deps): bump [@&#8203;geoman-io/leaflet-geoman-free](https://redirect.github.com/geoman-io/leaflet-geoman-free) from 2.19.3 to 2.20.0 in /assets ([#&#8203;5464](https://redirect.github.com/teslamate-org/teslamate/issues/5464))
- build(deps-dev): bump sass from 1.100.0 to 1.101.0 in /assets ([#&#8203;5462](https://redirect.github.com/teslamate-org/teslamate/issues/5462))
- build(deps): bump plug\_cowboy from 2.8.1 to 2.9.0 ([#&#8203;5463](https://redirect.github.com/teslamate-org/teslamate/issues/5463))
- build(deps): bump floki from 0.38.3 to 0.38.4 ([#&#8203;5461](https://redirect.github.com/teslamate-org/teslamate/issues/5461))
- test: harden async waits ([#&#8203;5456](https://redirect.github.com/teslamate-org/teslamate/issues/5456) - [@&#8203;magrathean-uk](https://redirect.github.com/magrathean-uk))
- build(deps): update flake.lock ([#&#8203;5477](https://redirect.github.com/teslamate-org/teslamate/issues/5477))
- ci: sign published images with SLSA provenance + SBOM attestations ([#&#8203;5380](https://redirect.github.com/teslamate-org/teslamate/issues/5380) - [@&#8203;oivindoh](https://redirect.github.com/oivindoh))
- fix(ci): add artifact-metadata permission for workflows as it is essential for generating attestations ([#&#8203;5484](https://redirect.github.com/teslamate-org/teslamate/issues/5484) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): update flake.lock ([#&#8203;5498](https://redirect.github.com/teslamate-org/teslamate/issues/5498))
- test: reuse API snapshots across paired fetches ([#&#8203;5510](https://redirect.github.com/teslamate-org/teslamate/issues/5510) - [@&#8203;magrathean-uk](https://redirect.github.com/magrathean-uk))
- build(deps): bump tesla from 1.14.1 to 1.20.0, migrate to Tesla.client/2 and update mix nix hash ([#&#8203;5468](https://redirect.github.com/teslamate-org/teslamate/issues/5468) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): bump websocket-driver from 0.7.4 to 0.7.5 in /website ([#&#8203;5516](https://redirect.github.com/teslamate-org/teslamate/issues/5516))
- build(deps): update flake.lock ([#&#8203;5522](https://redirect.github.com/teslamate-org/teslamate/issues/5522))
- build(deps): bump svgo from 3.3.3 to 3.3.4 in /website ([#&#8203;5536](https://redirect.github.com/teslamate-org/teslamate/issues/5536))
- build(deps): bump shell-quote from 1.8.4 to 1.10.0 in /website ([#&#8203;5537](https://redirect.github.com/teslamate-org/teslamate/issues/5537))
- build(deps): bump webpack-dev-server from 5.2.5 to 5.2.6 in /website ([#&#8203;5538](https://redirect.github.com/teslamate-org/teslamate/issues/5538))
- build(deps): bump body-parser from 1.20.5 to 1.20.6 in /website ([#&#8203;5539](https://redirect.github.com/teslamate-org/teslamate/issues/5539))
- build(deps): bump fast-uri from 3.1.2 to 3.1.4 in /website ([#&#8203;5540](https://redirect.github.com/teslamate-org/teslamate/issues/5540))
- build(deps): bump immutable from 5.1.5 to 5.1.9 in /assets ([#&#8203;5541](https://redirect.github.com/teslamate-org/teslamate/issues/5541))
- ci(treefmt): stop treefmt.toml from drifting out of sync with the flake ([#&#8203;5545](https://redirect.github.com/teslamate-org/teslamate/issues/5545) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- style(nix): format Nix code with nixfmt instead of the archived nixpkgs-fmt ([#&#8203;5545](https://redirect.github.com/teslamate-org/teslamate/issues/5545) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): update flake.lock ([#&#8203;5544](https://redirect.github.com/teslamate-org/teslamate/issues/5544))
- build(deps): bump phoenix\_live\_view from 0.20.17 to 1.2.8 and migrate accordingly ([#&#8203;5580](https://redirect.github.com/teslamate-org/teslamate/issues/5580) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): bump all [@&#8203;docusaurus](https://redirect.github.com/docusaurus) from 3.10.1 to 3.10.2 in /website ([#&#8203;5571](https://redirect.github.com/teslamate-org/teslamate/issues/5571))
- build(deps): bump react and react-dom from 19.2.7 to 19.2.8 in /website ([#&#8203;5574](https://redirect.github.com/teslamate-org/teslamate/issues/5574))
- build(deps): bump postcss from 8.5.15 to 8.5.25 in /website ([#&#8203;5582](https://redirect.github.com/teslamate-org/teslamate/issues/5582))
- build(deps): bump the actions-deps group across 4 directories with 11 updates ([#&#8203;5576](https://redirect.github.com/teslamate-org/teslamate/issues/5576))
- test(grafana): guard latest-position dashboard queries against missing partial-index predicate ([#&#8203;5581](https://redirect.github.com/teslamate-org/teslamate/issues/5581) - [@&#8203;magrathean-uk](https://redirect.github.com/magrathean-uk))
- build: use Elixir 1.20.2 OTP 29 ([#&#8203;5579](https://redirect.github.com/teslamate-org/teslamate/issues/5579) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- ci: derive Elixir cache keys from the toolchain and MIX\_ENV ([#&#8203;5595](https://redirect.github.com/teslamate-org/teslamate/issues/5595) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(test): override meck to 1.2 for OTP 29 compatibility ([#&#8203;5598](https://redirect.github.com/teslamate-org/teslamate/issues/5598) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- build(nix): reduce the manually pinned hashes to one and automate it ([#&#8203;5593](https://redirect.github.com/teslamate-org/teslamate/issues/5593) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- ci: let Dependabot pull requests refresh the Nix hashes ([#&#8203;5593](https://redirect.github.com/teslamate-org/teslamate/issues/5593) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- ci: verify Nix hashes on all dependency pull requests ([#&#8203;5593](https://redirect.github.com/teslamate-org/teslamate/issues/5593) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- ci: let maintainers run CI on pull requests touching .github ([#&#8203;5593](https://redirect.github.com/teslamate-org/teslamate/issues/5593) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): bump postgrex from 0.22.2 to 0.22.3 ([#&#8203;5570](https://redirect.github.com/teslamate-org/teslamate/issues/5570))
- build(deps): bump js-yaml from 4.2.0 to 4.3.1 in /website ([#&#8203;5597](https://redirect.github.com/teslamate-org/teslamate/issues/5597))
- build(deps): bump brace-expansion from 1.1.14 to 1.1.18 in /website ([#&#8203;5596](https://redirect.github.com/teslamate-org/teslamate/issues/5596))
- build(deps): bump fast-uri from 3.1.4 to 3.1.5 in /website ([#&#8203;5589](https://redirect.github.com/teslamate-org/teslamate/issues/5589))
- build(deps): bump phoenix from 1.7.24 to 1.8.9 and migrate accordingly ([#&#8203;5572](https://redirect.github.com/teslamate-org/teslamate/issues/5572) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): update flake.lock ([#&#8203;5560](https://redirect.github.com/teslamate-org/teslamate/issues/5560))
- build(deps-dev): bump sass from 1.101.0 to 1.102.0 in /assets ([#&#8203;5566](https://redirect.github.com/teslamate-org/teslamate/issues/5566))
- build(deps): bump leaflet-control-geocoder from 3.3.1 to 4.0.0 in /assets ([#&#8203;5565](https://redirect.github.com/teslamate-org/teslamate/issues/5565))

##### Dashboards

- feat(grafana): make data health summary actionable ([#&#8203;5526](https://redirect.github.com/teslamate-org/teslamate/issues/5526) - [@&#8203;magrathean-uk](https://redirect.github.com/magrathean-uk))
- fix(grafana): drop the Releases panel from the home dashboard to end the CORS proxy dependency ([#&#8203;5548](https://redirect.github.com/teslamate-org/teslamate/issues/5548) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(dashboards): filter latest-value position panels on complete rows so they use the partial index ([#&#8203;5438](https://redirect.github.com/teslamate-org/teslamate/issues/5438) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- fix(grafana): Battery Health latest SOC/kWh panels pick the newest UNION row and use `usable_battery_level` on charges ([#&#8203;5438](https://redirect.github.com/teslamate-org/teslamate/issues/5438) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- fix(grafana): use local calendar for Statistics period end boundaries ([#&#8203;5562](https://redirect.github.com/teslamate-org/teslamate/issues/5562) - [@&#8203;wjsall](https://redirect.github.com/wjsall))
- fix(charge-details): keep power panel in sync with the energy integration ([#&#8203;5592](https://redirect.github.com/teslamate-org/teslamate/issues/5592) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))

##### Translations

- i18n: add Hungarian translation ([#&#8203;5480](https://redirect.github.com/teslamate-org/teslamate/issues/5480) - [@&#8203;magrathean-uk](https://redirect.github.com/magrathean-uk))
- i18n: improve Traditional Chinese translations ([#&#8203;5527](https://redirect.github.com/teslamate-org/teslamate/issues/5527) - [@&#8203;occultsound](https://redirect.github.com/occultsound))

##### Documentation

- docs: update security policy to emphasize network-level protection ([27172cba](https://redirect.github.com/teslamate-org/teslamate/commit/27172cba54782f9a8eb7fdd9ea3a481dfd9d8f2b) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- docs: fix typo in DATABASE\_SSL\_SNI description ([#&#8203;5346](https://redirect.github.com/teslamate-org/teslamate/issues/5346) - [@&#8203;dashitongzhi](https://redirect.github.com/dashitongzhi))
- docs: update upgrading instructions to emphasize backup before updating more clearly ([#&#8203;5453](https://redirect.github.com/teslamate-org/teslamate/issues/5453) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- docs(mqtt): add service mode topic to MQTT integration documentation ([#&#8203;5472](https://redirect.github.com/teslamate-org/teslamate/issues/5472) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- docs: update star history chart links to new format in README ([#&#8203;5482](https://redirect.github.com/teslamate-org/teslamate/issues/5482) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- docs: update star history links in README with to include the now needed sealed token ([#&#8203;5489](https://redirect.github.com/teslamate-org/teslamate/issues/5489) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- docs: link directly to restore section in upgrading PostgreSQL guide ([#&#8203;5501](https://redirect.github.com/teslamate-org/teslamate/issues/5501) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- docs: split the backup and restore guides into two separate guides and highlight that you should transfer your backup of the host ([#&#8203;5502](https://redirect.github.com/teslamate-org/teslamate/issues/5502) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- docs: point Tesla Auth users to fixed releases ([#&#8203;5509](https://redirect.github.com/teslamate-org/teslamate/issues/5509) - [@&#8203;magrathean-uk](https://redirect.github.com/magrathean-uk))
- docs: add TeslaMate Dash to the projects page ([#&#8203;5494](https://redirect.github.com/teslamate-org/teslamate/issues/5494) - [@&#8203;gmaslowski](https://redirect.github.com/gmaslowski))

[complete changelog](https://redirect.github.com/teslamate-org/teslamate/compare/v4.0.1...v4.1.0)

---

## Add-on Release Notes




## What's Changed
* Update actions/checkout action to v7 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/145
* Configure Renovate to pin GitHub Actions to SHAs by @lildude in https://github.com/lildude/ha-addon-teslamate/pull/147
* Update and improve dev env, testing, building and publishing by @lildude in https://github.com/lildude/ha-addon-teslamate/pull/143
* Update softprops/action-gh-release action to v3.0.2 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/148
* Update actions/checkout action to v7.0.1 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/149
* Update integration tests and update dev environment by @lildude in https://github.com/lildude/ha-addon-teslamate/pull/152
* Update frenck/action-addon-linter action to v2.21.1 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/151
* Update TeslaMate to v4.1.1 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/150


**Full Changelog**: https://github.com/lildude/ha-addon-teslamate/compare/v2.5.0...v2.6.0
