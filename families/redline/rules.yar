// YARA rules for Redline.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule Redline_cystack_65b17882
{
    meta:
        family = "Redline"
        fingerprint_id = "cystack_65b17882"

    strings:
        $key_0 = "Available KeyboardLayouts:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Current Language:" ascii
        $key_3 = "FileLocation:" ascii
        $key_4 = "HWID:" ascii
        $key_5 = "Hardwares:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Location:" ascii
        $key_8 = "Log date:" ascii
        $key_9 = "MachineName:" ascii
        $key_10 = "Name:" ascii
        $key_11 = "Operation System:" ascii
        $key_12 = "ScreenSize:" ascii
        $key_13 = "TimeZone:" ascii
        $key_14 = "UserName:" ascii
        $key_15 = "Zip Code:" ascii

    condition:
        all of ($key_*)
}

rule Redline_cystack_f2fae5b0
{
    meta:
        family = "Redline"
        fingerprint_id = "cystack_f2fae5b0"

    strings:
        $key_0 = "Available KeyboardLayouts:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Current Language:" ascii
        $key_3 = "FileLocation:" ascii
        $key_4 = "HWID:" ascii
        $key_5 = "Hardwares:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Location:" ascii
        $key_8 = "Log date:" ascii
        $key_9 = "MachineName:" ascii
        $key_10 = "Operation System:" ascii
        $key_11 = "ScreenSize:" ascii
        $key_12 = "TimeZone:" ascii
        $key_13 = "UserName:" ascii
        $key_14 = "Zip Code:" ascii

    condition:
        all of ($key_*)
}
