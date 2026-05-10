// YARA rules for CSBareVersionStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSBareVersionStealer_bare_version_line_build_block_stripped
{
    meta:
        family = "CSBareVersionStealer"
        fingerprint_id = "bare_version_line_build_block_stripped"

    strings:
        $key_0 = "Active window:" ascii
        $key_1 = "Admin rights:" ascii
        $key_2 = "Build Comment:" ascii
        $key_3 = "CPU:" ascii
        $key_4 = "GEO:" ascii
        $key_5 = "GPU:" ascii
        $key_6 = "HWID:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "Memory:" ascii
        $key_9 = "OS:" ascii
        $key_10 = "PC Name:" ascii
        $key_11 = "User Name:" ascii

    condition:
        all of ($key_*)
}
