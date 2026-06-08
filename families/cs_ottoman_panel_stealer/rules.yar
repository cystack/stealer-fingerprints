// YARA rules for CSOttomanPanelStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSOttomanPanelStealer_ottoman
{
    meta:
        family = "CSOttomanPanelStealer"
        fingerprint_id = "ottoman"

    strings:
        $key_0 = "CPU:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Computer name:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "GPU:" ascii
        $key_5 = "HWID:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Installed antivirus:" ascii
        $key_8 = "Internet provider:" ascii
        $key_9 = "RAM:" ascii
        $key_10 = "Region:" ascii
        $key_11 = "Started as admin:" ascii
        $key_12 = "System:" ascii
        $key_13 = "System time:" ascii
        $key_14 = "User name:" ascii

    condition:
        all of ($key_*)
}
