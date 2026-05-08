// YARA rules for CSBuildBlockStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSBuildBlockStealer_cystack_4d2b2a7e
{
    meta:
        family = "CSBuildBlockStealer"
        fingerprint_id = "cystack_4d2b2a7e"

    strings:
        $key_0 = "Active window:" ascii
        $key_1 = "Admin rights:" ascii
        $key_2 = "Build Comment:" ascii
        $key_3 = "Build ID:" ascii
        $key_4 = "Build Path:" ascii
        $key_5 = "Build Version:" ascii
        $key_6 = "CPU:" ascii
        $key_7 = "GEO:" ascii
        $key_8 = "GPU:" ascii
        $key_9 = "HWID:" ascii
        $key_10 = "IP:" ascii
        $key_11 = "Memory:" ascii
        $key_12 = "OS:" ascii
        $key_13 = "PC Name:" ascii
        $key_14 = "Resolution:" ascii
        $key_15 = "User Name:" ascii
        $key_16 = "User time:" ascii

    condition:
        all of ($key_*)
}
