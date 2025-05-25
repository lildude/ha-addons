## Ghostfolio Release Notes

### [`v2.162.1`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#21621---2025-05-24)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.162.0...2.162.1)

##### Added

-   Added a hint about delayed market data to the markets overview
-   Added the asset profile count per data provider to the endpoint `GET api/v1/admin`

##### Changed

-   Increased the robustness of the search in the *Yahoo Finance* service by catching schema validation errors
-   Improved the symbol lookup results by removing the currency from the name of cryptocurrencies (experimental)
-   Harmonized the data providers management style of the admin control panel
-   Extended the data providers management of the admin control panel by the asset profile count
-   Restricted the permissions of the demo user
-   Renamed `Order` to `activities` in the `User` database schema
-   Removed the deprecated endpoint `GET api/v1/admin/market-data/:dataSource/:symbol`
-   Removed the deprecated endpoint `POST api/v1/admin/market-data/:dataSource/:symbol`
-   Removed the deprecated endpoint `PUT api/v1/admin/market-data/:dataSource/:symbol/:dateString`
-   Improved the language localization for Catalan (`ca`)
-   Improved the language localization for Chinese (`zh`)
-   Improved the language localization for Dutch (`nl`)
-   Improved the language localization for Español (`es`)
-   Improved the language localization for French (`fr`)
-   Improved the language localization for German (`de`)
-   Improved the language localization for Italian (`it`)
-   Improved the language localization for Polish (`pl`)
-   Improved the language localization for Portuguese (`pt`)
-   Upgraded `countup.js` from version `2.8.0` to `2.8.2`
-   Upgraded `nestjs` from version `10.4.15` to `11.0.12`
-   Upgraded `prisma` from version `6.7.0` to `6.8.2`
-   Upgraded `twitter-api-v2` from version `1.14.2` to `1.23.0`
-   Upgraded `yahoo-finance2` from version `2.11.3` to `3.3.3`

##### Fixed

-   Displayed the button to fetch the current market price only if the activity is not in a custom currency
-   Fixed an issue in the watchlist endpoint (`POST`) related to the `HasPermissionGuard`
-   Improved the text alignment of the allocations by ETF holding on the allocations page (experimental)

### [`v2.162.0`](https://redirect.github.com/ghostfolio/ghostfolio/releases/tag/2.162.0)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.161.0...2.162.0)

##### Added

-   Added a hint about delayed market data to the markets overview
-   Added the asset profile count per data provider to the endpoint `GET api/v1/admin`

##### Changed

-   Increased the robustness of the search in the *Yahoo Finance* service by catching schema validation errors
-   Improved the symbol lookup results by removing the currency from the name of cryptocurrencies (experimental)
-   Harmonized the data providers management style of the admin control panel
-   Extended the data providers management of the admin control panel by the asset profile count
-   Restricted the permissions of the demo user
-   Renamed `Order` to `activities` in the `User` database schema
-   Removed the deprecated endpoint `GET api/v1/admin/market-data/:dataSource/:symbol`
-   Removed the deprecated endpoint `POST api/v1/admin/market-data/:dataSource/:symbol`
-   Removed the deprecated endpoint `PUT api/v1/admin/market-data/:dataSource/:symbol/:dateString`
-   Improved the language localization for Catalan (`ca`)
-   Improved the language localization for Chinese (`zh`)
-   Improved the language localization for Dutch (`nl`)
-   Improved the language localization for Español (`es`)
-   Improved the language localization for French (`fr`)
-   Improved the language localization for German (`de`)
-   Improved the language localization for Italian (`it`)
-   Improved the language localization for Polish (`pl`)
-   Improved the language localization for Portuguese (`pt`)
-   Upgraded `countup.js` from version `2.8.0` to `2.8.2`
-   Upgraded `nestjs` from version `10.4.15` to `11.0.12`
-   Upgraded `prisma` from version `6.7.0` to `6.8.2`
-   Upgraded `twitter-api-v2` from version `1.14.2` to `1.23.0`
-   Upgraded `yahoo-finance2` from version `2.11.3` to `3.3.3`

##### Fixed

-   Displayed the button to fetch the current market price only if the activity is not in a custom currency
-   Fixed an issue in the watchlist endpoint (`POST`) related to the `HasPermissionGuard`
-   Improved the text alignment of the allocations by ETF holding on the allocations page (experimental)

##### Special Thanks

-   [@&#8203;andiz2](https://redirect.github.com/andiz2)
-   [@&#8203;dtslvr](https://redirect.github.com/dtslvr)
-   [@&#8203;fabiocarlos97](https://redirect.github.com/fabiocarlos97)
-   [@&#8203;felixjordandev](https://redirect.github.com/felixjordandev)
-   [@&#8203;gadicc](https://redirect.github.com/gadicc)
-   [@&#8203;geooner](https://redirect.github.com/geooner)
-   [@&#8203;hashpalk](https://redirect.github.com/hashpalk)
-   [@&#8203;jackcooper20](https://redirect.github.com/jackcooper20)
-   [@&#8203;JeffreyBouman](https://redirect.github.com/JeffreyBouman)
-   [@&#8203;jlebutte](https://redirect.github.com/jlebutte)
-   [@&#8203;KenTandrian](https://redirect.github.com/KenTandrian)
-   [@&#8203;lukasbauer54](https://redirect.github.com/lukasbauer54)
-   [@&#8203;metanodreamer](https://redirect.github.com/metanodreamer)
-   [@&#8203;the13-HK](https://redirect.github.com/the13-HK)

### [`v2.161.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#21610---2025-05-06)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.160.0...2.161.0)

##### Added

-   Extended the endpoint to get a holding by the date of the last all time high and the current change to the all time high

##### Changed

-   Renamed `Order` to `activities` in the `SymbolProfile` database schema
-   Improved the language localization for Turkish (`tr`)

##### Fixed

-   Fixed an issue in the performance calculation on the date of an activity when the unit price differs from the market price
-   Fixed the horizontal overflow in the table of the benchmark component

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v2.162.1 by @renovate in https://github.com/lildude/ha-addon-ghostfolio/pull/151


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.73.0...v1.74.0
