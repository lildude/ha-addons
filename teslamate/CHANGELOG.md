## TeslaMate Release Notes

### [`v2.2.0`](https://redirect.github.com/teslamate-org/teslamate/blob/HEAD/CHANGELOG.md#100---2019-07-25)

[Compare Source](https://redirect.github.com/teslamate-org/teslamate/compare/v2.1.1...v2.2.0)

As always, there have been many improvements. We now support a proxy for the OpenStreetMap API. If you live in a geo-blocked location, this could simplify your setup. Your tokens are now more secure.
We use the latest dependencies and support PostgreSQL 18 (To update, back up your data and follow [the guide](https://docs.teslamate.org/docs/maintenance/upgrading_postgres). **Please note: Volume mounts have changed in PostgreSQL18, see point 4 of the guide.**).
We also avoid memory bloat on misconfigured Docker hosts. If your host has limited hardware, this will greatly improve your experience.
The dashboards have been improved in terms of performance, and all dashboards now function as expected when set to miles.

Enjoy it.

### New features

- feat: support proxy for openstreet API ([#4970](https://redirect.github.com/teslamate-org/teslamate/issues/4970) - [@jaypark0006](https://redirect.github.com/jaypark0006))

### Improvements and bug fixes

- sec: set tokens to private schema ([#4968](https://redirect.github.com/teslamate-org/teslamate/issues/4968) -[@brianmay](https://redirect.github.com/brianmay))
- build(deps): use elixir 1.18.4, node 22 & debian trixie ([#4889](https://redirect.github.com/teslamate-org/teslamate/issues/4889) - [@swiffer](https://redirect.github.com/swiffer))
- fix: allow using different PostgreSQL port than default when using socket_dir connection ([#4979](https://redirect.github.com/teslamate-org/teslamate/issues/4979) - [@jaypark0006](https://redirect.github.com/jaypark0006))
- perf: use anti join for short-circuit evaluation when getting non streamed drives ([#4990](https://redirect.github.com/teslamate-org/teslamate/issues/4990) - [@swiffer](https://redirect.github.com/swiffer))
- feat: Add ulimit cap to prevent memory bloat in some misconfigured versions of Docker/containerd Hosts (e.g. on Debian 13) ([#5025](https://redirect.github.com/teslamate-org/teslamate/issues/5025) - [@JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- feat: officially support PostgreSQL 18 ([#4890](https://redirect.github.com/teslamate-org/teslamate/issues/4890) - [@swiffer](https://redirect.github.com/swiffer))

#### Build, CI, internal

- build(deps): update flake.lock ([#4911](https://redirect.github.com/teslamate-org/teslamate/issues/4911))
- build(deps): bump @docusaurus/core from 3.8.1 to 3.9.1, @docusaurus/preset-classic from 3.8.1 to 3.9.1, bump dependencies in /website ([#4977](https://redirect.github.com/teslamate-org/teslamate/issues/4977) - [@JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- build(deps): bump actions/checkout from 4.2.2 to 5.0.0 ([#4933](https://redirect.github.com/teslamate-org/teslamate/issues/4933))
- build(deps): bump actions/cache from 4.2.3 to 4.3.0 ([#4972](https://redirect.github.com/teslamate-org/teslamate/issues/4972))
- build(deps): bump nixbuild/nix-quick-install-action from 32 to 34 ([#4974](https://redirect.github.com/teslamate-org/teslamate/issues/4974))
- build(deps): bump docker/login-action from 3.4.0 to 3.6.0 ([#4975](https://redirect.github.com/teslamate-org/teslamate/issues/4975))
- build(deps): bump crate-ci/typos from 1.34.0 to 1.37.0 ([#4976](https://redirect.github.com/teslamate-org/teslamate/issues/4976))
- build(deps): bump finch from 0.19.0 to 0.20.0 ([#4929](https://redirect.github.com/teslamate-org/teslamate/issues/4929))
- build(deps): update flake.lock ([#4991](https://redirect.github.com/teslamate-org/teslamate/issues/4991))
- build(deps): update flake.lock ([#4997](https://redirect.github.com/teslamate-org/teslamate/issues/4997))
- build(deps): bump actions/stale from 9.1.0 to 10.1.0 ([#5019](https://redirect.github.com/teslamate-org/teslamate/issues/5019))
- build(deps): bump @docusaurus/core from 3.9.1 to 3.9.2, @docusaurus/preset-classic from 3.9.1 to 3.9.2 and dependencies in /website ([#5020](https://redirect.github.com/teslamate-org/teslamate/issues/5020))

#### Dashboards

- fix: charging stats now correctly calculate cost when set to miles ([#4983](https://redirect.github.com/teslamate-org/teslamate/issues/4983) - [@DrMichael](https://redirect.github.com/DrMichael))
- perf: Optimize Grafana query for trip view to leverage indexes more effectively ([#4964](https://redirect.github.com/teslamate-org/teslamate/issues/4964) - [@jaypark0006](https://redirect.github.com/jaypark0006))
- feat: add shared buffers size to db info dashboard ([#4989](https://redirect.github.com/teslamate-org/teslamate/issues/4989) - [@swiffer](https://redirect.github.com/swiffer))
- fix: cast to numeric instead of integer when converting from km to miles to avoid rounding issues in all dashboards ([#4986](https://redirect.github.com/teslamate-org/teslamate/issues/4986) - [@swiffer](https://redirect.github.com/swiffer))
- fix: correctly determine charging phases in charge detail dashboard ([#4988](https://redirect.github.com/teslamate-org/teslamate/issues/4988) - [@swiffer](https://redirect.github.com/swiffer))

#### Translations

- i18n: add spanish car location translation ([#4892](https://redirect.github.com/teslamate-org/teslamate/issues/4892) - [@jpizquierdo](https://redirect.github.com/jpizquierdo))
- i18n: add missing italian translations, correct the gender of some words and use more uniform translations ([#4920](https://redirect.github.com/teslamate-org/teslamate/issues/4920) - [@giovaorama](https://redirect.github.com/giovaorama))
- i18n: add thai car location translation ([#4956](https://redirect.github.com/teslamate-org/teslamate/issues/4956) - [@tomzt](https://redirect.github.com/tomzt))
- i18n: update Traditional Chinese translations with missing translations and to avoid PRC terms and ensure consistency across UI strings ([#4995](https://redirect.github.com/teslamate-org/teslamate/issues/4995) - [@occultsound](https://redirect.github.com/occultsound))

#### Documentation

- docs: for new installs, pin postgres container to debian trixie to avoid collation version mismatch ([#4901](https://redirect.github.com/teslamate-org/teslamate/issues/4901) - [@swiffer](https://redirect.github.com/swiffer))
- docs: Update FreeBSD and Debian instructions to use GRAFANA_API_TOKEN for the dashboard writes ([#4942](https://redirect.github.com/teslamate-org/teslamate/issues/4942) - [@uqs](https://redirect.github.com/uqs))
- docs: rename Home Assistant object_id to default_entity_id to be compliant with latest HA ([#4980](https://redirect.github.com/teslamate-org/teslamate/issues/4980) - [@MrPaulAR](https://redirect.github.com/MrPaulAR))
- docs: explain MQTT in Readme via link to Wikipedia ([#4985](https://redirect.github.com/teslamate-org/teslamate/issues/4985) - [@DanCard](https://redirect.github.com/DanCard))
- docs(dev): provide guidelines for checking dependency updates before merging ([#4969](https://redirect.github.com/teslamate-org/teslamate/issues/4969) - [@JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- docs: add domain prefix to Home Assistant default_entity_id ([#5014](https://redirect.github.com/teslamate-org/teslamate/issues/5014) - [@gym22](https://redirect.github.com/gym22))
- docs: add star history ([#5024](https://redirect.github.com/teslamate-org/teslamate/issues/5024) - [@JakobLichterfeld](https://redirect.github.com/JakobLichterfeld))
- docs: bump Traefik to v3.5 and enable http3 in advanced guide ([#5023](https://redirect.github.com/teslamate-org/teslamate/issues/5023) - [@swiffer](https://redirect.github.com/swiffer))
- docs: add docs for volume mount change with PostgreSQL 18 ([#4890](https://redirect.github.com/teslamate-org/teslamate/issues/4890) - [@swiffer](https://redirect.github.com/swiffer))

[complete changelog](https://github.com/teslamate-org/teslamate/compare/v2.1.1...v2.2.0)

---

## Add-on Release Notes




## What's Changed
* Update softprops/action-gh-release action to v2.3.3 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/103
* Update home-assistant/builder action to v2025.09.0 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/104
* Update softprops/action-gh-release action to v2.3.4 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/107
* Update docker/login-action action to v3.6.0 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/106
* Update softprops/action-gh-release action to v2.4.0 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/108
* Update softprops/action-gh-release action to v2.4.1 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/109
* Remove duplicated custom_plugins: [] by @bruvv in https://github.com/lildude/ha-addon-teslamate/pull/110
* Add note for clearing TeslaMate config to re-show config links by @lildude in https://github.com/lildude/ha-addon-teslamate/pull/113
* Drop armv7 support and codenotary by @lildude in https://github.com/lildude/ha-addon-teslamate/pull/115
* Update TeslaMate to v2.2.0 by @renovate[bot] in https://github.com/lildude/ha-addon-teslamate/pull/114

## New Contributors
* @bruvv made their first contribution in https://github.com/lildude/ha-addon-teslamate/pull/110

**Full Changelog**: https://github.com/lildude/ha-addon-teslamate/compare/v2.2.0...v2.3.0
