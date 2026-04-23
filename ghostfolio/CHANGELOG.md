## Ghostfolio Release Notes

### [`v3.0.0`](https://redirect.github.com/ghostfolio/ghostfolio/blob/HEAD/CHANGELOG.md#300---2026-04-23)

[Compare Source](https://redirect.github.com/ghostfolio/ghostfolio/compare/2.255.0...3.0.0-beta.2)

##### Added

- Added a blog post: *Announcing Ghostfolio 3.0*

##### Changed

- Migrated from *Material Design* 2 to *Material Design* 3
- Moved the total amount, change and performance with currency effects on the analysis page from experimental to general availability
- Refreshed the cryptocurrencies list
- Upgraded `countup.js` from version `2.9.0` to `2.10.0`
- Upgraded `jsonpath` from version `1.2.1` to `1.3.0`
- Upgraded `nestjs` from version `11.1.14` to `11.1.19`
- Upgraded `ngx-markdown` from version `21.1.0` to `21.2.0`
- Upgraded `Nx` from version `22.6.4` to `22.6.5`
- Upgraded `prisma` from version `6.19.0` to `7.7.0`

##### Todo

- **Breaking Change**: The `sslmode=prefer` parameter in `DATABASE_URL` is no longer supported. Please update your environment variables (see `.env`) to use `sslmode=require` if *SSL* is enabled or remove the `sslmode` parameter entirely if *SSL* is not used.

---

## Add-on Release Notes




## What's Changed
* Update Ghostfolio to v3 by @renovate[bot] in https://github.com/lildude/ha-addon-ghostfolio/pull/274


**Full Changelog**: https://github.com/lildude/ha-addon-ghostfolio/compare/v1.141.0...v1.142.0
