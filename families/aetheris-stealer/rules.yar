// YARA rules for Aetheris Stealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule Aetheris_Stealer_cystack_026d1c92
{
    meta:
        family = "Aetheris Stealer"
        fingerprint_id = "cystack_026d1c92"

    strings:
        $key_0 = "Clipboard:" ascii
        $key_1 = "Hwid:" ascii
        $key_2 = "Input ISO:" ascii
        $key_3 = "Machine:" ascii
        $key_4 = "Now:" ascii
        $key_5 = "User:" ascii

    condition:
        all of ($key_*)
}

rule Aetheris_Stealer_cystack_2052a4d3
{
    meta:
        family = "Aetheris Stealer"
        fingerprint_id = "cystack_2052a4d3"

    strings:
        $key_0 = "CLR Version:" ascii
        $key_1 = "CPU Name:" ascii
        $key_2 = "Clipboard:" ascii
        $key_3 = "Default Gateway:" ascii
        $key_4 = "External IP:" ascii
        $key_5 = "Hwid:" ascii
        $key_6 = "Input ISO:" ascii
        $key_7 = "Internal IP:" ascii
        $key_8 = "Logical Cores:" ascii
        $key_9 = "Machine:" ascii
        $key_10 = "Now:" ascii
        $key_11 = "OS Arch:" ascii
        $key_12 = "OS Build:" ascii
        $key_13 = "OS Product:" ascii
        $key_14 = "RAM Available (MB):" ascii
        $key_15 = "RAM Total (MB):" ascii
        $key_16 = "User:" ascii
        $key_17 = "User Domain:" ascii

    condition:
        all of ($key_*)
}

rule Aetheris_Stealer_cystack_30092aaa
{
    meta:
        family = "Aetheris Stealer"
        fingerprint_id = "cystack_30092aaa"

    strings:
        $key_0 = "CLR Version:" ascii
        $key_1 = "User Domain:" ascii

    condition:
        all of ($key_*)
}

rule Aetheris_Stealer_cystack_f9f01b3a
{
    meta:
        family = "Aetheris Stealer"
        fingerprint_id = "cystack_f9f01b3a"

    strings:
        $key_0 = "CPU Name:" ascii
        $key_1 = "Hwid:" ascii

    condition:
        all of ($key_*)
}
