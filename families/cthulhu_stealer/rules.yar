// YARA rules for Cthulhu Stealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule Cthulhu_Stealer_cystack_72d91b19
{
    meta:
        family = "Cthulhu Stealer"
        fingerprint_id = "cystack_72d91b19"

    strings:
        $key_0 = "BuildID:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Graphics/Displays:" ascii
        $key_4 = "Hardware:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "MetaMask Info:" ascii
        $key_7 = "Software:" ascii
        $key_8 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule Cthulhu_Stealer_cystack_cd0458aa
{
    meta:
        family = "Cthulhu Stealer"
        fingerprint_id = "cystack_cd0458aa"

    strings:
        $key_0 = "BuildID:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Debanks:" ascii
        $key_4 = "Graphics/Displays:" ascii
        $key_5 = "Hardware:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "MetaMask Info:" ascii
        $key_8 = "Software:" ascii
        $key_9 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}
