// YARA rules for Raccoon.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule Raccoon_cystack_143f8a91
{
    meta:
        family = "Raccoon"
        fingerprint_id = "cystack_143f8a91"

    strings:
        $key_0 = "Build:" ascii
        $key_1 = "IP info:" ascii
        $key_2 = "Installed applications:" ascii
        $key_3 = "Last seen:" ascii
        $key_4 = "System Information:" ascii
        $key_5 = "User ID:" ascii

    condition:
        all of ($key_*)
}
