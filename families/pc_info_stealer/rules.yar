// YARA rules for PCInfo Stealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule PCInfo_Stealer_cystack_47382a1a
{
    meta:
        family = "PCInfo Stealer"
        fingerprint_id = "cystack_47382a1a"

    strings:
        $key_0 = "CPU:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "HWID:" ascii
        $key_3 = "IP:" ascii
        $key_4 = "MAC:" ascii
        $key_5 = "PC Name:" ascii
        $key_6 = "PC Username:" ascii
        $key_7 = "RAM:" ascii
        $key_8 = "Resolution:" ascii

    condition:
        all of ($key_*)
}

rule PCInfo_Stealer_cystack_b27f73d9
{
    meta:
        family = "PCInfo Stealer"
        fingerprint_id = "cystack_b27f73d9"

    strings:
        $key_0 = "CPU:" ascii
        $key_1 = "HWID:" ascii
        $key_2 = "IP:" ascii
        $key_3 = "MAC:" ascii
        $key_4 = "PC Name:" ascii
        $key_5 = "PC Username:" ascii
        $key_6 = "RAM:" ascii
        $key_7 = "Resolution:" ascii

    condition:
        all of ($key_*)
}
