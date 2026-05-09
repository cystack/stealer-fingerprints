// YARA rules for Aetheris Stealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule Aetheris_Stealer_cystack_5f8f9b68
{
    meta:
        family = "Aetheris Stealer"
        fingerprint_id = "cystack_5f8f9b68"

    strings:
        $key_0 = "CPU Name:" ascii
        $key_1 = "Clipboard:" ascii
        $key_2 = "Default Gateway:" ascii
        $key_3 = "External IP:" ascii
        $key_4 = "Hwid:" ascii
        $key_5 = "Input ISO:" ascii
        $key_6 = "Internal IP:" ascii
        $key_7 = "Logical Cores:" ascii
        $key_8 = "Machine:" ascii
        $key_9 = "Now:" ascii
        $key_10 = "OS Arch:" ascii
        $key_11 = "OS Build:" ascii
        $key_12 = "OS Product:" ascii
        $key_13 = "RAM Available (MB):" ascii
        $key_14 = "RAM Total (MB):" ascii
        $key_15 = "User:" ascii
        $key_16 = "User Domain:" ascii

    condition:
        all of ($key_*)
}
