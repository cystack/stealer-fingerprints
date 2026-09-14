# CSCardTargetStealer

CSCardTargetStealer is a CyStack-coined identifier for a
4- or 5-line `CN/DATE/NAME/TARGET[/CVV]` credit-card
cred-file shape distributed inside `@BRADLOGS / BRADMAX`
aggregator packs. Observed in `!! 2025 NOV.part001.rar`
at `[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/CreditCards/
CC_Edge_Profile <N>.txt` and in the sibling
`!! 2025 MARCH.part001.rar` packs at
`[<TAG>]@MAXERSTE (@BRADMAX) (<NN>)/CreditCards/
CC_Chrome_Profile <N>.txt` victim folders. Each cred
file holds exactly one card record in a per-browser-profile split (50-80 byte file size), so a typical
victim folder ships multiple `CC_<Browser>_Profile
1.txt` / `2.txt` / `3.txt` files alongside any saved-card variants from other browser profiles.

The label sequence in uppercase casing
(`CN:` / `DATE:` / `NAME:` / `TARGET:` and an optional
`CVV:`) is the disambiguating signal. `CN:` is short
for card number (16-digit PAN), `DATE:` carries the
expiry in `M/YYYY` or `MM/YYYY` form, `NAME:` is the
cardholder name (frequently empty when the browser
stored only the number), `TARGET:` is the merchant or
website where the card was used, and the optional
`CVV:` is the 3-digit security code. The panel drops
the `CVV:` line entirely when the browser stored only
the PAN and expiry, producing a 4-line block ending at
`TARGET:`. Family attribution is provisional pending a
published threat-intel mapping for this layout. The
format is distinct from the Millenium RAT
`CreditCards.txt` (``Browser/Name/Number/Expire``
labels with the ``------ Credit Cards ------`` banner,
iter#6/#13) and from the canonical PXA Stealer credit-card dump (per-browser JSON in the PXA Telegram
captions).

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX CC_Edge_Profile cred-file split`, `BRADMAX CC_Chrome_Profile cred-file split`, `4-line CN/DATE/NAME/TARGET credit-card block`, `5-line CN/DATE/NAME/TARGET/CVV credit-card block`
- Variants observed: **0**

## What it targets

- Saved credit cards from Microsoft Edge browser profiles
- Saved credit cards from Chrome browser profiles
- Card PAN (CN), expiry (DATE), cardholder name (NAME)
- Merchant or website where the card was used (TARGET)
- Card verification value (CVV), when present

## Detection notes

Fingerprint requires a single 4- or 5-line block
matching `CN: / DATE: / NAME: / TARGET: [/ CVV:]` with
the specific uppercase casing. The trailing `CVV:`
line is optional: a 4-line block ending at `TARGET:`
covers cards saved without a security code. One match
is sufficient because each cred file holds exactly one
card. The `CN:` + `TARGET:` label pair is unique
across the registry: Millenium RAT uses
`Browser/Name/Number/Expire` and ships its dashed-banner header; canonical
PXA Stealer ships cards as JSON in Telegram captions,
not as 4- or 5-line text blocks. During triage, treat
the IOC as a confirmed saved-card exfiltration even
when individual fields (`NAME:`, `TARGET:`, `CVV:`)
are blank or absent: the browser may have stored only
partial card data, but the PAN and expiry pair is
sufficient to flag the victim for downstream review
and adding the CVV (when present) makes the record
directly usable for card-not-present fraud.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- [PXA Stealer](../pxa-stealer/)
- [CSAppProfileStealer](../cs-app-profile-stealer/)
- [CSDateCreatedStealer](../cs-date-created-stealer/)

## Related external families

- `millenium-rat`

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
