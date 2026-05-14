// YARA rules for Aetheris Stealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule Aetheris_Stealer_cystack_0f67ab2e
{
    meta:
        family = "Aetheris Stealer"
        fingerprint_id = "cystack_0f67ab2e"

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
        $key_15 = "Screen Resolution:" ascii
        $key_16 = "User:" ascii
        $key_17 = "User Domain:" ascii

    condition:
        all of ($key_*)
}

rule Aetheris_Stealer_cystack_3e0869cd
{
    meta:
        family = "Aetheris Stealer"
        fingerprint_id = "cystack_3e0869cd"

    strings:
        $key_0 = "Buildtag:" ascii
        $key_1 = "CPU Name:" ascii
        $key_2 = "Clipboard:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Default Gateway:" ascii
        $key_5 = "External IP:" ascii
        $key_6 = "FileLocation:" ascii
        $key_7 = "Hwid:" ascii
        $key_8 = "Input ISO:" ascii
        $key_9 = "Internal IP:" ascii
        $key_10 = "Keyboard:" ascii
        $key_11 = "Logical Cores:" ascii
        $key_12 = "Machine:" ascii
        $key_13 = "Now:" ascii
        $key_14 = "OS Arch:" ascii
        $key_15 = "OS Build:" ascii
        $key_16 = "OS Product:" ascii
        $key_17 = "RAM Available (MB):" ascii
        $key_18 = "RAM Total (MB):" ascii
        $key_19 = "Screensize:" ascii
        $key_20 = "System Language:" ascii
        $key_21 = "User:" ascii
        $key_22 = "User Domain:" ascii

    condition:
        all of ($key_*)
}

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
