## TeslaMate Release Notes

### [`v3.0.0`](https://github.com/teslamate-org/teslamate/blob/HEAD/CHANGELOG.md#300---2026-02-28)

[Compare Source](https://redirect.github.com/teslamate-org/teslamate/compare/v2.2.0...v3.0.0)

Let's start with a quote: "Why do programmers like dark mode? Because light attracts bugs.". Yes, you read that right. TeslaMate Webview now has a dark mode.

As always, lots of improvements have been made. Memory usage has been reduced, while performance has been increased — it sounds too good to be true, but it's the reality.
Battery heating is now also shown on the overview dashboard, and the drives dashboard now always shows the consumption.
To make your TeslaMate experience even better, we have also made more than 52 other improvements.

Enjoy!

### 📄 License Change Notice

As of PR [#&#8203;5131](https://redirect.github.com/teslamate-org/teslamate/issues/5131), TeslaMate has transitioned from the MIT License to the GNU Affero General Public License v3.0 (AGPLv3).

What does this mean for you?

- For Private Users: Nothing changes. You can continue to use, host, and modify TeslaMate for your personal use for free, just as before.
- For the Community: This change ensures that TeslaMate remains open and free. It prevents companies from taking the community's hard work and turning it into a closed-source commercial service without giving back.
- For Developers: If you modify or use TeslaMate, you must now share your source code modifications under the same license.

We believe this step is necessary to protect the project from exploitation and to ensure its long-term sustainability.

### New features

- feat: add optional dark mode feature ([#&#8203;5065](https://redirect.github.com/teslamate-org/teslamate/issues/5065) - [@&#8203;wooter](https://redirect.github.com/wooter))
- legal: relicense under AGPLv3 ([#&#8203;5131](https://redirect.github.com/teslamate-org/teslamate/issues/5131) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- legal: add Trademark notice ([#&#8203;5131](https://redirect.github.com/teslamate-org/teslamate/issues/5131) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- feat: use Bulma 1 for dark theme and revised it ([#&#8203;5112](https://redirect.github.com/teslamate-org/teslamate/issues/5112) - [@&#8203;swiffer](https://redirect.github.com/swiffer))

### Improvements and bug fixes

- feat: use Logger instead of IO.puts in DB check ([#&#8203;5050](https://redirect.github.com/teslamate-org/teslamate/issues/5050) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- feat: Increase max_header_value_length to support oauth2-proxy ([#&#8203;5031](https://redirect.github.com/teslamate-org/teslamate/issues/5031) - [@&#8203;ultravail](https://redirect.github.com/ultravail))
- perf: Replace positions indexes from BTREE to BRIN to reduce memory usage ([#&#8203;5075](https://redirect.github.com/teslamate-org/teslamate/issues/5075) - [@&#8203;ilya-y-synth](https://redirect.github.com/ilya-y-synth))
- feat(grafana): disable update checks as version is handled via docker image ([#&#8203;5115](https://redirect.github.com/teslamate-org/teslamate/issues/5115) - [@&#8203;fatbasstard](https://redirect.github.com/fatbasstard))
- perf: use static asset compression via brotli and zstandard to enhance HTTP Compression ([#&#8203;5113](https://redirect.github.com/teslamate-org/teslamate/issues/5113) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- feat: use Grafana 12.4.0 ([#&#8203;4965](https://redirect.github.com/teslamate-org/teslamate/issues/4965) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- fix(vehicle): update state transition to handle offline scenario after a drive end with no network ([#&#8203;5152](https://redirect.github.com/teslamate-org/teslamate/issues/5152) - [@&#8203;jlestel](https://redirect.github.com/jlestel))

#### Build, CI, internal

- build(deps): bump mdast-util-to-hast from 13.2.0 to 13.2.1 in /website ([#&#8203;5059](https://redirect.github.com/teslamate-org/teslamate/issues/5059))
- build(deps): bump js-yaml from 3.14.1 to 3.14.2 in /website ([#&#8203;5043](https://redirect.github.com/teslamate-org/teslamate/issues/5043))
- build(deps): bump crate-ci/typos from 1.39.0 to 1.40.0 ([#&#8203;5055](https://redirect.github.com/teslamate-org/teslamate/issues/5055))
- build(deps): bump DeterminateSystems/update-flake-lock from 27 to 28 ([#&#8203;5056](https://redirect.github.com/teslamate-org/teslamate/issues/5056))
- build(deps): bump express from 4.21.2 to 4.22.1 in /website ([#&#8203;5060](https://redirect.github.com/teslamate-org/teslamate/issues/5060))
- build(deps): update flake.lock ([#&#8203;5027](https://redirect.github.com/teslamate-org/teslamate/issues/5027))
- fix(website): Bump node-forge to 1.3.3 to resolve CVE-2025-12816, CVE-2025-66030 and CVE-2025-66031 ([#&#8203;5071](https://redirect.github.com/teslamate-org/teslamate/issues/5071) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- chore(website): bump qs to fix CVE-2025-15284 ([#&#8203;5091](https://redirect.github.com/teslamate-org/teslamate/issues/5091) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): bump react and react-dom from 19.2.0 to 19.2.3 in /website ([#&#8203;5084](https://redirect.github.com/teslamate-org/teslamate/issues/5084))
- build(deps): bump nix-community/cache-nix-action from 6.1.3 to 7.0.0 ([#&#8203;5082](https://redirect.github.com/teslamate-org/teslamate/issues/5082))
- build(deps): bump actions/cache from 4.3.0 to 5.0.1 ([#&#8203;5077](https://redirect.github.com/teslamate-org/teslamate/issues/5077))
- build(deps): bump crate-ci/typos from 1.40.0 to 1.41.0 ([#&#8203;5079](https://redirect.github.com/teslamate-org/teslamate/issues/5079))
- build(deps): bump actions/stale from 10.1.0 to 10.1.1 ([#&#8203;5080](https://redirect.github.com/teslamate-org/teslamate/issues/5080))
- build(deps): bump lodash from 4.17.21 to 4.17.23 in /website ([#&#8203;5109](https://redirect.github.com/teslamate-org/teslamate/issues/5109))
- build(deps): bump lodash and geoman-io/leaflet-geoman-free in /assets ([#&#8203;5126](https://redirect.github.com/teslamate-org/teslamate/issues/5126))
- build(deps): bump react and react-dom from 19.2.3 to 19.2.4 in /website ([#&#8203;5124](https://redirect.github.com/teslamate-org/teslamate/issues/5124))
- build(deps): bump crate-ci/typos from 1.41.0 to 1.42.3 ([#&#8203;5123](https://redirect.github.com/teslamate-org/teslamate/issues/5123))
- build(deps): bump docker/login-action from 3.6.0 to 3.7.0 ([#&#8203;5119](https://redirect.github.com/teslamate-org/teslamate/issues/5119))
- build(deps): bump nix-community/cache-nix-action from 7.0.0 to 7.0.2 ([#&#8203;5122](https://redirect.github.com/teslamate-org/teslamate/issues/5122))
- build(deps): bump actions/cache from 5.0.1 to 5.0.3 ([#&#8203;5120](https://redirect.github.com/teslamate-org/teslamate/issues/5120))
- build(deps): bump webpack from 5.102.0 to 5.105.0 in /website ([#&#8203;5135](https://redirect.github.com/teslamate-org/teslamate/issues/5135))
- feat(nix): use nixos-25.11 ([#&#8203;5062](https://redirect.github.com/teslamate-org/teslamate/issues/5062) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- chore(nix): update flake.lock with new dependency revisions ([#&#8203;5062](https://redirect.github.com/teslamate-org/teslamate/issues/5062) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(nix): use elixir 1.19 to align with dockerfile ([#&#8203;5062](https://redirect.github.com/teslamate-org/teslamate/issues/5062) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- chore: reorganize CLI definition to avoid elixir 1.19 warning ([#&#8203;5062](https://redirect.github.com/teslamate-org/teslamate/issues/5062) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build: update db_connection to version 2.9.0 ([#&#8203;5062](https://redirect.github.com/teslamate-org/teslamate/issues/5062) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build: use Elixir 1.19.5 OTP 26 ([#&#8203;5130](https://redirect.github.com/teslamate-org/teslamate/issues/5130) - [@&#8203;swiffer,](https://redirect.github.com/swiffer,) [@&#8203;brianmay](https://redirect.github.com/brianmay) and [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): bump qs from 6.14.1 to 6.14.2 in /website ([#&#8203;5140](https://redirect.github.com/teslamate-org/teslamate/issues/5140))
- build(deps): update & bump mix deps ([#&#8203;5139](https://redirect.github.com/teslamate-org/teslamate/issues/5139) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- build(deps): bump ex_cldr from 2.42.0 to 2.46.0 ([#&#8203;5053](https://redirect.github.com/teslamate-org/teslamate/issues/5053) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): bump floki & gettext, remove override on ranch, require elixir 1.19 ([#&#8203;5142](https://redirect.github.com/teslamate-org/teslamate/issues/5142) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- feat(grafana-home-dashboard): change cors proxy ([#&#8203;5143](https://redirect.github.com/teslamate-org/teslamate/issues/5143) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- build(deps): update flake.lock ([#&#8203;5141](https://redirect.github.com/teslamate-org/teslamate/issues/5141))
- build(deps): relax requirement for elixir to allow 1.17+ and clarify what is supported ([#&#8203;5145](https://redirect.github.com/teslamate-org/teslamate/issues/5145) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- build(deps): update flake.lock ([#&#8203;5148](https://redirect.github.com/teslamate-org/teslamate/issues/5148))
- build(deps): update flake.lock ([#&#8203;5154](https://redirect.github.com/teslamate-org/teslamate/issues/5154))
- build(deps): bump ajv in /website ([#&#8203;5149](https://redirect.github.com/teslamate-org/teslamate/issues/5149))
- chore(website): bump mimimatch to version 3.1.5 to solve CVE-2026-26996, CVE-2026-27903 and CVE-2026-27904 ([#&#8203;5155](https://redirect.github.com/teslamate-org/teslamate/issues/5155) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- chore(website): bump serialize-javascript to version 7.0.3 to solve CWE-96 ([#&#8203;5156](https://redirect.github.com/teslamate-org/teslamate/issues/5156) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))

#### Dashboards

- feat(overview): show battery heating on overview dashboard as well ([#&#8203;5090](https://redirect.github.com/teslamate-org/teslamate/issues/5090) - [@&#8203;kaistian](https://redirect.github.com/kaistian))
- feat: optimize reduced_range query and always show consumption kwh in drives dashboard ([#&#8203;5089](https://redirect.github.com/teslamate-org/teslamate/issues/5089) - [@&#8203;swiffer](https://redirect.github.com/swiffer))

#### Translations

#### Documentation

- docs(traefik): update to v3.6 as 3.6.1 solves issues with docker 29.0 ([#&#8203;5034](https://redirect.github.com/teslamate-org/teslamate/issues/5034) - [@&#8203;JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- docs: fix the formatting of the `DATABASE_SOCKET_DIR` description ([#&#8203;5026](https://redirect.github.com/teslamate-org/teslamate/issues/5026) - [@&#8203;IngmarStein](https://redirect.github.com/IngmarStein))
- docs: fix external image rendering with Traefik SSL ([#&#8203;5074](https://redirect.github.com/teslamate-org/teslamate/issues/5074) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- docs(home_assistant): default tesla_active_route_distance_to_arrival sensor to kilometers ([#&#8203;5086](https://redirect.github.com/teslamate-org/teslamate/issues/5086) - [@&#8203;kenni](https://redirect.github.com/kenni))
- docs: Remove hints to now deprecated Grafana VS Code Extension in contribution guide ([#&#8203;5110](https://redirect.github.com/teslamate-org/teslamate/issues/5110) - [@&#8203;swiffer](https://redirect.github.com/swiffer))
- docs: Add reference to TeslaMate Achievements ([#&#8203;5134](https://redirect.github.com/teslamate-org/teslamate/issues/5134) - [@&#8203;crstian19](https://redirect.github.com/crstian19))


---

## Add-on Release Notes




## What's Changed
* Update actions/checkout action to v5.0.1 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/118
* Update actions/checkout action to v6 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/119
* Update home-assistant/builder action to v2025.11.0 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/120
* Update softprops/action-gh-release action to v2.5.0 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/116
* Update actions/checkout action to v6.0.1 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/121
* Update docker/login-action action to v3.7.0 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/126
* Update home-assistant/builder action to v2026 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/127
* Update home-assistant/builder action to v2026.02.1 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/128
* Update docker/login-action action to v4 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/130
* Update TeslaMate to v3 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/129
* Update actions/checkout action to v6.0.2 - autoclosed by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/125


**Full Changelog**: https://github.com/lildude/ha-addon-teslamate/compare/v2.3.0...v2.4.0
