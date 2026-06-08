// YARA rules for CSStealerCloudInfoStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSStealerCloudInfoStealer_stealercloud
{
    meta:
        family = "CSStealerCloudInfoStealer"
        fingerprint_id = "stealercloud"

    strings:
        $key_0 = "CPU:" ascii
        $key_1 = "Category:" ascii
        $key_2 = "Cores/Threads:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Displays:" ascii
        $key_5 = "GPU:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Path:" ascii
        $key_8 = "RAM:" ascii

    condition:
        all of ($key_*)
}
