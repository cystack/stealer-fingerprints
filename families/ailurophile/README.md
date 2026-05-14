# Ailurophile

Ailurophile is a subscription-style info-stealer first publicly
documented in August 2024 by Cyfirma and G DATA. The stub is
PHP-coded, packaged into a Windows PE with ExeOutput, and then
virtualized with BoxedApp. Operators configure each build
through the family's own web panel, which lets them pick the
extension list, the folder list, and the filename keyword list
that drive the on-victim file grabber. Reports are sent to the
Telegram chat configured at build time.

The on-victim staging directory is `%LOCALAPPDATA%\Ailurophile`,
and the system summary is a flat `Key: Value` `info.txt` whose
distinctive fields are `Allowed Extensions:`, `Folders to
Search:`, `PC Type:`, and `Screen Resolution:`.

**Also known as:** `Ailurophile Stealer`

**Variants observed:** 1
**Top attribution confidence:** `high`
**Operator panel brands:** `HORUS B13`
**Distribution channels:** `@HORUS B13`

## Targets

- Browser saved credentials, cookies, autofill, history
- Credit card data from browser autofill
- Crypto wallet extensions and desktop clients
- Generic file grabber driven by configurable keyword and extension lists

## Variants

### `HORUS B13`

**Fingerprint id:** `horus_b13`

**Distribution channel:** `@HORUS B13`

**Attribution confidence:** `high`

**Field keys:**
`Allowed Extensions`, `Architecture`, `Browsers`, `Chrome Default - version`, `Country`, `Edge Default - version`, `File Path`, `Files`, `Folders to Search`, `HORUS B13`, `Hostname`, `IP`, `MAC Address`, `Main Path`, `PC Type`, `Screen Resolution`

**Filenames:** `info.txt`

**Sample (sanitized):**

```
HORUS B13: @HORUS B13

IP: <redacted>
Country: United States
Hostname: <redacted>
PC Type: Microsoft Windows Server 2019 Datacenter 10.0.17763
Architecture: amd64
File Path: C:\xampp\htdocs\ailurophilego\crypt
Main Path: C:\Users\<user>\AppData\Local\Ailurophile
Allowed Extensions: [rdp txt doc docx pdf csv xls xlsx keys ldb log]
Folders to Search: [Documents Desktop Downloads]
Files: [secret password account tax key wallet gang default backup passw mdp motdepasse acc mot_de_passe login secret bot atomic account acount paypal banque bot metamask wallet crypto exodus discord 2fa code memo compte token backup secret seed mnemonic memoric private key passphrase pass phrase steal bank info casino prv privé prive telegram identifiant identifiants personnel trading bitcoin sauvegarde funds recup note]
MAC Address: <redacted>
Screen Resolution: 1680x1050
Browsers:
Chrome Default - version: 143.0.7499.170
```

## Detection

The combination of `Allowed Extensions:` and `Folders to Search:`
line-anchored is the canonical fingerprint and matches the
public ail-project YARA rule. Operator rebrands prepend an
extra banner line like `HORUS B13: @HORUS B13` above the
canonical block: the underlying fields are identical, so
attribution stays under `Ailurophile` and the banner surfaces
through `panel_brand` and `distribution_channel`. False-positive
risk is low because no other family in this catalog emits the
paired `Allowed Extensions:` / `Folders to Search:` keys.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## References

- https://www.cyfirma.com/research/ailurophile-stealer/
- https://blog.gdatasoftware.com/2024/08/38005-ailurophile-infostealer
- https://github.com/ail-project/ail-yara-rules/blob/master/rules/stealer/ailurophile.yara
