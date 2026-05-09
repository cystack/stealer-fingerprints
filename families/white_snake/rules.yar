// YARA rules for WhiteSnake.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule WhiteSnake_cystack_b5e6aa06
{
    meta:
        family = "WhiteSnake"
        fingerprint_id = "cystack_b5e6aa06"

    strings:
        $key_0 = "CPU:" ascii
        $key_1 = "GPU:" ascii
        $key_2 = "HWID:" ascii
        $key_3 = "Installed antivirus:" ascii
        $key_4 = "RAM:" ascii
        $key_5 = "Started as admin:" ascii
        $key_6 = "System:" ascii
        $key_7 = "System time:" ascii
        $key_8 = "User name:" ascii

    condition:
        all of ($key_*)
}

rule WhiteSnake_cystack_c501beb3
{
    meta:
        family = "WhiteSnake"
        fingerprint_id = "cystack_c501beb3"

    strings:
        $key_0 = "CPU:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "GPU:" ascii
        $key_4 = "HWID:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "Installed antivirus:" ascii
        $key_7 = "Internet provider:" ascii
        $key_8 = "RAM:" ascii
        $key_9 = "Region:" ascii
        $key_10 = "Started as admin:" ascii
        $key_11 = "System:" ascii
        $key_12 = "System time:" ascii
        $key_13 = "User name:" ascii

    condition:
        all of ($key_*)
}
