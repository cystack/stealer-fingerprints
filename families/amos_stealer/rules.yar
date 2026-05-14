// YARA rules for AMOS Stealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule AMOS_Stealer_cystack_3311417f
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_3311417f"

    strings:
        $key_0 = "AMD Radeon Pro 5500M:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Color LCD:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Debanks:" ascii
        $key_5 = "Graphics/Displays:" ascii
        $key_6 = "Hardware:" ascii
        $key_7 = "Hardware Overview:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "Intel UHD Graphics 630:" ascii
        $key_10 = "MetaMask Info:" ascii
        $key_11 = "Software:" ascii
        $key_12 = "System Software Overview:" ascii
        $key_13 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_4a8d83d3
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_4a8d83d3"

    strings:
        $key_0 = "City:" ascii
        $key_1 = "Color LCD:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Debanks:" ascii
        $key_4 = "Graphics/Displays:" ascii
        $key_5 = "Hardware:" ascii
        $key_6 = "Hardware Overview:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "Intel Iris Graphics 6100:" ascii
        $key_9 = "MetaMask Info:" ascii
        $key_10 = "Software:" ascii
        $key_11 = "System Software Overview:" ascii
        $key_12 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}
