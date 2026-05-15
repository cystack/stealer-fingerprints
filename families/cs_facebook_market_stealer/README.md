# CSFacebookMarketStealer

CSFacebookMarketStealer is a CyStack-coined identifier for
a Facebook-account-resale marketplace listing emitted as
`Information.txt` inside `!! 2025 NOV.part001.rar`
`@BRADLOGS / BRADMAX` aggregator packs. Per-victim folders
follow the `[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/` layout.
The body is a four-line record: a 15-digit Facebook user
ID plus display name plus date of birth header, a crown
emoji pricing tier line, a related-pages line, and a raw
Facebook session cookie string carrying `c_user`, `xs`,
`datr`, `sb`, `fr`, `ps_l`, `ps_n`, `wd`.

The pricing-tier line uses U+1F451 `👑` followed by a
U+2219 `∙` BULLET OPERATOR separator chain that carries
asking price (with U+1F4B6 `💶` euro-banknote suffix), age
and ratio stats, trading currency, ISO 3166 country code,
a `TS[<n>-<m>]` trust-score bracket, and a U+2119 `ℙ`
category flag. The body is most likely a panel-side post-
processing artifact where a raw stealer cookie dump has
been converted into a resale listing for an underground
Facebook account marketplace. Family attribution is
provisional pending a published threat-intel mapping for
this layout. The closest documented relatives are
NodeStealer (Unit 42), SYS01 (Morphisec), and the Trend
Micro Facebook-Profile-Stealer write-ups: each collects
the `c_user` and `xs` cookie pair from Facebook accounts,
but none publishes a sample log showing this exact
emoji-tagged marketplace listing shape.

**Also known as:** `BRADMAX Facebook account marketplace listing`, `Crown-emoji Facebook resale Information.txt`

**Variants observed:** 1
**Top attribution confidence:** `unknown`
**Operator panel brands:** `BRADMAX`
**Distribution channels:** `@BRADLOGS`

## Targets

- Facebook user ID
- Facebook session cookies (`c_user`, `xs`, `datr`, `sb`, `fr`)
- Facebook account creation year and trust-score metadata
- Account display name and date of birth
- Related Facebook page IDs

## Variants

### `BRADMAX`

**Fingerprint id:** `bradmax`

**Distribution channel:** `@BRADLOGS`

**Attribution confidence:** `unknown`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
100000133698988|Asd1/1/1982|♻️|0
👑∙350💶∙5∙10.12∙0∙USD∙PE∙TS[0-0]∙ℙ|224340604|2011|2
🅿️∙112720720419076➖191087508817915|20167-21060|💲
wd=640x840; datr=SNyXZkhOxFXPhs9V3spnX2-o; sb=SZpYZxAjIRdQt1ElrmuaxgBo; c_user=100000133698988; ps_l=1; ps_n=1; fr=1fdSpk1mIPg1k8aTm.AWdBYtJ7mjmgcE7P0uvd2U4zC6AE2jhgghlg02vUzJi2u1c0Li4.BpI5o2..AAA.0.0.BpI5o2.AWeXMhMrhW2CqtHnWTAn5wQy4Pc; xs=38%3A7n_ifOZA1B6SOw%3A2%3A1763940911%3A-1%3A-1%3A%3AAcwrmDcGA3brZuRNKQVs4f7B2vL-cD2bB8OKFhXZSg
```

## Detection

Fingerprint requires U+1F451 `👑` crown glyph AND `c_user=`
AND `xs=` AND `datr=` cookie-name substrings. Four anchors
together cannot collide with any other registered parser:
the crown glyph alone rules out every system-info shape,
and the three Facebook session-cookie name substrings
rule out any non-Facebook artifact that happens to carry a
crown emoji. During triage, treat the raw `c_user`, `xs`,
and `datr` cookie values as exfiltrated session secrets
that grant attacker-side Facebook account takeover.
Family attribution is unknown: the underlying stealer
that scraped the original cookie dump has not been mapped
to this marketplace-listing layout in any surveyed CTI
source.

## MITRE ATT&CK

- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)

## Related families

- [`nodestealer`](../nodestealer/)
- [`sys01-stealer`](../sys01_stealer/)
- [`cs-facebook-profile-stealer`](../cs_facebook_profile_stealer/)
- [`cs-dash-plus-sep-stealer`](../cs_dash_plus_sep_stealer/)

## References

- https://blog.morphisec.com/sys01stealer-facebook-info-stealer
- https://unit42.paloaltonetworks.com/nodestealer-2-targets-facebook-business/
- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
- https://t.me/BRADLOGS
