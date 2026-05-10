// YARA rules for CSBuildBlockStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSBuildBlockStealer_4_key_build_block_path_id_version_commen
{
    meta:
        family = "CSBuildBlockStealer"
        fingerprint_id = "4_key_build_block_path_id_version_commen"

    strings:
        $key_0 = "Active window:" ascii
        $key_1 = "Admin rights:" ascii
        $key_2 = "Build Comment:" ascii
        $key_3 = "Build Path:" ascii
        $key_4 = "Build Version:" ascii
        $key_5 = "CPU:" ascii
        $key_6 = "GEO:" ascii
        $key_7 = "GPU:" ascii
        $key_8 = "HWID:" ascii
        $key_9 = "IP:" ascii
        $key_10 = "Memory:" ascii
        $key_11 = "OS:" ascii
        $key_12 = "PC Name:" ascii
        $key_13 = "User Name:" ascii
        $key_14 = "User time:" ascii

    condition:
        all of ($key_*)
}
