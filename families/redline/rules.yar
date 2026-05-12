// YARA rules for Redline.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule Redline_cystack_55f0c282
{
    meta:
        family = "Redline"
        fingerprint_id = "cystack_55f0c282"

    strings:
        $key_0 = "Anti-Viruses:" ascii
        $key_1 = "Available KeyboardLayouts:" ascii
        $key_2 = "Build ID:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Current Language:" ascii
        $key_5 = "FileLocation:" ascii
        $key_6 = "HWID:" ascii
        $key_7 = "Hardwares:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "Location:" ascii
        $key_10 = "Log date:" ascii
        $key_11 = "Name:" ascii
        $key_12 = "Operation System:" ascii
        $key_13 = "Process Elevation:" ascii
        $key_14 = "ScreenSize:" ascii
        $key_15 = "TimeZone:" ascii
        $key_16 = "UserName:" ascii
        $key_17 = "Zip Code:" ascii

    condition:
        all of ($key_*)
}

rule Redline_cystack_648cafef
{
    meta:
        family = "Redline"
        fingerprint_id = "cystack_648cafef"

    strings:
        $key_0 = "Anti-Viruses:" ascii
        $key_1 = "Build ID:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Current Language:" ascii
        $key_4 = "FileLocation:" ascii
        $key_5 = "HWID:" ascii
        $key_6 = "Hardwares:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "Location:" ascii
        $key_9 = "Log date:" ascii
        $key_10 = "Name:" ascii
        $key_11 = "Operation System:" ascii
        $key_12 = "Process Elevation:" ascii
        $key_13 = "ScreenSize:" ascii
        $key_14 = "TimeZone:" ascii
        $key_15 = "UAC:" ascii
        $key_16 = "UserName:" ascii
        $key_17 = "Zip Code:" ascii

    condition:
        all of ($key_*)
}

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

rule Redline_cystack_69d1cad4
{
    meta:
        family = "Redline"
        fingerprint_id = "cystack_69d1cad4"

    strings:
        $key_0 = "Available KeyboardLayouts:" ascii
        $key_1 = "Build ID:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Current Language:" ascii
        $key_4 = "FileLocation:" ascii
        $key_5 = "HWID:" ascii
        $key_6 = "Hardwares:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "Location:" ascii
        $key_9 = "Log date:" ascii
        $key_10 = "Name:" ascii
        $key_11 = "Operation System:" ascii
        $key_12 = "Process Elevation:" ascii
        $key_13 = "ScreenSize:" ascii
        $key_14 = "TimeZone:" ascii
        $key_15 = "UserName:" ascii
        $key_16 = "Zip Code:" ascii

    condition:
        all of ($key_*)
}

rule Redline_cystack_709d1fed
{
    meta:
        family = "Redline"
        fingerprint_id = "cystack_709d1fed"

    strings:
        $key_0 = "Build ID:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Current Language:" ascii
        $key_3 = "FileLocation:" ascii
        $key_4 = "HWID:" ascii
        $key_5 = "Hardwares:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Location:" ascii
        $key_8 = "Log date:" ascii
        $key_9 = "Name:" ascii
        $key_10 = "Operation System:" ascii
        $key_11 = "Process Elevation:" ascii
        $key_12 = "ScreenSize:" ascii
        $key_13 = "TimeZone:" ascii
        $key_14 = "UAC:" ascii
        $key_15 = "UserName:" ascii
        $key_16 = "Zip Code:" ascii

    condition:
        all of ($key_*)
}

rule Redline_cystack_73218974
{
    meta:
        family = "Redline"
        fingerprint_id = "cystack_73218974"

    strings:
        $key_0 = "Available KeyboardLayouts:" ascii
        $key_1 = "Build ID:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Current Language:" ascii
        $key_4 = "FileLocation:" ascii
        $key_5 = "HWID:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Location:" ascii
        $key_8 = "Log date:" ascii
        $key_9 = "Operation System:" ascii
        $key_10 = "Process Elevation:" ascii
        $key_11 = "ScreenSize:" ascii
        $key_12 = "TimeZone:" ascii
        $key_13 = "UAC:" ascii
        $key_14 = "UserName:" ascii
        $key_15 = "Zip Code:" ascii

    condition:
        all of ($key_*)
}

rule Redline_cystack_73292a89
{
    meta:
        family = "Redline"
        fingerprint_id = "cystack_73292a89"

    strings:
        $key_0 = "Anti-Viruses:" ascii
        $key_1 = "Available KeyboardLayouts:" ascii
        $key_2 = "Build ID:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Current Language:" ascii
        $key_5 = "FileLocation:" ascii
        $key_6 = "HWID:" ascii
        $key_7 = "Hardwares:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "Location:" ascii
        $key_10 = "Log date:" ascii
        $key_11 = "Name:" ascii
        $key_12 = "Operation System:" ascii
        $key_13 = "Process Elevation:" ascii
        $key_14 = "ScreenSize:" ascii
        $key_15 = "TimeZone:" ascii
        $key_16 = "UAC:" ascii
        $key_17 = "UserName:" ascii
        $key_18 = "Zip Code:" ascii

    condition:
        all of ($key_*)
}

rule Redline_cystack_7d94dffd
{
    meta:
        family = "Redline"
        fingerprint_id = "cystack_7d94dffd"

    strings:
        $key_0 = "Anti-Viruses:" ascii
        $key_1 = "Available KeyboardLayouts:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Current Language:" ascii
        $key_4 = "FileLocation:" ascii
        $key_5 = "HWID:" ascii
        $key_6 = "Hardwares:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "Name:" ascii
        $key_9 = "Operation System:" ascii
        $key_10 = "Process Elevation:" ascii
        $key_11 = "ScreenSize:" ascii
        $key_12 = "UserName:" ascii
        $key_13 = "Zip Code:" ascii

    condition:
        all of ($key_*)
}

rule Redline_cystack_84cd011a
{
    meta:
        family = "Redline"
        fingerprint_id = "cystack_84cd011a"

    strings:
        $key_0 = "Available KeyboardLayouts:" ascii
        $key_1 = "Build ID:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Current Language:" ascii
        $key_4 = "FileLocation:" ascii
        $key_5 = "HWID:" ascii
        $key_6 = "Hardwares:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "Location:" ascii
        $key_9 = "Log date:" ascii
        $key_10 = "Name:" ascii
        $key_11 = "Operation System:" ascii
        $key_12 = "Process Elevation:" ascii
        $key_13 = "ScreenSize:" ascii
        $key_14 = "TimeZone:" ascii
        $key_15 = "UAC:" ascii
        $key_16 = "UserName:" ascii
        $key_17 = "Zip Code:" ascii

    condition:
        all of ($key_*)
}

rule Redline_cystack_b95b940e
{
    meta:
        family = "Redline"
        fingerprint_id = "cystack_b95b940e"

    strings:
        $key_0 = "Anti-Viruses:" ascii
        $key_1 = "Available KeyboardLayouts:" ascii
        $key_2 = "Build ID:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Current Language:" ascii
        $key_5 = "FileLocation:" ascii
        $key_6 = "HWID:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "Location:" ascii
        $key_9 = "Log date:" ascii
        $key_10 = "Operation System:" ascii
        $key_11 = "Process Elevation:" ascii
        $key_12 = "ScreenSize:" ascii
        $key_13 = "TimeZone:" ascii
        $key_14 = "UAC:" ascii
        $key_15 = "UserName:" ascii
        $key_16 = "Zip Code:" ascii

    condition:
        all of ($key_*)
}

rule Redline_cystack_d7157e6b
{
    meta:
        family = "Redline"
        fingerprint_id = "cystack_d7157e6b"

    strings:
        $key_0 = "Build ID:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Current Language:" ascii
        $key_3 = "FileLocation:" ascii
        $key_4 = "HWID:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "Location:" ascii
        $key_7 = "Log date:" ascii
        $key_8 = "Operation System:" ascii
        $key_9 = "Process Elevation:" ascii
        $key_10 = "ScreenSize:" ascii
        $key_11 = "TimeZone:" ascii
        $key_12 = "UAC:" ascii
        $key_13 = "UserName:" ascii
        $key_14 = "Zip Code:" ascii

    condition:
        all of ($key_*)
}

rule Redline_cystack_e61b3dc8
{
    meta:
        family = "Redline"
        fingerprint_id = "cystack_e61b3dc8"

    strings:
        $key_0 = "Available KeyboardLayouts:" ascii
        $key_1 = "Current Language:" ascii
        $key_2 = "FileLocation:" ascii
        $key_3 = "HWID:" ascii
        $key_4 = "Hardwares:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "Location:" ascii
        $key_7 = "Log date:" ascii
        $key_8 = "MachineName:" ascii
        $key_9 = "Name:" ascii
        $key_10 = "Operation System:" ascii
        $key_11 = "ScreenSize:" ascii
        $key_12 = "TimeZone:" ascii
        $key_13 = "UserName:" ascii
        $key_14 = "Zip Code:" ascii

    condition:
        all of ($key_*)
}

rule Redline_cystack_ebcec32a
{
    meta:
        family = "Redline"
        fingerprint_id = "cystack_ebcec32a"

    strings:
        $key_0 = "Anti-Viruses:" ascii
        $key_1 = "Build ID:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Current Language:" ascii
        $key_4 = "FileLocation:" ascii
        $key_5 = "HWID:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Location:" ascii
        $key_8 = "Log date:" ascii
        $key_9 = "Operation System:" ascii
        $key_10 = "Process Elevation:" ascii
        $key_11 = "ScreenSize:" ascii
        $key_12 = "TimeZone:" ascii
        $key_13 = "UAC:" ascii
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
