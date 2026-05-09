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

rule MacSync_cystack_88fd83ff
{
    meta:
        family = "MacSync"
        fingerprint_id = "cystack_88fd83ff"

    strings:
        $key_0 = "Graphics/Displays:" ascii
        $key_1 = "Hardware:" ascii
        $key_2 = "Password:" ascii
        $key_3 = "Software:" ascii
        $key_4 = "Username:" ascii

    condition:
        all of ($key_*)
}
