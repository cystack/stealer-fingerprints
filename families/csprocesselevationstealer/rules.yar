// YARA rules for CSProcessElevationStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSProcessElevationStealer_cystack_658ba444
{
    meta:
        family = "CSProcessElevationStealer"
        fingerprint_id = "cystack_658ba444"

    strings:
        $key_0 = "Available KeyboardLayouts:" ascii
        $key_1 = "Buy:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Current Language:" ascii
        $key_4 = "HWID:" ascii
        $key_5 = "Hardwares:" ascii
        $key_6 = "Name:" ascii
        $key_7 = "Operation System:" ascii
        $key_8 = "Process Elevation:" ascii
        $key_9 = "Reserve Link:" ascii
        $key_10 = "ScreenSize:" ascii
        $key_11 = "Zip Code:" ascii

    condition:
        all of ($key_*)
}

rule CSProcessElevationStealer_cystack_9a452d98
{
    meta:
        family = "CSProcessElevationStealer"
        fingerprint_id = "cystack_9a452d98"

    strings:
        $key_0 = "Available KeyboardLayouts:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Current Language:" ascii
        $key_3 = "HWID:" ascii
        $key_4 = "Hardwares:" ascii
        $key_5 = "Name:" ascii
        $key_6 = "Operation System:" ascii
        $key_7 = "Process Elevation:" ascii
        $key_8 = "ScreenSize:" ascii
        $key_9 = "UserName:" ascii
        $key_10 = "Zip Code:" ascii

    condition:
        all of ($key_*)
}
