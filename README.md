# Stealer Fingerprints

An independent public research catalog maintained by CyStack Threat Intelligence. It documents information-stealer log formats observed in real-world collections and distinguishes publicly attributed malware families, observed self-labels, and stable CyStack tracking names for formats without defensible public attribution.

Every retained variant has exactly one representative text sample from the CyStack Threat Intelligence collection. Profiles without a retained sample remain visible as research records; the repository does not fill those gaps with synthetic samples.

> This catalog describes exported stealer logs, not malware binaries. A structural match is an analyst lead, not proof of infection or final attribution.

Family pages present the research narrative, target inventory, detection notes, and MITRE ATT&CK names in both English and Vietnamese. English remains the canonical machine-readable text; Vietnamese is maintained as an aligned localization.

Các trang hồ sơ trình bày phần mô tả nghiên cứu, danh mục mục tiêu, ghi chú nhận diện và tên kỹ thuật MITRE ATT&CK bằng cả tiếng Anh và tiếng Việt.

## Corpus at a glance

- **201** research profiles
- **42** known malware families
- **3** observed self-labels without independent family attribution
- **140** CyStack tracking names
- **11** CyStack names mapped to a known parent family
- **5** log aggregators
- **159** observed log variants and **159** samples
- **8,052,913** CyStack observations represented by the retained sample set

The historical-record count is a cumulative lower bound attached to the retained samples, not a live telemetry counter.

## A quick look

- [Lumma](families/lumma/) shows a well-attributed family with several observed layouts.
- [CSAntiSandboxStealer](families/cs-anti-sandbox-stealer/) shows a format named and documented by CyStack pending defensible external attribution.
- [CSBabaStealer](families/cs-baba-stealer/) shows a CyStack tracking name mapped to a known parent family while retaining its own observable panel identity.

## Use it

Browse any profile below for its description, targets, detection notes, ATT&CK mapping, recognition anchors, provenance, and sample. To rank a local text log against the published structures:

```console
python identify.py path/to/system-info.txt
python identify.py --json path/to/system-info.txt
```

The matcher runs locally with Python 3.11+ and has no third-party dependencies.

## Catalog

### Known malware families (42)

| Profile | Confidence | Variants | Sample status |
|---|---|---:|---|
| [Acreed](families/acreed/) | high | 1 | [1 retained](families/acreed/#observed-log-variants) |
| [Ailurophile](families/ailurophile/) | high | 1 | [1 retained](families/ailurophile/#observed-log-variants) |
| [AMOS Stealer](families/amos-stealer/) | high | 1 | [1 retained](families/amos-stealer/#observed-log-variants) |
| [Arcane](families/arcane/) | high | 3 | [3 retained](families/arcane/#observed-log-variants) |
| [AuraStealer](families/aura-stealer/) | high | 1 | [1 retained](families/aura-stealer/#observed-log-variants) |
| [Aurora Stealer](families/aurora-stealer/) | high | 0 | Metadata only |
| [Bee Stealer](families/bee-stealer/) | high | 1 | [1 retained](families/bee-stealer/#observed-log-variants) |
| [Blank Grabber](families/blank-grabber/) | high | 3 | [3 retained](families/blank-grabber/#observed-log-variants) |
| [CryptBot](families/crypt-bot/) | high | 3 | [3 retained](families/crypt-bot/#observed-log-variants) |
| [Cthulhu Stealer](families/cthulhu-stealer/) | high | 1 | [1 retained](families/cthulhu-stealer/#observed-log-variants) |
| [DCRat](families/dc-rat/) | high | 1 | [1 retained](families/dc-rat/#observed-log-variants) |
| [Erbium](families/erbium/) | high | 0 | Metadata only |
| [Lumma](families/lumma/) | high | 7 | [7 retained](families/lumma/#observed-log-variants) |
| [MacSync](families/mac-sync/) | high | 1 | [1 retained](families/mac-sync/#observed-log-variants) |
| [Mars Stealer](families/mars-stealer/) | medium | 1 | [1 retained](families/mars-stealer/#observed-log-variants) |
| [Meduza](families/meduza/) | high | 1 | [1 retained](families/meduza/#observed-log-variants) |
| [MeltStealer](families/melt-stealer/) | high | 1 | [1 retained](families/melt-stealer/#observed-log-variants) |
| [MetaStealer](families/meta-stealer/) | high | 0 | Metadata only |
| [Misericorde Stealer](families/misericorde-stealer/) | low | 1 | [1 retained](families/misericorde-stealer/#observed-log-variants) |
| [Nexus](families/nexus/) | medium | 0 | Metadata only |
| [Odyssey Stealer](families/odyssey-stealer/) | high | 0 | Metadata only |
| [Phantom Stealer](families/phantom-stealer/) | high | 3 | [3 retained](families/phantom-stealer/#observed-log-variants) |
| [Phemedrone](families/phemedrone/) | high | 1 | [1 retained](families/phemedrone/#observed-log-variants) |
| [Phexia](families/phexia/) | high | 1 | [1 retained](families/phexia/#observed-log-variants) |
| [Predator The Thief](families/predator-the-thief/) | high | 0 | Metadata only |
| [PureLogs](families/pure-logs/) | high | 1 | [1 retained](families/pure-logs/#observed-log-variants) |
| [PXA Stealer](families/pxa-stealer/) | high | 2 | [2 retained](families/pxa-stealer/#observed-log-variants) |
| [Raccoon](families/raccoon/) | high | 2 | [2 retained](families/raccoon/#observed-log-variants) |
| [Redline](families/redline/) | high | 2 | [2 retained](families/redline/#observed-log-variants) |
| [Remus Stealer](families/remus-stealer/) | high | 5 | [5 retained](families/remus-stealer/#observed-log-variants) |
| [Rhadamanthys](families/rhadamanthys/) | medium | 0 | Metadata only |
| [RisePro](families/rise-pro/) | medium | 0 | Metadata only |
| [RL Stealer](families/rl-stealer/) | medium | 2 | [2 retained](families/rl-stealer/#observed-log-variants) |
| [SantaStealer](families/santa-stealer/) | high | 1 | [1 retained](families/santa-stealer/#observed-log-variants) |
| [SHub Stealer](families/s-hub-stealer/) | high | 0 | Metadata only |
| [Snake Keylogger](families/snake-keylogger/) | high | 0 | Metadata only |
| [StealC](families/steal-c/) | high | 2 | [2 retained](families/steal-c/#observed-log-variants) |
| [Stealerium](families/stealerium/) | high | 1 | [1 retained](families/stealerium/#observed-log-variants) |
| [Storm Stealer](families/storm-stealer/) | high | 1 | [1 retained](families/storm-stealer/#observed-log-variants) |
| [Vidar](families/vidar/) | high | 8 | [8 retained](families/vidar/#observed-log-variants) |
| [WhiteSnake](families/white-snake/) | high | 1 | [1 retained](families/white-snake/#observed-log-variants) |
| [XFiles](families/x-files/) | high | 2 | [2 retained](families/x-files/#observed-log-variants) |

### Observed self-labels (3)

| Profile | Confidence | Variants | Sample status |
|---|---|---:|---|
| [Antarctida Stealer](families/antarctida-stealer/) | unknown | 2 | [2 retained](families/antarctida-stealer/#observed-log-variants) |
| [Rivas Stealer](families/rivas-stealer/) | unknown | 1 | [1 retained](families/rivas-stealer/#observed-log-variants) |
| [Snake Stealer](families/snake-stealer/) | unknown | 1 | [1 retained](families/snake-stealer/#observed-log-variants) |

### CyStack tracking names (140)

| Profile | Confidence | Variants | Sample status |
|---|---|---:|---|
| [BracketSection Stealer](families/bracket-section-stealer/) | unknown | 1 | [1 retained](families/bracket-section-stealer/#observed-log-variants) |
| [Category Stealer](families/category-stealer/) | unknown | 2 | [2 retained](families/category-stealer/#observed-log-variants) |
| [CSAdminCoresStealer](families/cs-admin-cores-stealer/) | unknown | 1 | [1 retained](families/cs-admin-cores-stealer/#observed-log-variants) |
| [CSAntiSandboxStealer](families/cs-anti-sandbox-stealer/) | unknown | 1 | [1 retained](families/cs-anti-sandbox-stealer/#observed-log-variants) |
| [CSApplicationsDiscordStealer](families/cs-applications-discord-stealer/) | unknown | 0 | Metadata only |
| [CSAppProfileStealer](families/cs-app-profile-stealer/) | unknown | 0 | Metadata only |
| [CSAutofillProfileBundle](families/cs-autofill-profile-bundle/) | unknown | 0 | Metadata only |
| [CSAzureBuildStealer](families/cs-azure-build-stealer/) | unknown | 1 | [1 retained](families/cs-azure-build-stealer/#observed-log-variants) |
| [CSBabaCloudBuildBlockStealer](families/cs-baba-cloud-build-block-stealer/) | unknown | 1 | [1 retained](families/cs-baba-cloud-build-block-stealer/#observed-log-variants) |
| [CSBabaCloudInfoStealer](families/cs-baba-cloud-info-stealer/) | unknown | 1 | [1 retained](families/cs-baba-cloud-info-stealer/#observed-log-variants) |
| [CSBareUsernameAVStealer](families/cs-bare-username-av-stealer/) | unknown | 0 | Metadata only |
| [CSBareVersionStealer](families/cs-bare-version-stealer/) | unknown | 0 | Metadata only |
| [CSBase64CpuStealer](families/cs-base64-cpu-stealer/) | unknown | 0 | Metadata only |
| [CSBestPrivateLoggerStealer](families/cs-best-private-logger-stealer/) | unknown | 1 | [1 retained](families/cs-best-private-logger-stealer/#observed-log-variants) |
| [CSBitArchStealer](families/cs-bit-arch-stealer/) | unknown | 1 | [1 retained](families/cs-bit-arch-stealer/#observed-log-variants) |
| [CSBldStealer](families/cs-bld-stealer/) | unknown | 0 | Metadata only |
| [CSBracketVendorCardsStealer](families/cs-bracket-vendor-cards-stealer/) | unknown | 0 | Metadata only |
| [CSBradmaxCategoryStealer](families/cs-bradmax-category-stealer/) | unknown | 0 | Metadata only |
| [CSBradMaxCloudBannerOnlyStealer](families/cs-brad-max-cloud-banner-only-stealer/) | unknown | 0 | Metadata only |
| [CSBradMaxCloudMacStealer](families/cs-brad-max-cloud-mac-stealer/) | unknown | 0 | Metadata only |
| [CSBradMaxCloudParsedStealer](families/cs-brad-max-cloud-parsed-stealer/) | unknown | 0 | Metadata only |
| [CSBradMaxCloudPCStealer](families/cs-brad-max-cloud-pc-stealer/) | unknown | 0 | Metadata only |
| [CSBradmaxCookiesOnlyStealer](families/cs-bradmax-cookies-only-stealer/) | unknown | 0 | Metadata only |
| [CSBradMaxPwshStealer](families/cs-brad-max-pwsh-stealer/) | unknown | 0 | Metadata only |
| [CSBradmaxRedlineTruncStealer](families/cs-bradmax-redline-trunc-stealer/) | unknown | 0 | Metadata only |
| [CSBrowersStealer](families/cs-browers-stealer/) | unknown | 1 | [1 retained](families/cs-browers-stealer/#observed-log-variants) |
| [CSBrowserCategoryDumpStealer](families/cs-browser-category-dump-stealer/) | unknown | 0 | Metadata only |
| [CSBrowserFingerprintStealer](families/cs-browser-fingerprint-stealer/) | unknown | 0 | Metadata only |
| [CSBrowserProfileStealer](families/cs-browser-profile-stealer/) | unknown | 0 | Metadata only |
| [CSBrowsersDisplayStealer](families/cs-browsers-display-stealer/) | unknown | 0 | Metadata only |
| [CSBugattiCloudPcInfoStealer](families/cs-bugatti-cloud-pc-info-stealer/) | unknown | 0 | Metadata only |
| [CSBugattiPcInfoStealer](families/cs-bugatti-pc-info-stealer/) | unknown | 1 | [1 retained](families/cs-bugatti-pc-info-stealer/#observed-log-variants) |
| [CSBugattiUserInfoStealer](families/cs-bugatti-user-info-stealer/) | unknown | 0 | Metadata only |
| [CSBuildBlockStealer](families/cs-build-block-stealer/) | unknown | 1 | [1 retained](families/cs-build-block-stealer/#observed-log-variants) |
| [CSCardTargetStealer](families/cs-card-target-stealer/) | unknown | 0 | Metadata only |
| [CSCcApostropheStealer](families/cs-cc-apostrophe-stealer/) | unknown | 0 | Metadata only |
| [CSCCsHistoryStealer](families/csc-cs-history-stealer/) | unknown | 0 | Metadata only |
| [CSCommonFilesCategoryStealer](families/cs-common-files-category-stealer/) | unknown | 0 | Metadata only |
| [CSCookiesSoftStealer](families/cs-cookies-soft-stealer/) | unknown | 0 | Metadata only |
| [CSCountCoreStealer](families/cs-count-core-stealer/) | unknown | 1 | [1 retained](families/cs-count-core-stealer/#observed-log-variants) |
| [CSCountOfCpuStealer](families/cs-count-of-cpu-stealer/) | unknown | 0 | Metadata only |
| [CSCountRunsStealer](families/cs-count-runs-stealer/) | unknown | 1 | [1 retained](families/cs-count-runs-stealer/#observed-log-variants) |
| [CSCrownBuildStealer](families/cs-crown-build-stealer/) | unknown | 1 | [1 retained](families/cs-crown-build-stealer/#observed-log-variants) |
| [CSCyrillicCoresStealer](families/cs-cyrillic-cores-stealer/) | unknown | 0 | Metadata only |
| [CSDaisyBonusProcSoftStealer](families/cs-daisy-bonus-proc-soft-stealer/) | unknown | 1 | [1 retained](families/cs-daisy-bonus-proc-soft-stealer/#observed-log-variants) |
| [CSDaisyBuildBlockStealer](families/cs-daisy-build-block-stealer/) | unknown | 1 | [1 retained](families/cs-daisy-build-block-stealer/#observed-log-variants) |
| [CSDaisyCloudStealer](families/cs-daisy-cloud-stealer/) | low | 1 | [1 retained](families/cs-daisy-cloud-stealer/#observed-log-variants) |
| [CSDashPlusSepStealer](families/cs-dash-plus-sep-stealer/) | unknown | 1 | [1 retained](families/cs-dash-plus-sep-stealer/#observed-log-variants) |
| [CSDashSectionStealer](families/cs-dash-section-stealer/) | low | 1 | [1 retained](families/cs-dash-section-stealer/#observed-log-variants) |
| [CSDataCollectedStealer](families/cs-data-collected-stealer/) | unknown | 1 | [1 retained](families/cs-data-collected-stealer/#observed-log-variants) |
| [CSDataMonkStealer](families/cs-data-monk-stealer/) | unknown | 1 | [1 retained](families/cs-data-monk-stealer/#observed-log-variants) |
| [CSDateCreatedStealer](families/cs-date-created-stealer/) | unknown | 0 | Metadata only |
| [CSDbscProtectedStealer](families/cs-dbsc-protected-stealer/) | unknown | 0 | Metadata only |
| [CSDiscordDataTokensStealer](families/cs-discord-data-tokens-stealer/) | unknown | 0 | Metadata only |
| [CSDualArchStealer](families/cs-dual-arch-stealer/) | unknown | 0 | Metadata only |
| [CSEduResultStealer](families/cs-edu-result-stealer/) | low | 0 | Metadata only |
| [CSEmojiCountStealer](families/cs-emoji-count-stealer/) | unknown | 1 | [1 retained](families/cs-emoji-count-stealer/#observed-log-variants) |
| [CSEmojiInfoStealer](families/cs-emoji-info-stealer/) | unknown | 1 | [1 retained](families/cs-emoji-info-stealer/#observed-log-variants) |
| [CSEnvVarDumpStealer](families/cs-env-var-dump-stealer/) | unknown | 1 | [1 retained](families/cs-env-var-dump-stealer/#observed-log-variants) |
| [CSEssentialMacStealer](families/cs-essential-mac-stealer/) | unknown | 0 | Metadata only |
| [CSEvelatedTypoInfoStealer](families/cs-evelated-typo-info-stealer/) | unknown | 0 | Metadata only |
| [CSExceptionCookiesOnlyStealer](families/cs-exception-cookies-only-stealer/) | unknown | 0 | Metadata only |
| [CSExePathInfoStealer](families/cs-exe-path-info-stealer/) | unknown | 0 | Metadata only |
| [CSFacebookMarketStealer](families/cs-facebook-market-stealer/) | unknown | 1 | [1 retained](families/cs-facebook-market-stealer/#observed-log-variants) |
| [CSFacebookProfileStealer](families/cs-facebook-profile-stealer/) | low | 1 | [1 retained](families/cs-facebook-profile-stealer/#observed-log-variants) |
| [CSFateTrafficInfoStealer](families/cs-fate-traffic-info-stealer/) | unknown | 1 | [1 retained](families/cs-fate-traffic-info-stealer/#observed-log-variants) |
| [CSFateTrafficPyGrabberStealer](families/cs-fate-traffic-py-grabber-stealer/) | unknown | 1 | [1 retained](families/cs-fate-traffic-py-grabber-stealer/#observed-log-variants) |
| [CSFilesStolenStealer](families/cs-files-stolen-stealer/) | unknown | 0 | Metadata only |
| [CSFlatMacBradmaxStealer](families/cs-flat-mac-bradmax-stealer/) | low | 0 | Metadata only |
| [CSFlatMacProfilerStealer](families/cs-flat-mac-profiler-stealer/) | low | 3 | [3 retained](families/cs-flat-mac-profiler-stealer/#observed-log-variants) |
| [CSFlatRemusStealer](families/cs-flat-remus-stealer/) | low | 0 | Metadata only |
| [CSForzaTrafficStealer](families/cs-forza-traffic-stealer/) | unknown | 1 | [1 retained](families/cs-forza-traffic-stealer/#observed-log-variants) |
| [CSGADSPanelStealer](families/csgads-panel-stealer/) | unknown | 1 | [1 retained](families/csgads-panel-stealer/#observed-log-variants) |
| [CSGeoSysInfoStealer](families/cs-geo-sys-info-stealer/) | unknown | 1 | [1 retained](families/cs-geo-sys-info-stealer/#observed-log-variants) |
| [CSGoRuntimeStealer](families/cs-go-runtime-stealer/) | unknown | 1 | [1 retained](families/cs-go-runtime-stealer/#observed-log-variants) |
| [CSGuidRedlineStealer](families/cs-guid-redline-stealer/) | unknown | 0 | Metadata only |
| [CSHardwareTailStealer](families/cs-hardware-tail-stealer/) | low | 1 | [1 retained](families/cs-hardware-tail-stealer/#observed-log-variants) |
| [CSHostHwidStealer](families/cs-host-hwid-stealer/) | unknown | 1 | [1 retained](families/cs-host-hwid-stealer/#observed-log-variants) |
| [CSImportantFilesOnlyStealer](families/cs-important-files-only-stealer/) | unknown | 0 | Metadata only |
| [CSInfoNetworkSectionStealer](families/cs-info-network-section-stealer/) | unknown | 0 | Metadata only |
| [CSInternalIpStealer](families/cs-internal-ip-stealer/) | unknown | 0 | Metadata only |
| [CSInzExtStealer](families/cs-inz-ext-stealer/) | unknown | 1 | [1 retained](families/cs-inz-ext-stealer/#observed-log-variants) |
| [CSJohnDoeProjectStealer](families/cs-john-doe-project-stealer/) | unknown | 0 | Metadata only |
| [CSJohnsHubStealer](families/cs-johns-hub-stealer/) | unknown | 0 | Metadata only |
| [CSJsonCookiesOnlyStealer](families/cs-json-cookies-only-stealer/) | unknown | 0 | Metadata only |
| [CSLcidBracketStealer](families/cs-lcid-bracket-stealer/) | unknown | 1 | [1 retained](families/cs-lcid-bracket-stealer/#observed-log-variants) |
| [CSLeakClickCloudCookiesStealer](families/cs-leak-click-cloud-cookies-stealer/) | unknown | 0 | Metadata only |
| [CSLoginsPathStealer](families/cs-logins-path-stealer/) | unknown | 0 | Metadata only |
| [CSMacBareGeoStealer](families/cs-mac-bare-geo-stealer/) | unknown | 0 | Metadata only |
| [CSMacKeychainPassStealer](families/cs-mac-keychain-pass-stealer/) | unknown | 1 | [1 retained](families/cs-mac-keychain-pass-stealer/#observed-log-variants) |
| [CSMacUserinfoStealer](families/cs-mac-userinfo-stealer/) | unknown | 1 | [1 retained](families/cs-mac-userinfo-stealer/#observed-log-variants) |
| [CSMainLootStealer](families/cs-main-loot-stealer/) | low | 1 | [1 retained](families/cs-main-loot-stealer/#observed-log-variants) |
| [CSMatchesFilterStealer](families/cs-matches-filter-stealer/) | unknown | 1 | [1 retained](families/cs-matches-filter-stealer/#observed-log-variants) |
| [CSMinimalGeoStealer](families/cs-minimal-geo-stealer/) | unknown | 0 | Metadata only |
| [CSMinutesFromGmtStealer](families/cs-minutes-from-gmt-stealer/) | unknown | 0 | Metadata only |
| [CSMrdUidStealer](families/cs-mrd-uid-stealer/) | unknown | 2 | [2 retained](families/cs-mrd-uid-stealer/#observed-log-variants) |
| [CSMSKDateStealer](families/csmsk-date-stealer/) | unknown | 0 | Metadata only |
| [CSMultiAppCredBundleStealer](families/cs-multi-app-cred-bundle-stealer/) | unknown | 0 | Metadata only |
| [CSNetflixCookiesStealer](families/cs-netflix-cookies-stealer/) | unknown | 0 | Metadata only |
| [CSNewLogStealer](families/cs-new-log-stealer/) | unknown | 0 | Metadata only |
| [CSNovyiLogStealer](families/cs-novyi-log-stealer/) | unknown | 1 | [1 retained](families/cs-novyi-log-stealer/#observed-log-variants) |
| [CSOlsonTzGeoStealer](families/cs-olson-tz-geo-stealer/) | unknown | 0 | Metadata only |
| [CSOneGoStealer](families/cs-one-go-stealer/) | unknown | 0 | Metadata only |
| [CSOttomanPanelStealer](families/cs-ottoman-panel-stealer/) | low | 1 | [1 retained](families/cs-ottoman-panel-stealer/#observed-log-variants) |
| [CSParsedUnknownStealer](families/cs-parsed-unknown-stealer/) | unknown | 0 | Metadata only |
| [CSPcNameSnakeStealer](families/cs-pc-name-snake-stealer/) | unknown | 1 | [1 retained](families/cs-pc-name-snake-stealer/#observed-log-variants) |
| [CSPlateformExploitationStealer](families/cs-plateform-exploitation-stealer/) | unknown | 0 | Metadata only |
| [CSPlutusStealer](families/cs-plutus-stealer/) | unknown | 0 | Metadata only |
| [CSProcessElevationStealer](families/cs-process-elevation-stealer/) | medium | 0 | Metadata only |
| [CSPyHostTimeStealer](families/cs-py-host-time-stealer/) | unknown | 0 | Metadata only |
| [CSRFDStealer](families/csrfd-stealer/) | unknown | 0 | Metadata only |
| [CSRoyCloudInfoStealer](families/cs-roy-cloud-info-stealer/) | unknown | 1 | [1 retained](families/cs-roy-cloud-info-stealer/#observed-log-variants) |
| [CSSigInfoStealer](families/cs-sig-info-stealer/) | low | 3 | [3 retained](families/cs-sig-info-stealer/#observed-log-variants) |
| [CSSlurmCloudStealer](families/cs-slurm-cloud-stealer/) | unknown | 0 | Metadata only |
| [CSSoftHostStealer](families/cs-soft-host-stealer/) | unknown | 0 | Metadata only |
| [CSSoftUrlPassStealer](families/cs-soft-url-pass-stealer/) | unknown | 0 | Metadata only |
| [CSSoftwareTailStealer](families/cs-software-tail-stealer/) | unknown | 1 | [1 retained](families/cs-software-tail-stealer/#observed-log-variants) |
| [CSStartBuildInfoStealer](families/cs-start-build-info-stealer/) | unknown | 0 | Metadata only |
| [CSStatsSectionStealer](families/cs-stats-section-stealer/) | unknown | 1 | [1 retained](families/cs-stats-section-stealer/#observed-log-variants) |
| [CSStealerCloudInfoStealer](families/cs-stealer-cloud-info-stealer/) | low | 2 | [2 retained](families/cs-stealer-cloud-info-stealer/#observed-log-variants) |
| [CSStealerCloudUserInfoStealer](families/cs-stealer-cloud-user-info-stealer/) | low | 1 | [1 retained](families/cs-stealer-cloud-user-info-stealer/#observed-log-variants) |
| [CSSystemRegionStealer](families/cs-system-region-stealer/) | unknown | 0 | Metadata only |
| [CSSystemSummaryStealer](families/cs-system-summary-stealer/) | unknown | 0 | Metadata only |
| [CSTaggedInfoStealer](families/cs-tagged-info-stealer/) | unknown | 1 | [1 retained](families/cs-tagged-info-stealer/#observed-log-variants) |
| [CSTagRegionStealer](families/cs-tag-region-stealer/) | unknown | 0 | Metadata only |
| [CSTikTokAccountStealer](families/cs-tik-tok-account-stealer/) | unknown | 0 | Metadata only |
| [CSTop20ProcStealer](families/cs-top20-proc-stealer/) | unknown | 0 | Metadata only |
| [CSTxtFilesPartStealer](families/cs-txt-files-part-stealer/) | unknown | 1 | [1 retained](families/cs-txt-files-part-stealer/#observed-log-variants) |
| [CSUrlUserPassFromStealer](families/cs-url-user-pass-from-stealer/) | unknown | 0 | Metadata only |
| [CSUserInfoBracketStealer](families/cs-user-info-bracket-stealer/) | unknown | 5 | [5 retained](families/cs-user-info-bracket-stealer/#observed-log-variants) |
| [CSUsersListStealer](families/cs-users-list-stealer/) | unknown | 1 | [1 retained](families/cs-users-list-stealer/#observed-log-variants) |
| [CSWifiBackslashNStealer](families/cs-wifi-backslash-n-stealer/) | unknown | 0 | Metadata only |
| [CSWLFRCloudStealer](families/cswlfr-cloud-stealer/) | unknown | 1 | [1 retained](families/cswlfr-cloud-stealer/#observed-log-variants) |
| [CSWmicDumpStealer](families/cs-wmic-dump-stealer/) | unknown | 1 | [1 retained](families/cs-wmic-dump-stealer/#observed-log-variants) |
| [CSX3zeroBotStealer](families/csx3zero-bot-stealer/) | unknown | 0 | Metadata only |
| [DiskInfo Stealer](families/disk-info-stealer/) | unknown | 1 | [1 retained](families/disk-info-stealer/#observed-log-variants) |
| [Minimal Stealer](families/minimal-stealer/) | unknown | 1 | [1 retained](families/minimal-stealer/#observed-log-variants) |
| [PCInfo Stealer](families/pc-info-stealer/) | unknown | 1 | [1 retained](families/pc-info-stealer/#observed-log-variants) |
| [PyInfo Stealer](families/py-info-stealer/) | unknown | 1 | [1 retained](families/py-info-stealer/#observed-log-variants) |
| [RedlineLike Stealer](families/redline-like-stealer/) | unknown | 7 | [7 retained](families/redline-like-stealer/#observed-log-variants) |

### Mapped family variants (11)

| Profile | Confidence | Variants | Sample status |
|---|---|---:|---|
| [CSALStealer](families/csal-stealer/) → [lumma](families/lumma/) | medium | 1 | [1 retained](families/csal-stealer/#observed-log-variants) |
| [CSBabaCloudStealer](families/cs-baba-cloud-stealer/) → [vidar](families/vidar/) | medium | 2 | [2 retained](families/cs-baba-cloud-stealer/#observed-log-variants) |
| [CSBabaStealer](families/cs-baba-stealer/) → [lumma](families/lumma/) | high | 1 | [1 retained](families/cs-baba-stealer/#observed-log-variants) |
| [CSDarkSideCloudStealer](families/cs-dark-side-cloud-stealer/) → [redline](families/redline/) | high | 0 | Metadata only |
| [CSDeimosStealer](families/cs-deimos-stealer/) → [lumma](families/lumma/) | medium | 1 | [1 retained](families/cs-deimos-stealer/#observed-log-variants) |
| [CSEnchantCloudStealer](families/cs-enchant-cloud-stealer/) → [redline](families/redline/) | high | 0 | Metadata only |
| [CSGeoBoxStealer](families/cs-geo-box-stealer/) → [redline](families/redline/) | high | 0 | Metadata only |
| [CSHunterCloudStealer](families/cs-hunter-cloud-stealer/) → [redline](families/redline/) | high | 1 | [1 retained](families/cs-hunter-cloud-stealer/#observed-log-variants) |
| [CSKortexStealer](families/cs-kortex-stealer/) → [lumma](families/lumma/) | low | 0 | Metadata only |
| [CSPrimoCloudStealer](families/cs-primo-cloud-stealer/) → [redline](families/redline/) | high | 1 | [1 retained](families/cs-primo-cloud-stealer/#observed-log-variants) |
| [CSRedhiveStealer](families/cs-redhive-stealer/) → [lumma](families/lumma/) | high | 1 | [1 retained](families/cs-redhive-stealer/#observed-log-variants) |

### Log aggregators (5)

| Profile | Confidence | Variants | Sample status |
|---|---|---:|---|
| [Bugatti Cloud](families/bugatti-cloud/) | unknown | 1 | [1 retained](families/bugatti-cloud/#observed-log-variants) |
| [CSArtHouseCloudStealer](families/cs-art-house-cloud-stealer/) | unknown | 0 | Metadata only |
| [CSCashFlowStealer](families/cs-cash-flow-stealer/) | unknown | 0 | Metadata only |
| [CSPixelCloudStealer](families/cs-pixel-cloud-stealer/) | unknown | 1 | [1 retained](families/cs-pixel-cloud-stealer/#observed-log-variants) |
| [CSRussia34Stealer](families/cs-russia34-stealer/) | unknown | 2 | [2 retained](families/cs-russia34-stealer/#observed-log-variants) |

## Naming and evidence

An **observed self-label** is a name printed by a log or its panel that has not yet been established as a canonical family by independent research. A **CyStack tracking name** denotes a repeatable, useful log structure for which public attribution is not yet strong enough. A **family variant** is a CyStack name that has since been linked to a known parent. An **aggregator** describes a distribution or panel grouping that can contain multiple families.

Family descriptions and detection notes are maintained by CyStack Threat Intelligence. Samples retain useful layout, spelling, separators, field order, and malware/panel markers while direct victim secrets are scrubbed.
Each sample lives under its stable variant directory. Its basename is either `sample.txt` or the sanitized observed basename; original artifact basename patterns remain in each variant's **Observed filenames** field.

## Research process

CyStack Threat Intelligence adds a variant only after its structure has been confirmed, its representative sample has been scrubbed, and the record has been deduplicated and validated against the current catalog.

## Working with the data

The machine-readable source for each profile is its `family.json`; the adjacent README and this index are generated from those records. See [CONTRIBUTING.md](CONTRIBUTING.md) for corrections or new evidence.

Top-level descriptive fields in `family.json` are canonical English. The `localizations.vi` object carries a complete, positionally aligned Vietnamese translation without changing stable IDs or evidence fields.

`format_id` is a catalog-wide stable public identifier for a log structure; each `v_...` value is an opaque catalog-wide stable variant identifier and should not be recalculated. A sample with `source: cystack_collection` was retained from the CyStack Threat Intelligence research collection and scrubbed before publication.

```console
python tools/catalog.py validate
python tools/catalog.py build --check
```
