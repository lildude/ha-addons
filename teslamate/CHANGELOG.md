## TeslaMate Release Notes

### [`v1.30.1`](https://togithub.com/teslamate-org/teslamate/releases/tag/v1.30.1)

[Compare Source](https://togithub.com/teslamate-org/teslamate/compare/v1.30.0...v1.30.1)

This is a hotfix release to work around the map fit problem in the new Upstream Grafana. As soon as a new Grafana version is available, we will update again.

##### Improvements and bug fixes

-   downgrade grafana until maps issue in upstream grafana is resolved ([#&#8203;4071](https://togithub.com/teslamate-org/teslamate/issues/4071) - [@&#8203;swiffer](https://togithub.com/swiffer))

##### Build, CI, internal

-   ci: fix coverage report env variable ([#&#8203;4066](https://togithub.com/teslamate-org/teslamate/issues/4066) - [@&#8203;JakobLichterfeld](https://togithub.com/JakobLichterfeld))

##### Dashboards

-   Configure Grafana to use browser language / date formats ([#&#8203;4064](https://togithub.com/teslamate-org/teslamate/issues/4064) - [@&#8203;swiffer](https://togithub.com/swiffer))
-   Fix hard coded information (timezone and orgId) ([#&#8203;4056](https://togithub.com/teslamate-org/teslamate/issues/4056) - [@&#8203;jlestel](https://togithub.com/jlestel))

##### Translations

-   update zh_hans localized string ([#&#8203;4073](https://togithub.com/teslamate-org/teslamate/issues/4073) - [@&#8203;mrgaolei](https://togithub.com/mrgaolei))
-   Update default.po for thai ([#&#8203;4072](https://togithub.com/teslamate-org/teslamate/issues/4072) - [@&#8203;tomzt](https://togithub.com/tomzt))

[full changelog](https://togithub.com/teslamate-org/teslamate/compare/v1.30.0...v1.30.1)

### [`v1.30.0`](https://togithub.com/teslamate-org/teslamate/releases/tag/v1.30.0)

[Compare Source](https://togithub.com/teslamate-org/teslamate/compare/v1.29.2...v1.30.0)

As always with many improvements. Cleaner LFP battery handling, 100x speed improvement in dashboards and much, much more. Enjoy it.

##### New features

-   Track open/close states for individual doors ([#&#8203;3962](https://togithub.com/teslamate-org/teslamate/issues/3962) - [@&#8203;SaswatPadhi](https://togithub.com/SaswatPadhi)), new MQTT values see [documentation](https://docs.teslamate.org/docs/integrations/mqtt)
-   Allow Fleet API users to change client_id ([#&#8203;3984](https://togithub.com/teslamate-org/teslamate/issues/3984) - [@&#8203;jlestel](https://togithub.com/jlestel))
-   Customize intervals between vehicle_data calls ([#&#8203;3940](https://togithub.com/teslamate-org/teslamate/issues/3940) - [@&#8203;jlestel](https://togithub.com/jlestel))
-   feat: Create NixOS module ([#&#8203;3998](https://togithub.com/teslamate-org/teslamate/issues/3998) - [@&#8203;scottbot95](https://togithub.com/scottbot95))
-   feat: Add ability to enable and disable data collection for cars ([#&#8203;3993](https://togithub.com/teslamate-org/teslamate/issues/3993) - [@&#8203;mark3-dev](https://togithub.com/mark3-dev))
-   publish center_display_state to mqtt ([#&#8203;3813](https://togithub.com/teslamate-org/teslamate/issues/3813) - [@&#8203;Atrox](https://togithub.com/Atrox)), new MQTT values see [documentation](https://docs.teslamate.org/docs/integrations/mqtt)
-   feat: add LFP Battery setting for car settings ([#&#8203;4007](https://togithub.com/teslamate-org/teslamate/issues/4007) -[@&#8203;cwanja](https://togithub.com/cwanja))
-   Add icon to summary when Sentry Mode is triggered and recording ([#&#8203;4043](https://togithub.com/teslamate-org/teslamate/issues/4043) -[@&#8203;kolaCZek](https://togithub.com/kolaCZek))

##### Improvements and bug fixes

-   Update vehicle.ex with marketing name for Model Y Long Range RWD ([#&#8203;3989](https://togithub.com/teslamate-org/teslamate/issues/3989) - [@&#8203;stefanlange](https://togithub.com/stefanlange))
-   feat: use Grafana 11.1.0 ([#&#8203;4019](https://togithub.com/teslamate-org/teslamate/issues/4019) - [@&#8203;swiffer](https://togithub.com/swiffer))
-   Update vehicle.ex with marketing name for Model Y SR ([#&#8203;4042](https://togithub.com/teslamate-org/teslamate/issues/4042) - [@&#8203;kolaCZek](https://togithub.com/kolaCZek))
-   feat: update breadcrumb links to use Phoenix path helpers ([#&#8203;4052](https://togithub.com/teslamate-org/teslamate/issues/4052) - [@&#8203;JakobLichterfeld](https://togithub.com/JakobLichterfeld))

##### Build, CI, internal

-   build(deps): bump crate-ci/typos from 1.21.0 to 1.22.9 ([#&#8203;4021](https://togithub.com/teslamate-org/teslamate/issues/4021))
-   build(deps): bump express from 4.18.2 to 4.19.2 in /website ([#&#8203;3790](https://togithub.com/teslamate-org/teslamate/issues/3790))
-   chore: update [@&#8203;docusaurus/core](https://togithub.com/docusaurus/core) and [@&#8203;docusaurus/preset-classic](https://togithub.com/docusaurus/preset-classic) dependencies to v3.4.0 and react and react-dom to 18.3.1 ([#&#8203;4046](https://togithub.com/teslamate-org/teslamate/issues/4046) - [@&#8203;JakobLichterfeld](https://togithub.com/JakobLichterfeld))
-   build: specify node.js version for Netlify in base dir as latest lts major version ([#&#8203;4046](https://togithub.com/teslamate-org/teslamate/issues/4046) - [@&#8203;JakobLichterfeld](https://togithub.com/JakobLichterfeld))
-   style: fix single quoted string in car_live ([#&#8203;4049](https://togithub.com/teslamate-org/teslamate/issues/4049) - [@&#8203;JakobLichterfeld](https://togithub.com/JakobLichterfeld))

##### Dashboards

-   Improve drive details ([#&#8203;4004](https://togithub.com/teslamate-org/teslamate/issues/4004) - [@&#8203;jheredianet](https://togithub.com/jheredianet))
-   Improve visualizations on Battery Health dashboard ([#&#8203;4005](https://togithub.com/teslamate-org/teslamate/issues/4005) - [@&#8203;jheredianet](https://togithub.com/jheredianet))
-   Update drives.json: show drives with duration=0 but distance>0 ([#&#8203;3867](https://togithub.com/teslamate-org/teslamate/issues/3867) - [@&#8203;DrMichael](https://togithub.com/DrMichael))
-   Improve performance of timeline dashboard ([#&#8203;4019](https://togithub.com/teslamate-org/teslamate/issues/4019) - [@&#8203;swiffer](https://togithub.com/swiffer))
-   Fix detection of missing data (geofence condition) in timeline dashboard ([#&#8203;4019](https://togithub.com/teslamate-org/teslamate/issues/4019) - [@&#8203;swiffer](https://togithub.com/swiffer))
-   Fix time filter for links to trip dashboard in timeline dashboard ([#&#8203;4019](https://togithub.com/teslamate-org/teslamate/issues/4019) - [@&#8203;swiffer](https://togithub.com/swiffer))
-   Reduce number of queries executed in overview dashboard to increase performance ([#&#8203;4019](https://togithub.com/teslamate-org/teslamate/issues/4019) - [@&#8203;swiffer](https://togithub.com/swiffer))
-   Ensure Index usage when getting temperatures in overview dashboard ([#&#8203;4019](https://togithub.com/teslamate-org/teslamate/issues/4019) - [@&#8203;swiffer](https://togithub.com/swiffer))
-   re-enable time picker by default in drive-details, charge-details dashboards ([#&#8203;3985](https://togithub.com/teslamate-org/teslamate/issues/3985))
-   Improve "Charges" dashboard ([#&#8203;4031](https://togithub.com/teslamate-org/teslamate/issues/4031) - [@&#8203;jheredianet](https://togithub.com/jheredianet))
-   Improve "Drives" dashboard ([#&#8203;4033](https://togithub.com/teslamate-org/teslamate/issues/4033) - [@&#8203;jheredianet](https://togithub.com/jheredianet))
-   Update overview.json: Add Distance ([#&#8203;4034](https://togithub.com/teslamate-org/teslamate/issues/4034) - [@&#8203;DrMichael](https://togithub.com/DrMichael))
-   Update overview.json: fix Net ([#&#8203;4045](https://togithub.com/teslamate-org/teslamate/issues/4045) - [@&#8203;DrMichael](https://togithub.com/DrMichael))
-   update overview dashboard to fix units for energy consumption ([#&#8203;4048](https://togithub.com/teslamate-org/teslamate/issues/4048) - [@&#8203;JakobLichterfeld](https://togithub.com/JakobLichterfeld))
-   use lfp_battery setting in dashboards & speed up updates dashboard ([#&#8203;4051](https://togithub.com/teslamate-org/teslamate/issues/4051) - [@&#8203;swiffer](https://togithub.com/swiffer))

##### Translations

-   feat: update German translations missing messages ([#&#8203;4054](https://togithub.com/teslamate-org/teslamate/issues/4054) - [@&#8203;JakobLichterfeld](https://togithub.com/JakobLichterfeld))

##### Documentation

-   doc: remove outdated, unsupported, unmaintained portainer doc ([#&#8203;3972](https://togithub.com/teslamate-org/teslamate/issues/3972) - [@&#8203;JakobLichterfeld](https://togithub.com/JakobLichterfeld))
-   doc: fix MMM-Teslamate and ha-addon-teslamate project links ([#&#8203;3973](https://togithub.com/teslamate-org/teslamate/issues/3973) - [@&#8203;olexs](https://togithub.com/olexs))
-   doc: update the Contributor's Guide with the latest requirements ([#&#8203;4017](https://togithub.com/teslamate-org/teslamate/issues/4017) - [@&#8203;JakobLichterfeld](https://togithub.com/JakobLichterfeld))
-   doc: Documentation for new endpoint changes ([#&#8203;3978](https://togithub.com/teslamate-org/teslamate/issues/3978) - [@&#8203;jlestel](https://togithub.com/jlestel))
-   doc: Add Grafana VS Code extension documentation ([#&#8203;4025](https://togithub.com/teslamate-org/teslamate/issues/4025) - [@&#8203;JakobLichterfeld](https://togithub.com/JakobLichterfeld))
-   doc: fix markdown linter warnings in faq ([#&#8203;4046](https://togithub.com/teslamate-org/teslamate/issues/4046) - [@&#8203;JakobLichterfeld](https://togithub.com/JakobLichterfeld))
-   doc: fix typo in MQTT location JSON format ([#&#8203;4047](https://togithub.com/teslamate-org/teslamate/issues/4047) - [@&#8203;JakobLichterfeld](https://togithub.com/JakobLichterfeld))

[complete changelog](https://togithub.com/teslamate-org/teslamate/compare/v1.29.2...v1.30.0)

### [`v1.29.2`](https://togithub.com/teslamate-org/teslamate/releases/tag/v1.29.2)

[Compare Source](https://togithub.com/teslamate-org/teslamate/compare/v1.29.1...v1.29.2)

This release improve TeslaMate behavior on Tesla API rate limits, which occur from time to time. We respect the retry-after header on 429 response code to not hammer the API unnecessarily in these cases.

The release itself does not upgrade a users instance to PSQL 16. To do so, please follow the [instructions](https://docs.teslamate.org/docs/maintenance/upgrading_postgres) carefully.

##### New features

-   feat: Dynamic endpoints and token to use official Tesla API (self-hosted or from third party provider) ([#&#8203;3903](https://togithub.com/teslamate-org/teslamate/issues/3903) - [@&#8203;jlestel](https://togithub.com/jlestel))

##### Improvements and bug fixes

-   fix: Update statistics.json: change back uid ([#&#8203;3907](https://togithub.com/teslamate-org/teslamate/issues/3907) -[@&#8203;DrMichael](https://togithub.com/DrMichael))
-   feat: Update TeslaFi importer to accept newer export formats ([#&#8203;3431](https://togithub.com/teslamate-org/teslamate/issues/3431) - [@&#8203;ithinuel](https://togithub.com/ithinuel))
-   feat: Upgrade PostgreSQL to v16 ([#&#8203;3884](https://togithub.com/teslamate-org/teslamate/issues/3884) -[@&#8203;enoch85](https://togithub.com/enoch85)) (The release itself does not upgrade a users instance to PSQL 16. To do so, please follow the [instructions](https://docs.teslamate.org/docs/maintenance/upgrading_postgres) carefully.)
-   feat: Respect Retry-After header on 429 response code ([#&#8203;3943](https://togithub.com/teslamate-org/teslamate/issues/3943) - [@&#8203;jlestel](https://togithub.com/jlestel))
-   feat: use Grafana 11.0.0 ([#&#8203;3895](https://togithub.com/teslamate-org/teslamate/issues/3895) - [@&#8203;swiffer](https://togithub.com/swiffer))

##### Build, CI, internal

-   ci: Upgrade PostgreSQL to v16 in elixir workflow ([#&#8203;3916](https://togithub.com/teslamate-org/teslamate/issues/3916) - [@&#8203;JakobLichterfeld](https://togithub.com/JakobLichterfeld))
-   build(deps): bump docker/login-action from 3.1.0 to 3.2.0 ([#&#8203;3933](https://togithub.com/teslamate-org/teslamate/issues/3933))
-   build(deps): bump elixir from 1.16.1-otp-26 to 1.16.2-otp-26 ([#&#8203;3935](https://togithub.com/teslamate-org/teslamate/issues/3935) - [@&#8203;JakobLichterfeld](https://togithub.com/JakobLichterfeld))
-   build(deps): bump braces from 3.0.2 to 3.0.3 in /website [#&#8203;3967](https://togithub.com/teslamate-org/teslamate/issues/3967)

##### Dashboards

-   Remove A lot of empty space on the drive graph ([#&#8203;3927](https://togithub.com/teslamate-org/teslamate/issues/3927) - [@&#8203;jheredianet](https://togithub.com/jheredianet))
-   Add more ways to recognize Supercharger locations ([#&#8203;3863](https://togithub.com/teslamate-org/teslamate/issues/3863) -[@&#8203;woyteck1](https://togithub.com/woyteck1))
-   Projected Range fix (using usable_battery_level) ([#&#8203;3859](https://togithub.com/teslamate-org/teslamate/issues/3859) -[@&#8203;woyteck1](https://togithub.com/woyteck1))
-   Update and fix timeline dashboard ([#&#8203;3951](https://togithub.com/teslamate-org/teslamate/issues/3951) -[@&#8203;jheredianet](https://togithub.com/jheredianet))
-   Remove A lot of empty space on the drive graph ([#&#8203;3950](https://togithub.com/teslamate-org/teslamate/issues/3950) -[@&#8203;jheredianet](https://togithub.com/jheredianet))
-   Integrate LFP specific dashboards into regular dashboards ([#&#8203;3966](https://togithub.com/teslamate-org/teslamate/issues/3966) - [@&#8203;swiffer](https://togithub.com/swiffer))
-   Export all Dashboards via Grafana 11.0.0 ([#&#8203;3971](https://togithub.com/teslamate-org/teslamate/issues/3971) - [@&#8203;swiffer](https://togithub.com/swiffer))

##### Translations

-   feat: Update default.po for Thai translation ([#&#8203;3906](https://togithub.com/teslamate-org/teslamate/issues/3906), [#&#8203;3945](https://togithub.com/teslamate-org/teslamate/issues/3945) - [@&#8203;tomzt](https://togithub.com/tomzt))

##### Documentation

-   doc: update backup path location to current directory to work around no write access to placeholder directory issue ([#&#8203;3908](https://togithub.com/teslamate-org/teslamate/issues/3908) - [@&#8203;JakobLichterfeld](https://togithub.com/JakobLichterfeld))
-   doc: Update MQTT examples of location/active_route ([#&#8203;3919](https://togithub.com/teslamate-org/teslamate/issues/3919) - [@&#8203;longzheng](https://togithub.com/longzheng))
-   doc: Update HomeAssistant docs to use new MQTT values ([#&#8203;3923](https://togithub.com/teslamate-org/teslamate/issues/3923) - [@&#8203;longzheng](https://togithub.com/longzheng))
-   doc: Add network flows that should be authorized ([#&#8203;3886](https://togithub.com/teslamate-org/teslamate/issues/3886) - [@&#8203;fl42](https://togithub.com/fl42))
-   doc: Update projects.md with new MMM ([#&#8203;3953](https://togithub.com/teslamate-org/teslamate/issues/3953) - [@&#8203;top-gun](https://togithub.com/top-gun))

[complete changelog](https://togithub.com/teslamate-org/teslamate/compare/v1.29.1...v1.29.2)

---

## Add-on Release Notes




## What's Changed
* Update softprops/action-gh-release action to v2.0.8 by @renovate in https://github.com/lildude/ha-addon-teslamate/pull/26
* Fix image URL by @lildude in https://github.com/lildude/ha-addon-teslamate/pull/33
* Update home-assistant/builder action to v2024.08.2 by @renovate in https://github.com/lildude/ha-addon-teslamate/pull/30


**Full Changelog**: https://github.com/lildude/ha-addon-teslamate/compare/v1.1.2...v1.1.3
