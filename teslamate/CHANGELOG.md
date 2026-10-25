## TeslaMate Release Notes

### [`v4.4.0`](https://redirect.github.com/teslamate-org/teslamate/releases/tag/v4.4.0)

[Compare Source](https://redirect.github.com/teslamate-org/teslamate/compare/v4.3.0...v4.4.0)

The certificate authority eMudhra generated the private keys of eight of its intermediate CAs incorrectly, so anyone can recover them from the certificates ([incident report](https://bugzilla.mozilla.org/show_bug.cgi?id=2083449)). TeslaMate no longer trusts these CAs, so they cannot be used to impersonate the Tesla streaming API or your MQTT broker ([#&#8203;5882](https://redirect.github.com/teslamate-org/teslamate/issues/5882)).
The Docker image now ships the CA certificates, so time zone updates download again ([#&#8203;5808](https://redirect.github.com/teslamate-org/teslamate/issues/5808)), and we use the latest Grafana (13.2.4) with its security fixes.

While driving, the car summary and MQTT now show the newest value of stream and poll, so values such as the odometer no longer step back and Home Assistant no longer logs "state is not strictly increasing".
The Visited dashboard lists the countries and cities each car stopped or charged in, with a day-by-day view per city, and the Temperatures dashboard shows averages over the selected range instead of empty tiles. The charging dashboards label the charger values as AC input and hide them during DC fast charging, and the SuC Charging Cost panel classifies each session by all of its charges, not only the last one.
Creating, changing or deleting a geofence now re-assigns drives and charges by their actual distance from it, and changing only a geofence's name or costs no longer re-assigns them at all, so saving no longer times out on large databases.
Maps appear sooner and on phones the footer stays clear of the system gesture area.

**Note for MQTT users:** A value the car reports as missing is now published as an empty [MQTT topic](https://docs.teslamate.org/docs/integrations/mqtt#mqtt-topics), e.g. `speed` and `shift_state` once the car is switched off; before, the last value stayed. The car summary in the web UI shows it empty as well. A topic the car has not reported since TeslaMate started is no longer cleared, so its retained value stays. While TeslaMate runs, the `odometer` never decreases and is never published empty.

To make your TeslaMate experience even better, we have made 68 improvements.

Enjoy!

##### Improvements and bug fixes

- feat: use Grafana 13.2.3 ([#&#8203;5803](https://redirect.github.com/teslamate-org/teslamate/issues/5803) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- fix(docker): install the CA certificates, so Tzdata can verify TLS and download time zone updates ([#&#8203;5808](https://redirect.github.com/teslamate-org/teslamate/issues/5808) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix: use the position's latitude when re-assigning drives and charges to geofences ([#&#8203;5820](https://redirect.github.com/teslamate-org/teslamate/issues/5820) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix: re-assign drives and charges only when a geofence's location or radius changes ([#&#8203;5823](https://redirect.github.com/teslamate-org/teslamate/issues/5823) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- perf(web): connect to the map tile server early, so maps appear sooner ([#&#8203;5826](https://redirect.github.com/teslamate-org/teslamate/issues/5826) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(web): label cars without a name by their VIN in the settings, like the car summary ([#&#8203;5821](https://redirect.github.com/teslamate-org/teslamate/issues/5821) - [@&#8203;TUNER88](https://redirect.github.com/TUNER88))
- fix(web): label cars without a name by their VIN on the charge cost page and in the vehicle reload hint, like the car summary ([#&#8203;5827](https://redirect.github.com/teslamate-org/teslamate/issues/5827) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(vehicle): show the newest value of stream and poll in the car summary and on MQTT, so values such as the odometer no longer step back while driving ([#&#8203;5864](https://redirect.github.com/teslamate-org/teslamate/issues/5864) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- feat: use Grafana 13.2.4 ([#&#8203;5883](https://redirect.github.com/teslamate-org/teslamate/issues/5883) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(web): keep the footer out of the phone's system gesture area and stop the page from scrolling past the screen on phones ([#&#8203;5884](https://redirect.github.com/teslamate-org/teslamate/issues/5884) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))

##### Build, CI, internal

- fix: read TeslaMate's version from one module so a VERSION bump cannot leave a stale copy ([#&#8203;5804](https://redirect.github.com/teslamate-org/teslamate/issues/5804) - [@&#8203;swiffer](https://redirect.github.com/swiffer), [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): update flake.lock ([#&#8203;5822](https://redirect.github.com/teslamate-org/teslamate/issues/5822))
- build(deps): bump localize from 1.2.0 to 1.3.0 in /elixir ([#&#8203;5811](https://redirect.github.com/teslamate-org/teslamate/issues/5811))
- build(deps-dev): bump sass from 1.104.1 to 1.105.0 in /elixir/assets ([#&#8203;5812](https://redirect.github.com/teslamate-org/teslamate/issues/5812))
- build(deps): bump [@&#8203;geoman-io/leaflet-geoman-free](https://redirect.github.com/geoman-io/leaflet-geoman-free) from 2.20.1 to 2.20.2 in /elixir/assets ([#&#8203;5813](https://redirect.github.com/teslamate-org/teslamate/issues/5813))
- build(deps): bump phoenix from 1.8.14 to 1.8.15 in /elixir ([#&#8203;5814](https://redirect.github.com/teslamate-org/teslamate/issues/5814))
- build(deps): bump tzdata from 1.2.1 to 1.2.2 in /elixir ([#&#8203;5815](https://redirect.github.com/teslamate-org/teslamate/issues/5815))
- build(deps-dev): bump lazy_html from 0.1.12 to 0.1.13 in /elixir ([#&#8203;5816](https://redirect.github.com/teslamate-org/teslamate/issues/5816))
- build(deps): bump crate-ci/typos from 1.50.2 to 1.50.3 in the actions-deps group across 1 directory ([#&#8203;5817](https://redirect.github.com/teslamate-org/teslamate/issues/5817))
- build(deps): bump fast-uri from 3.1.7 to 3.1.8 in /website ([#&#8203;5824](https://redirect.github.com/teslamate-org/teslamate/issues/5824))
- build(deps): bump brace-expansion from 1.1.18 to 1.1.21 in /website ([#&#8203;5825](https://redirect.github.com/teslamate-org/teslamate/issues/5825))
- build(nix): add rustc and lldb to the devenv shell, so rust-analyzer finds the sysroot in every editor and Rust can be debugged ([#&#8203;5796](https://redirect.github.com/teslamate-org/teslamate/issues/5796) - [@&#8203;brianmay](https://redirect.github.com/brianmay))
- ci: run the Rust CI and the Nix hash check whenever one of their build inputs changes, not only rust/ and the mix files ([#&#8203;5828](https://redirect.github.com/teslamate-org/teslamate/issues/5828) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(nix): build with Erlang without wx and fetch the mix deps with the project's Elixir, which shrinks every Nix build by about 0.5 GiB ([#&#8203;5830](https://redirect.github.com/teslamate-org/teslamate/issues/5830) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- ci: run the NixOS module test ([#&#8203;5829](https://redirect.github.com/teslamate-org/teslamate/issues/5829) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(ci): keep the flake.lock and Nix hash workflows out of the other jobs' caches ([#&#8203;5831](https://redirect.github.com/teslamate-org/teslamate/issues/5831) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- feat(rust): add OpenTelemetry support, exporting logs, traces and metrics over OTLP ([aa563418](https://redirect.github.com/teslamate-org/teslamate/commit/aa5634188b369e4ca6402b4811c7c8a48bd658d7) - [@&#8203;brianmay](https://redirect.github.com/brianmay))
- refactor(rust): prefix the OTLP command line options with `otlp-` ([428eb491](https://redirect.github.com/teslamate-org/teslamate/commit/428eb491eea01852dbc5f9d45f08f2c05ccbe17f) - [@&#8203;brianmay](https://redirect.github.com/brianmay))
- fix(rust): make the OTLP configuration values optional ([a22cbcba](https://redirect.github.com/teslamate-org/teslamate/commit/a22cbcba9d7d53b297533e2f001997d0634b5ba7) - [@&#8203;brianmay](https://redirect.github.com/brianmay))
- refactor(rust): require endpoint, username and password as soon as one OTLP value is set ([bbc95ce1](https://redirect.github.com/teslamate-org/teslamate/commit/bbc95ce1f95da17f937fda65c60d1c0860db6df0) - [@&#8203;brianmay](https://redirect.github.com/brianmay))
- style(rust): fix the formatting ([057270c1](https://redirect.github.com/teslamate-org/teslamate/commit/057270c1938e0714164b77004ecb6e349436915a) - [@&#8203;brianmay](https://redirect.github.com/brianmay))
- build(deps): bump the opentelemetry-rust group across 1 directory with 6 updates ([#&#8203;5833](https://redirect.github.com/teslamate-org/teslamate/issues/5833))
- refactor(rust): configure the OTLP export only through the standard OpenTelemetry environment variables, export each signal only when its endpoint is set, and drop the unused dependencies ([#&#8203;5835](https://redirect.github.com/teslamate-org/teslamate/issues/5835) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(db): align import_runs.car_id type with cars.id (smallint) ([#&#8203;5847](https://redirect.github.com/teslamate-org/teslamate/issues/5847) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- refactor(db): rename the range enum to preferred_range ([#&#8203;5860](https://redirect.github.com/teslamate-org/teslamate/issues/5860) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): bump finch from 0.23.0 to 0.24.0 in /elixir ([#&#8203;5832](https://redirect.github.com/teslamate-org/teslamate/issues/5832))
- build(deps): bump anchore/sbom-action from 0.24.2 to 0.24.3 in /.github/actions/build in the actions-deps group across 1 directory ([#&#8203;5834](https://redirect.github.com/teslamate-org/teslamate/issues/5834))
- build(deps): bump tokio from 1.53.1 to 1.53.3 in /rust ([#&#8203;5836](https://redirect.github.com/teslamate-org/teslamate/issues/5836))
- build(deps-dev): bump sass from 1.105.0 to 1.105.1 in /elixir/assets ([#&#8203;5837](https://redirect.github.com/teslamate-org/teslamate/issues/5837))
- build(deps): bump source-map-js from 1.2.1 to 1.2.2 in /elixir/assets ([#&#8203;5838](https://redirect.github.com/teslamate-org/teslamate/issues/5838))
- build(deps): bump proxy-addr from 2.0.7 to 2.0.8 in /website ([#&#8203;5839](https://redirect.github.com/teslamate-org/teslamate/issues/5839))
- build(deps): bump source-map-js from 1.2.1 to 1.2.2 in /website ([#&#8203;5840](https://redirect.github.com/teslamate-org/teslamate/issues/5840))
- build(deps): bump compression from 1.8.1 to 1.8.2 in /website ([#&#8203;5841](https://redirect.github.com/teslamate-org/teslamate/issues/5841))
- build(deps): bump shell-quote from 1.10.0 to 1.12.0 in /website ([#&#8203;5842](https://redirect.github.com/teslamate-org/teslamate/issues/5842))
- build(deps): bump joi from 17.13.7 to 17.13.8 in /website ([#&#8203;5843](https://redirect.github.com/teslamate-org/teslamate/issues/5843))
- build(nix): drop x86_64-darwin, which devenv's nixpkgs no longer supports ([#&#8203;5879](https://redirect.github.com/teslamate-org/teslamate/issues/5879) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): update flake.lock ([#&#8203;5850](https://redirect.github.com/teslamate-org/teslamate/issues/5850))
- build(nix): regenerate treefmt.toml for the updated treefmt-nix ([#&#8203;5850](https://redirect.github.com/teslamate-org/teslamate/issues/5850) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): bump follow-redirects from 1.16.0 to 1.16.1 in /website ([#&#8203;5876](https://redirect.github.com/teslamate-org/teslamate/issues/5876))
- build(deps): bump launch-editor from 2.14.1 to 2.14.2 in /website ([#&#8203;5878](https://redirect.github.com/teslamate-org/teslamate/issues/5878))
- build(deps): distrust the compromised eMudhra intermediate CAs ([#&#8203;5882](https://redirect.github.com/teslamate-org/teslamate/issues/5882) - [@&#8203;marsavela](https://redirect.github.com/marsavela))
- fix: update the gettext POT file for the moved layout lines ([06149aab](https://redirect.github.com/teslamate-org/teslamate/commit/06149aab33354102eeb53259176c3a01da99ad86) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix: update the PO file references for the moved layout lines ([68ca04be](https://redirect.github.com/teslamate-org/teslamate/commit/68ca04be658aeda4288a205e26bdf6a2f31f23b3) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- ci(typos): skip GitHub handles in Markdown, so contributor names never fail the spell check ([fbf78c1c](https://redirect.github.com/teslamate-org/teslamate/commit/fbf78c1c5e17cb219019a58d2d29afa3c7ae7e07) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): bump react and react-dom from 19.3.0 to 19.3.1 in /website ([#&#8203;5887](https://redirect.github.com/teslamate-org/teslamate/issues/5887))
- build(deps): bump the actions-deps group across 3 directories with 6 updates ([#&#8203;5894](https://redirect.github.com/teslamate-org/teslamate/issues/5894))
- build(deps): bump phoenix_live_view from 1.2.12 to 1.2.13 in /elixir ([#&#8203;5888](https://redirect.github.com/teslamate-org/teslamate/issues/5888))
- build(deps): bump tesla from 1.21.3 to 1.22.0 in /elixir ([#&#8203;5890](https://redirect.github.com/teslamate-org/teslamate/issues/5890))
- build(deps-dev): bump sass from 1.105.1 to 1.105.2 in /elixir/assets ([#&#8203;5889](https://redirect.github.com/teslamate-org/teslamate/issues/5889))
- build(deps): bump the opentelemetry-rust group in /rust with 5 updates ([#&#8203;5892](https://redirect.github.com/teslamate-org/teslamate/issues/5892))

##### Dashboards

- feat(grafana): list the countries and cities each car stopped or charged in on the Visited dashboard, with a day-by-day view per city ([#&#8203;5859](https://redirect.github.com/teslamate-org/teslamate/issues/5859) - [@&#8203;jheredianet](https://redirect.github.com/jheredianet))
- feat(grafana): replace the Temperatures dashboard's empty last-value tiles with averages over the selected range ([#&#8203;5858](https://redirect.github.com/teslamate-org/teslamate/issues/5858) - [@&#8203;jheredianet](https://redirect.github.com/jheredianet))
- fix(grafana): classify sessions in the Charging Stats SuC Charging Cost panel by all their charges, not the last one ([#&#8203;5885](https://redirect.github.com/teslamate-org/teslamate/issues/5885) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(grafana): label charger values as AC input and hide them during DC fast charging ([#&#8203;5866](https://redirect.github.com/teslamate-org/teslamate/issues/5866) - [@&#8203;SomSamantray](https://redirect.github.com/SomSamantray), [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))

##### Translations

- i18n(it): complete Italian web UI translations ([#&#8203;5875](https://redirect.github.com/teslamate-org/teslamate/issues/5875) - [@&#8203;SiNaPsEr0x](https://redirect.github.com/SiNaPsEr0x))

##### Documentation

- docs(mqtt): describe the Home Assistant discovery cleanup on every start while discovery is disabled ([#&#8203;5845](https://redirect.github.com/teslamate-org/teslamate/issues/5845) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- docs(home-assistant): use the binary_sensor domain for the parking brake entity id ([#&#8203;5861](https://redirect.github.com/teslamate-org/teslamate/issues/5861) - [@&#8203;Bascht74](https://redirect.github.com/Bascht74))
- docs(install): require Elixir 1.19+ on Erlang/OTP 28+ in the manual install guides, install it with mise on Debian ([#&#8203;5877](https://redirect.github.com/teslamate-org/teslamate/issues/5877) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))

[complete changelog](https://redirect.github.com/teslamate-org/teslamate/compare/v4.3.0...v4.4.0)

---

## Add-on Release Notes




## What's Changed
* Update softprops/action-gh-release action to v3.0.3 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/154
* Update TeslaMate to v4.4.0 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/156


**Full Changelog**: https://github.com/lildude/ha-addon-teslamate/compare/v2.8.0...v2.9.0
