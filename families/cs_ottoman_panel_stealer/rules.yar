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
        $key_2 = "Computer:" ascii
        $key_3 = "Computer name:" ascii
        $key_4 = "Country:" ascii
        $key_5 = "GPU:" ascii
        $key_6 = "HWID:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "Installed antivirus:" ascii
        $key_9 = "Internet provider:" ascii
        $key_10 = "RAM:" ascii
        $key_11 = "Region:" ascii
        $key_12 = "Started as admin:" ascii
        $key_13 = "System:" ascii
        $key_14 = "System time:" ascii
        $key_15 = "User name:" ascii

    condition:
        all of ($key_*)
}
