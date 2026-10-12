## Ghostfolio Release Notes

### [`v3.84.2`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#3842---2026-10-11)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.84.1...3.84.2)

##### Added

- Added the endpoint to read the activities of a CSV, JPEG, PDF or PNG file with *Ghostfolio AI* (`POST api/v1/ai/activities`) (experimental)

##### Changed

- Simplified the portfolio performance on the overview tab of the home page by hiding the currency on mobile
- Extended the user detail dialog in the users section of the admin control panel to include the client of the last request
- Updated the *Privacy Policy*
- Extended the import of activities to support CSV files of other brokers, images and PDF files with *Ghostfolio AI* (experimental)
- Extended the access to share the portfolio with the Model Context Protocol (MCP) to support the *View* and the *View and manage* permissions (experimental)
- Improved the performance of getting the historical market data by selecting only the required columns
- Improved the language localization for German (`de`)

##### Fixed

- Fixed the *Copy AI prompt to clipboard* actions on the analysis page in impersonation mode to be based on the impersonated user (experimental)
- Fixed the start date of the date ranges for instances in time zones with a negative UTC offset
- Fixed the dates of the benchmark in the benchmark comparator on the analysis page for instances in time zones with a negative UTC offset
- Fixed the value of the accounts by excluding the cash balance when filtering by an asset class other than liquidity on the accounts page and the allocations page
- Fixed the value of the accounts by excluding the cash balance when filtering by an asset class other than liquidity in the server of the Model Context Protocol (MCP) (experimental)
- Fixed the missing check of the inactive role and of the daily request limit in the server of the Model Context Protocol (MCP) (experimental)

### [`v3.84.1`](https://redirect.github.com/ghostfolio/ghostfolio/releases/tag/3.84.1)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.84.0...3.84.1)

##### Added

- Added the endpoint to read the activities of a CSV, JPEG, PDF or PNG file with *Ghostfolio AI* (`POST api/v1/ai/activities`) (experimental)

##### Changed

- Simplified the portfolio performance on the overview tab of the home page by hiding the currency on mobile
- Extended the user detail dialog in the users section of the admin control panel to include the client of the last request
- Updated the *Privacy Policy*
- Extended the import of activities to support CSV files of other brokers, images and PDF files with *Ghostfolio AI* (experimental)
- Extended the access to share the portfolio with the Model Context Protocol (MCP) to support the *View* and the *View and manage* permissions (experimental)
- Improved the performance of getting the historical market data by selecting only the required columns
- Improved the language localization for German (`de`)

##### Fixed

- Fixed the *Copy AI prompt to clipboard* actions on the analysis page in impersonation mode to be based on the impersonated user (experimental)
- Fixed the start date of the date ranges for instances in time zones with a negative UTC offset
- Fixed the dates of the benchmark in the benchmark comparator on the analysis page for instances in time zones with a negative UTC offset
- Fixed the value of the accounts by excluding the cash balance when filtering by an asset class other than liquidity on the accounts page and the allocations page
- Fixed the value of the accounts by excluding the cash balance when filtering by an asset class other than liquidity in the server of the Model Context Protocol (MCP) (experimental)
- Fixed the missing check of the inactive role and of the daily request limit in the server of the Model Context Protocol (MCP) (experimental)

##### Special Thanks

- [@&#8203;dtslvr](https://redirect.github.com/dtslvr)
- [@&#8203;KenTandrian](https://redirect.github.com/KenTandrian)

### [`v3.84.0`](https://redirect.github.com/ghostfolio/ghostfolio/releases/tag/3.84.0)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/3.83.0...3.84.0)

##### Added

- Added the endpoint to read the activities of a CSV, JPEG, PDF or PNG file with *Ghostfolio AI* (`POST api/v1/ai/activities`) (experimental)

##### Changed

- Simplified the portfolio performance on the overview tab of the home page by hiding the currency on mobile
- Extended the user detail dialog in the users section of the admin control panel to include the client of the last request
- Updated the *Privacy Policy*
- Extended the import of activities to support CSV files of other brokers, images and PDF files with *Ghostfolio AI* (experimental)
- Extended the access to share the portfolio with the Model Context Protocol (MCP) to support the *View* and the *View and manage* permissions (experimental)
- Improved the performance of getting the historical market data by selecting only the required columns
- Improved the language localization for German (`de`)

##### Fixed

- Fixed the *Copy AI prompt to clipboard* actions on the analysis page in impersonation mode to be based on the impersonated user (experimental)
- Fixed the start date of the date ranges for instances in time zones with a negative UTC offset
- Fixed the dates of the benchmark in the benchmark comparator on the analysis page for instances in time zones with a negative UTC offset
- Fixed the value of the accounts by excluding the cash balance when filtering by an asset class other than liquidity on the accounts page and the allocations page
- Fixed the value of the accounts by excluding the cash balance when filtering by an asset class other than liquidity in the server of the Model Context Protocol (MCP) (experimental)
- Fixed the missing check of the inactive role and of the daily request limit in the server of the Model Context Protocol (MCP) (experimental)

##### Special Thanks

- [@&#8203;dtslvr](https://redirect.github.com/dtslvr)
- [@&#8203;KenTandrian](https://redirect.github.com/KenTandrian)

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3.84.2 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/375


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.219.0...v1.220.0
