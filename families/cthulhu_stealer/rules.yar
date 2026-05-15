// YARA rules for Cthulhu Stealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule Cthulhu_Stealer_cystack_161680a5
{
    meta:
        family = "Cthulhu Stealer"
        fingerprint_id = "cystack_161680a5"

    strings:
        $key_0 = "Apple M3:" ascii
        $key_1 = "BuildID:" ascii
        $key_2 = "City:" ascii
        $key_3 = "Color LCD:" ascii
        $key_4 = "Country:" ascii
        $key_5 = "Debanks:" ascii
        $key_6 = "Graphics/Displays:" ascii
        $key_7 = "Hardware:" ascii
        $key_8 = "Hardware Overview:" ascii
        $key_9 = "IP:" ascii
        $key_10 = "MetaMask Info:" ascii
        $key_11 = "Software:" ascii
        $key_12 = "System Software Overview:" ascii
        $key_13 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

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

rule Cthulhu_Stealer_cystack_d48169df
{
    meta:
        family = "Cthulhu Stealer"
        fingerprint_id = "cystack_d48169df"

    strings:
        $key_0 = "BuildID:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Hardware:" ascii
        $key_4 = "IP:" ascii
        $key_5 = "MetaMask Info:" ascii
        $key_6 = "Software:" ascii
        $key_7 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule Cthulhu_Stealer_cystack_f6f1b312
{
    meta:
        family = "Cthulhu Stealer"
        fingerprint_id = "cystack_f6f1b312"

    strings:
        $key_0 = "Apple M4:" ascii
        $key_1 = "BuildID:" ascii
        $key_2 = "City:" ascii
        $key_3 = "Color LCD:" ascii
        $key_4 = "Country:" ascii
        $key_5 = "Debanks:" ascii
        $key_6 = "Graphics/Displays:" ascii
        $key_7 = "Hardware:" ascii
        $key_8 = "Hardware Overview:" ascii
        $key_9 = "IP:" ascii
        $key_10 = "MetaMask Info:" ascii
        $key_11 = "Software:" ascii
        $key_12 = "System Software Overview:" ascii
        $key_13 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}
