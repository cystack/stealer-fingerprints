// YARA rules for PXA Stealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule PXA_Stealer_cystack_15c13fbc
{
    meta:
        family = "PXA Stealer"
        fingerprint_id = "cystack_15c13fbc"

    strings:
        $key_0 = "AntiVirus:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Data Information:" ascii
        $key_3 = "IP:" ascii
        $key_4 = "User:" ascii

    condition:
        all of ($key_*)
}

rule PXA_Stealer_cystack_724e1a44
{
    meta:
        family = "PXA Stealer"
        fingerprint_id = "cystack_724e1a44"

    strings:
        $key_0 = "AntiVirus:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Data Information:" ascii
        $key_3 = "IP:" ascii
        $key_4 = "Username:" ascii

    condition:
        all of ($key_*)
}

rule PXA_Stealer_cystack_94cdfe2d
{
    meta:
        family = "PXA Stealer"
        fingerprint_id = "cystack_94cdfe2d"

    strings:
        $key_0 = "AntiVirus:" ascii
        $key_1 = "Data Information:" ascii
        $key_2 = "IP:" ascii
        $key_3 = "Username:" ascii

    condition:
        all of ($key_*)
}
