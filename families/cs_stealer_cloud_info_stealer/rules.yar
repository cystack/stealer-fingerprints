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
        $key_0 = "Build ID:" ascii
        $key_1 = "CPU:" ascii
        $key_2 = "Category:" ascii
        $key_3 = "Computer:" ascii
        $key_4 = "Cores/Threads:" ascii
        $key_5 = "Country:" ascii
        $key_6 = "Displays:" ascii
        $key_7 = "GPU:" ascii
        $key_8 = "HWID:" ascii
        $key_9 = "IP:" ascii
        $key_10 = "Keyboards:" ascii
        $key_11 = "Language:" ascii
        $key_12 = "Local Time:" ascii
        $key_13 = "OS:" ascii
        $key_14 = "Path:" ascii
        $key_15 = "RAM:" ascii
        $key_16 = "Reserve link:" ascii
        $key_17 = "System:" ascii
        $key_18 = "Timezone:" ascii
        $key_19 = "UTC Time:" ascii
        $key_20 = "Username:" ascii

    condition:
        all of ($key_*)
}
