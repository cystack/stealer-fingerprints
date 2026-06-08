// YARA rules for MacSync.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule MacSync_cystack_4897375d
{
    meta:
        family = "MacSync"
        fingerprint_id = "cystack_4897375d"

    strings:
        $key_0 = "Build Tag:" ascii
        $key_1 = "Graphics/Displays:" ascii
        $key_2 = "Hardware:" ascii
        $key_3 = "Password:" ascii
        $key_4 = "Software:" ascii
        $key_5 = "Username:" ascii

    condition:
        all of ($key_*)
}

rule MacSync_cystack_612c23b8
{
    meta:
        family = "MacSync"
        fingerprint_id = "cystack_612c23b8"

    strings:
        $key_0 = "Build Tag:" ascii
        $key_1 = "Graphics/Displays:" ascii
        $key_2 = "Hardware:" ascii
        $key_3 = "IP:" ascii
        $key_4 = "Password:" ascii
        $key_5 = "Software:" ascii
        $key_6 = "Username:" ascii
        $key_7 = "Version:" ascii

    condition:
        all of ($key_*)
}

rule MacSync_cystack_c6bf9b88
{
    meta:
        family = "MacSync"
        fingerprint_id = "cystack_c6bf9b88"

    strings:
        $key_0 = "Build Tag:" ascii
        $key_1 = "Graphics/Displays:" ascii
        $key_2 = "Hardware:" ascii
        $key_3 = "Password:" ascii
        $key_4 = "Software:" ascii
        $key_5 = "Username:" ascii
        $key_6 = "Version:" ascii

    condition:
        all of ($key_*)
}

rule MacSync_mac_c
{
    meta:
        family = "MacSync"
        fingerprint_id = "mac_c"

    strings:
        $key_0 = "Build Tag:" ascii
        $key_1 = "Graphics/Displays:" ascii
        $key_2 = "Hardware:" ascii
        $key_3 = "Password:" ascii
        $key_4 = "Software:" ascii
        $key_5 = "Username:" ascii
        $key_6 = "Version:" ascii

    condition:
        all of ($key_*)
}
