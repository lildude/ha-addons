## TeslaMate Release Notes

### [`v4.3.0`](https://redirect.github.com/teslamate-org/teslamate/releases/tag/v4.3.0)

[Compare Source](https://redirect.github.com/teslamate-org/teslamate/compare/v4.2.0...v4.3.0)

The vehicle display order can now be edited on the settings page, a new dashboard shows historical temperatures, and we use the latest Grafana (13.2.2).
When a car is assigned to the Tesla account while TeslaMate is running, you no longer need to restart TeslaMate: a reload button starts logging the car.
The geo-fence links in the Grafana dashboards now open in the same tab, so the Back button returns to the dashboard and the Grafana URL is detected automatically again.

Under the hood, this release adds a self-verifying black-box characterization suite: recorded API sequences replay through the real vehicle state machine, and everything that leaves the system — database rows, MQTT messages, and the vehicle's interactions with the streaming API and its supervisor — is compared against known-good results with 93.9 % coverage.
It is the basis for the upcoming rework of the state machine and the Rust rewrite, and writing it already uncovered three bugs, all fixed in this release ([#&#8203;5656](https://redirect.github.com/teslamate-org/teslamate/issues/5656), [#&#8203;5684](https://redirect.github.com/teslamate-org/teslamate/issues/5684), [#&#8203;5693](https://redirect.github.com/teslamate-org/teslamate/issues/5693)). Five more findings ([#&#8203;5699](https://redirect.github.com/teslamate-org/teslamate/issues/5699), [#&#8203;5714](https://redirect.github.com/teslamate-org/teslamate/issues/5714), [#&#8203;5716](https://redirect.github.com/teslamate-org/teslamate/issues/5716), [#&#8203;5718](https://redirect.github.com/teslamate-org/teslamate/issues/5718), [#&#8203;5742](https://redirect.github.com/teslamate-org/teslamate/issues/5742)) sit in code the rework replaces, so they are fixed there instead of patched twice.

**Note for Home Assistant MQTT discovery users:** TeslaMate no longer re-runs the discovery migration on every restart, which briefly removed and recreated entities. Instead it clears the former per-entity topics and republishes the device config; Home Assistant logs one harmless "conflicting MQTT discovery message" warning per legacy topic after each restart, entities are untouched.
Upgrading directly from 4.1.x no longer preserves entity registry customizations — see the [docs](https://docs.teslamate.org/docs/integrations/home_assistant#mqtt-discovery-automatic-configuration).

To make your TeslaMate experience even better, we have made 120 improvements.

Enjoy!

##### New features

- feat(webview): make the vehicle display order editable on the settings page ([#&#8203;5741](https://redirect.github.com/teslamate-org/teslamate/issues/5741) - [@&#8203;wooter](https://redirect.github.com/wooter))
- feat(web): explain why no vehicle is logged and offer a reload button that starts loggers for vehicles added to the Tesla account, instead of requiring a restart ([#&#8203;5710](https://redirect.github.com/teslamate-org/teslamate/issues/5710) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- feat(web): show the copyright, license and no-warranty notice in the footer, with the NOTICE and LICENSE of the running version ([#&#8203;5779](https://redirect.github.com/teslamate-org/teslamate/issues/5779) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))

##### Improvements and bug fixes

- fix(vehicle): cancel an update with the logged update row instead of the API payload, which crashed the vehicle process and left the update open forever ([#&#8203;5664](https://redirect.github.com/teslamate-org/teslamate/issues/5664) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(web): remove stray brace from the direction arrow SVG path, which made Safari log a parse error on every position update ([#&#8203;5665](https://redirect.github.com/teslamate-org/teslamate/issues/5665) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- refactor(vehicle): route the vehicle's view of time through a clock seam ([#&#8203;5688](https://redirect.github.com/teslamate-org/teslamate/issues/5688) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- refactor(vehicle): date timestamp-less state rows through the clock seam ([#&#8203;5689](https://redirect.github.com/teslamate-org/teslamate/issues/5689) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(vehicle): keep logging when the car reports an outdated timestamp after being offline or asleep — previously the vehicle process crashed on every poll and the state stayed stuck ([#&#8203;5692](https://redirect.github.com/teslamate-org/teslamate/issues/5692) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- feat: use Grafana 13.2.1 ([#&#8203;5694](https://redirect.github.com/teslamate-org/teslamate/issues/5694) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- fix(mqtt): stop re-running the Home Assistant discovery migration on every restart ([#&#8203;5685](https://redirect.github.com/teslamate-org/teslamate/issues/5685) - [@&#8203;nebhale](https://redirect.github.com/nebhale))
- fix(vehicle): keep the published state start time from jumping backwards after charging, updating or driving ([#&#8203;5706](https://redirect.github.com/teslamate-org/teslamate/issues/5706) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(web): pin the size of Leaflet's SVG overlay so the vehicle arrow and geofence circle stay on the map at any Safari page zoom ([#&#8203;5666](https://redirect.github.com/teslamate-org/teslamate/issues/5666) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(grafana): open the TeslaMate header link in a new tab so it works when Grafana and TeslaMate share an origin ([#&#8203;5626](https://redirect.github.com/teslamate-org/teslamate/issues/5626) - [@&#8203;misenhower](https://redirect.github.com/misenhower))
- fix(web): make the Back button return to the Grafana dashboard and detect the Grafana URL despite origin-only referrers ([#&#8203;5709](https://redirect.github.com/teslamate-org/teslamate/issues/5709) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- refactor(vehicle): simplify the state machine: plain atom states, DB records moved into the state data ([#&#8203;5259](https://redirect.github.com/teslamate-org/teslamate/issues/5259) - [@&#8203;brianmay](https://redirect.github.com/brianmay), [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- feat: use Grafana 13.2.2 ([#&#8203;5744](https://redirect.github.com/teslamate-org/teslamate/issues/5744) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- fix(web): send the referrer and show the OpenStreetMap attribution on map tiles, so tiles load behind reverse proxies that set a stricter referrer policy such as same-origin or no-referrer and TeslaMate complies with the OSM tile usage policy ([#&#8203;5765](https://redirect.github.com/teslamate-org/teslamate/issues/5765) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(web): show VIN and trim tooltips below the car title on mobile, so they no longer get cut off at the left edge ([#&#8203;5774](https://redirect.github.com/teslamate-org/teslamate/issues/5774) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- legal: add NOTICE and state AGPL-3.0-or-later consistently ([#&#8203;5777](https://redirect.github.com/teslamate-org/teslamate/issues/5777) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- legal: rewrite the trademark policy with definitions and an exhaustive list of permitted uses ([#&#8203;5777](https://redirect.github.com/teslamate-org/teslamate/issues/5777) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(auth): no longer follow redirects when refreshing the token, so the refresh token and the fleet token are never sent to another host ([#&#8203;5781](https://redirect.github.com/teslamate-org/teslamate/issues/5781) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(auth): tell rejected tokens apart from every other refresh failure, so the sign-in page names the actual cause ([#&#8203;5781](https://redirect.github.com/teslamate-org/teslamate/issues/5781) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(web): report a sign-in that exits instead of crashing the sign-in page ([#&#8203;5781](https://redirect.github.com/teslamate-org/teslamate/issues/5781) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(auth): keep credentials out of the log, even on the debug level ([#&#8203;5782](https://redirect.github.com/teslamate-org/teslamate/issues/5782) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- feat(web): skip the modal animation when the system asks for reduced motion, with own fade and scale CSS ([#&#8203;5784](https://redirect.github.com/teslamate-org/teslamate/issues/5784) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(geocoder): fill the address fields by Nominatim's address ranks ([#&#8203;5785](https://redirect.github.com/teslamate-org/teslamate/issues/5785) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- legal: declare copyright and license of every file in REUSE.toml and check REUSE compliance in CI ([#&#8203;5789](https://redirect.github.com/teslamate-org/teslamate/issues/5789) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- legal: add the MIT notice to NOTICE for earlier contributions the relicensing does not cover ([#&#8203;5789](https://redirect.github.com/teslamate-org/teslamate/issues/5789) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- style: spell the name as TeslaMate throughout, including the creator of GPX exports ([#&#8203;5798](https://redirect.github.com/teslamate-org/teslamate/issues/5798) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(docker): start with a PostgreSQL that is reachable only through its Unix socket ([#&#8203;5800](https://redirect.github.com/teslamate-org/teslamate/issues/5800) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))

##### Build, CI, internal

- test: add characterization harness replaying API fixtures against persisted rows and MQTT ([#&#8203;5653](https://redirect.github.com/teslamate-org/teslamate/issues/5653) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- test(characterization): convert driving scenarios to characterization fixtures ([#&#8203;5654](https://redirect.github.com/teslamate-org/teslamate/issues/5654) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- test(characterization): convert charging scenarios to characterization fixtures ([#&#8203;5655](https://redirect.github.com/teslamate-org/teslamate/issues/5655) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- test(characterization): convert updating scenarios to characterization fixtures. Pins the update-cancel crash ([#&#8203;5656](https://redirect.github.com/teslamate-org/teslamate/issues/5656)) that mock-based tests could not see ([#&#8203;5658](https://redirect.github.com/teslamate-org/teslamate/issues/5658) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- test(characterization): convert streaming scenarios to characterization fixtures ([#&#8203;5668](https://redirect.github.com/teslamate-org/teslamate/issues/5668) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(test): give the error\_event selftest a settled terminal cycle ([#&#8203;5670](https://redirect.github.com/teslamate-org/teslamate/issues/5670) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(test): move the offline-resume scenario off the 15-minute boundary ([#&#8203;5681](https://redirect.github.com/teslamate-org/teslamate/issues/5681) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- test(characterization): enforce the two-call-terminal limit ([#&#8203;5683](https://redirect.github.com/teslamate-org/teslamate/issues/5683) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- test(characterization): convert suspend\_logging scenarios to characterization fixtures ([#&#8203;5687](https://redirect.github.com/teslamate-org/teslamate/issues/5687) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- test(characterization): run replays on a scenario clock, retire timebase ([#&#8203;5690](https://redirect.github.com/teslamate-org/teslamate/issues/5690) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- test(characterization): pin the stale-timestamp resume crash ([#&#8203;5691](https://redirect.github.com/teslamate-org/teslamate/issues/5691) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- test(characterization): convert suspend scenarios to characterization fixtures ([#&#8203;5695](https://redirect.github.com/teslamate-org/teslamate/issues/5695) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- test(characterization): convert summary scenarios to characterization fixtures ([#&#8203;5696](https://redirect.github.com/teslamate-org/teslamate/issues/5696) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- test(characterization): convert vehicle scenarios to characterization fixtures, add the update\_car\_settings call ([#&#8203;5697](https://redirect.github.com/teslamate-org/teslamate/issues/5697) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- test(characterization): convert the remaining vehicle scenarios — resume\_logging and summary calls, expect\_halt, seed positions, Vehicles stand-in ([#&#8203;5698](https://redirect.github.com/teslamate-org/teslamate/issues/5698) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- test(characterization): pin charge samples without charger\_power ([#&#8203;5700](https://redirect.github.com/teslamate-org/teslamate/issues/5700) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- test(characterization): pin stream connect/disconnect and the supervisor kill as golden interactions ([#&#8203;5704](https://redirect.github.com/teslamate-org/teslamate/issues/5704) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- test(characterization): name the scenario event behind a mismatch on a dated row ([#&#8203;5705](https://redirect.github.com/teslamate-org/teslamate/issues/5705) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): bump browserslist from 4.28.2 to 4.28.9 in /website ([#&#8203;5707](https://redirect.github.com/teslamate-org/teslamate/issues/5707))
- build(deps): bump fast-uri from 3.1.5 to 3.1.7 in /website ([#&#8203;5686](https://redirect.github.com/teslamate-org/teslamate/issues/5686))
- build(deps): bump http-proxy-middleware from 2.0.9 to 2.0.10 in /website ([#&#8203;5708](https://redirect.github.com/teslamate-org/teslamate/issues/5708))
- build(deps): update flake.lock ([#&#8203;5659](https://redirect.github.com/teslamate-org/teslamate/issues/5659))
- build(deps): bump the actions-deps group across 4 directories with 8 updates ([#&#8203;5679](https://redirect.github.com/teslamate-org/teslamate/issues/5679))
- build(deps): bump phoenix from 1.8.9 to 1.8.13 ([#&#8203;5672](https://redirect.github.com/teslamate-org/teslamate/issues/5672))
- build(deps): bump postgrex from 0.22.3 to 0.22.4 ([#&#8203;5673](https://redirect.github.com/teslamate-org/teslamate/issues/5673))
- build(deps-dev): bump sass from 1.102.0 to 1.103.1 in /assets ([#&#8203;5674](https://redirect.github.com/teslamate-org/teslamate/issues/5674))
- build(deps-dev): bump esbuild from 0.28.1 to 0.28.2 in /assets ([#&#8203;5675](https://redirect.github.com/teslamate-org/teslamate/issues/5675))
- build(deps): bump castore from 1.0.20 to 1.0.21 ([#&#8203;5676](https://redirect.github.com/teslamate-org/teslamate/issues/5676))
- build(deps): bump srtm from 0.8.0 to 0.9.0 ([#&#8203;5677](https://redirect.github.com/teslamate-org/teslamate/issues/5677))
- build(deps): bump phoenix\_live\_view from 1.2.8 to 1.2.11 ([#&#8203;5678](https://redirect.github.com/teslamate-org/teslamate/issues/5678))
- test(characterization): pin the pre-online check of the streaming API ([#&#8203;5712](https://redirect.github.com/teslamate-org/teslamate/issues/5712) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- test(characterization): pin the suspended state's resume, usage and inactive-stream paths ([#&#8203;5713](https://redirect.github.com/teslamate-org/teslamate/issues/5713) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- test(characterization): pin vehicle identification — model, trim and marketing name from vehicle\_config and VIN ([#&#8203;5715](https://redirect.github.com/teslamate-org/teslamate/issues/5715) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- test(characterization): pin payload edge cases — charge defaults of the offline charge inference and stream frames against a merged or timestamp-less last response ([#&#8203;5717](https://redirect.github.com/teslamate-org/teslamate/issues/5717) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- test(characterization): pin the power-usage suspend guard and service mode across an idle suspend ([#&#8203;5719](https://redirect.github.com/teslamate-org/teslamate/issues/5719) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- test(characterization): pin generic API errors while driving, charging and on the manual suspend fetch, the asleep/offline transitions and the polling doubling after resume\_logging ([#&#8203;5723](https://redirect.github.com/teslamate-org/teslamate/issues/5723) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): bump [@&#8203;swc/html](https://redirect.github.com/swc/html) from 1.15.46 to 1.16.2 in /website ([#&#8203;5720](https://redirect.github.com/teslamate-org/teslamate/issues/5720))
- build(deps): bump colord from 2.9.3 to 2.10.0 in /website ([#&#8203;5721](https://redirect.github.com/teslamate-org/teslamate/issues/5721))
- build(deps): bump js-yaml from 4.3.1 to 4.3.2 in /website ([#&#8203;5724](https://redirect.github.com/teslamate-org/teslamate/issues/5724))
- build(deps): bump svgo from 3.3.4 to 3.3.5 in /website ([#&#8203;5725](https://redirect.github.com/teslamate-org/teslamate/issues/5725))
- build(deps): bump joi from 17.13.4 to 17.13.7 in /website ([#&#8203;5726](https://redirect.github.com/teslamate-org/teslamate/issues/5726))
- test(characterization): pin settings toggles during charging and while parked; the harness call seam serves stream connect and disconnect ([#&#8203;5727](https://redirect.github.com/teslamate-org/teslamate/issues/5727) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- test(characterization): pin a charge inside a geofence — geofence\_id, per-kWh cost and the geofence topic ([#&#8203;5736](https://redirect.github.com/teslamate-org/teslamate/issues/5736) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- test(characterization): pin a drive in import mode — no address lookup, halt on import\_complete ([#&#8203;5737](https://redirect.github.com/teslamate-org/teslamate/issues/5737) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- test(characterization): add the too\_many\_request error form, seed.updates and per-scenario Home Assistant discovery to the harness, with first users ([#&#8203;5740](https://redirect.github.com/teslamate-org/teslamate/issues/5740) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- test(characterization): pin the reconnecting stream controls and the missing stream after a service visit ([#&#8203;5743](https://redirect.github.com/teslamate-org/teslamate/issues/5743) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- test(vehicle): make the store-position interval configurable and lock the state-machine field lifecycle with regression tests ([#&#8203;5259](https://redirect.github.com/teslamate-org/teslamate/issues/5259) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- refactor: move the Elixir application to `elixir/`, so the repository root is prepared for the Rust core next to it; tooling, CI and docs point at the new path ([#&#8203;5745](https://redirect.github.com/teslamate-org/teslamate/issues/5745) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- chore(ci): fix the shellcheck and untrusted-input findings from actionlint ([#&#8203;5759](https://redirect.github.com/teslamate-org/teslamate/issues/5759) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(ci): apply the OCI labels to the Grafana images ([#&#8203;5761](https://redirect.github.com/teslamate-org/teslamate/issues/5761) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(ci): pass the build action inputs through env and expressions ([#&#8203;5762](https://redirect.github.com/teslamate-org/teslamate/issues/5762) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): bump react and react-dom from 19.2.8 to 19.3.0 in /website ([#&#8203;5751](https://redirect.github.com/teslamate-org/teslamate/issues/5751))
- build(deps): bump nanoid from 3.3.16 to 3.3.19 in /website (5760)
- build(deps): bump the actions-deps group across 4 directories with 7 updates ([#&#8203;5758](https://redirect.github.com/teslamate-org/teslamate/issues/5758))
- build(deps): bump elixir from 1.20.2-otp-29 to 1.20.3-otp-29 ([#&#8203;5747](https://redirect.github.com/teslamate-org/teslamate/issues/5747))
- build(deps-dev): bump sass from 1.103.1 to 1.104.1 in /elixir/assets ([#&#8203;5749](https://redirect.github.com/teslamate-org/teslamate/issues/5749))
- build(deps): bump [@&#8203;geoman-io/leaflet-geoman-free](https://redirect.github.com/geoman-io/leaflet-geoman-free) from 2.20.0 to 2.20.1 in /elixir/assets (5750)
- build(deps-dev): bump phoenix\_live\_reload from 1.6.2 to 1.7.0 in /elixir ([#&#8203;5753](https://redirect.github.com/teslamate-org/teslamate/issues/5753))
- build(deps-dev): bump credo from 1.7.18 to 1.7.19 in /elixir ([#&#8203;5755](https://redirect.github.com/teslamate-org/teslamate/issues/5755))
- build(deps): bump ecto\_sql from 3.13.5 to 3.14.0 in /elixir ([#&#8203;5757](https://redirect.github.com/teslamate-org/teslamate/issues/5757))
- build(deps): update flake.lock ([#&#8203;5728](https://redirect.github.com/teslamate-org/teslamate/issues/5728))
- feat(rust): add the Rust core skeleton under rust/ — crate, CI with path routing, Nix package and devenv toolchain ([#&#8203;5703](https://redirect.github.com/teslamate-org/teslamate/issues/5703) - [@&#8203;brianmay](https://redirect.github.com/brianmay), [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(rust): choose Tokio as the async runtime ([#&#8203;5772](https://redirect.github.com/teslamate-org/teslamate/issues/5772) - [@&#8203;brianmay](https://redirect.github.com/brianmay))
- build(deps): bump tzdata from 1.1.4 to 1.2.1 in /elixir ([#&#8203;5771](https://redirect.github.com/teslamate-org/teslamate/issues/5771))
- build(deps): remove unused hackney lock entries after tzdata 1.2.1 ([#&#8203;5771](https://redirect.github.com/teslamate-org/teslamate/issues/5771) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): bump tesla from 1.20.0 to 1.21.3 in /elixir ([#&#8203;5767](https://redirect.github.com/teslamate-org/teslamate/issues/5767))
- build(deps): bump phoenix\_live\_view from 1.2.11 to 1.2.12 in /elixir ([#&#8203;5768](https://redirect.github.com/teslamate-org/teslamate/issues/5768))
- build(deps-dev): bump dialyxir from 1.4.7 to 1.4.8 in /elixir ([#&#8203;5769](https://redirect.github.com/teslamate-org/teslamate/issues/5769))
- build(deps): bump tortoise311 from 0.12.2 to 0.12.3 in /elixir ([#&#8203;5770](https://redirect.github.com/teslamate-org/teslamate/issues/5770))
- fix(test): restart cars\_id\_seq at suite start so smallint cars.id never overflows across local runs ([#&#8203;5773](https://redirect.github.com/teslamate-org/teslamate/issues/5773) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build: ship NOTICE and LICENSE in both images and both Nix packages, and declare AGPL-3.0-or-later in the Nix metadata ([#&#8203;5778](https://redirect.github.com/teslamate-org/teslamate/issues/5778) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): bump image-size from 2.0.2 to 2.0.4 in /website ([#&#8203;5783](https://redirect.github.com/teslamate-org/teslamate/issues/5783))
- test(geocoder): pin which address label fills which field, and in which order ([#&#8203;5785](https://redirect.github.com/teslamate-org/teslamate/issues/5785) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- test(geocoder): pin the address fields of 19 recorded Nominatim addresses ([#&#8203;5785](https://redirect.github.com/teslamate-org/teslamate/issues/5785) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build: stop building the Grafana image for ARMv7, which is no longer supported ([#&#8203;5788](https://redirect.github.com/teslamate-org/teslamate/issues/5788) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): update flake.lock ([#&#8203;5790](https://redirect.github.com/teslamate-org/teslamate/issues/5790))
- feat(rust): read the configuration from environment variables and take the version from the VERSION file ([#&#8203;5776](https://redirect.github.com/teslamate-org/teslamate/issues/5776) - [@&#8203;brianmay](https://redirect.github.com/brianmay), [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(nix): trim the VERSION file for the Elixir package, so a trailing newline no longer ends up in its name ([#&#8203;5776](https://redirect.github.com/teslamate-org/teslamate/issues/5776) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- fix(test): mask TeslaMate's version in the discovery goldens, so a release no longer breaks the characterization tests ([#&#8203;5802](https://redirect.github.com/teslamate-org/teslamate/issues/5802) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))

##### Dashboards

- feat(grafana): add `total` period to the Statistics dashboard for one aggregated row over the selected time range ([#&#8203;5680](https://redirect.github.com/teslamate-org/teslamate/issues/5680) - [@&#8203;micku7zu](https://redirect.github.com/micku7zu))
- fix(grafana): count asleep/offline states that cross a parking boundary in the vampire drain standby time ([#&#8203;5729](https://redirect.github.com/teslamate-org/teslamate/issues/5729) - [@&#8203;rewse](https://redirect.github.com/rewse))
- fix(grafana): fall back to the neighbourhood where an address has no city ([#&#8203;5785](https://redirect.github.com/teslamate-org/teslamate/issues/5785) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- feat(grafana): add a new dashboard showing historical temperatures ([#&#8203;5457](https://redirect.github.com/teslamate-org/teslamate/issues/5457) - [@&#8203;slayer01](https://redirect.github.com/slayer01))

##### Translations

- fix(i18n): translate the import page, the car summary, the car order setting and the validation errors into German ([#&#8203;5786](https://redirect.github.com/teslamate-org/teslamate/issues/5786) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))

##### Documentation

- docs: add AI-assisted contribution policy and Grafana dashboard notes ([#&#8203;5578](https://redirect.github.com/teslamate-org/teslamate/issues/5578) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- docs(faq): explain how to add a car that shows up in the Tesla account after start-up and reorder the entries ([#&#8203;5766](https://redirect.github.com/teslamate-org/teslamate/issues/5766) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- docs: declare MQTT the only supported integration surface; database and web routes are internal ([#&#8203;5775](https://redirect.github.com/teslamate-org/teslamate/issues/5775) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- docs: list the web interface languages with their English fallback, and show the Trendshift ranking under Popularity ([#&#8203;5780](https://redirect.github.com/teslamate-org/teslamate/issues/5780) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- docs: state that the image SBOM lists only the Debian packages and the Erlang and Elixir runtime, and why ([#&#8203;5787](https://redirect.github.com/teslamate-org/teslamate/issues/5787) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- docs: remove the outdated entity relationship model from the development docs ([#&#8203;5801](https://redirect.github.com/teslamate-org/teslamate/issues/5801) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))

[complete changelog](https://redirect.github.com/teslamate-org/teslamate/compare/v4.2.0...v4.3.0)

---

## Add-on Release Notes




## What's Changed
* Update TeslaMate to v4.3.0 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/155


**Full Changelog**: https://github.com/lildude/ha-addon-teslamate/compare/v2.7.0...v2.8.0
