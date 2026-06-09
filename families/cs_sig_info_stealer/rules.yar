// YARA rules for CSSigInfoStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSSigInfoStealer_cystack_6efeb6b8
{
    meta:
        family = "CSSigInfoStealer"
        fingerprint_id = "cystack_6efeb6b8"

    strings:
        $key_0 = "Antivirus:" ascii
        $key_1 = "Build Date:" ascii
        $key_2 = "Computer Name:" ascii
        $key_3 = "Configuration:" ascii
        $key_4 = "Country:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "Elevated:" ascii
        $key_7 = "Execution Path:" ascii
        $key_8 = "Graphics Card:" ascii
        $key_9 = "HWID:" ascii
        $key_10 = "IP Address:" ascii
        $key_11 = "Install Date:" ascii
        $key_12 = "Installed RAM:" ascii
        $key_13 = "Netbios:" ascii
        $key_14 = "Operation System:" ascii
        $key_15 = "Processor:" ascii
        $key_16 = "Processor Cores:" ascii
        $key_17 = "Processor Threads:" ascii
        $key_18 = "System Date:" ascii
        $key_19 = "Time:" ascii
        $key_20 = "Time Zone:" ascii
        $key_21 = "User:" ascii
        $key_22 = "User Language:" ascii
        $key_23 = "User Name:" ascii

    condition:
        all of ($key_*)
}

rule CSSigInfoStealer_cystack_7304a1d1
{
    meta:
        family = "CSSigInfoStealer"
        fingerprint_id = "cystack_7304a1d1"

    strings:
        $key_0 = "Country:" ascii
        $key_1 = "IP Address:" ascii
        $key_2 = "Time:" ascii
        $key_3 = "User:" ascii

    condition:
        all of ($key_*)
}

rule CSSigInfoStealer_cystack_8fc6858f
{
    meta:
        family = "CSSigInfoStealer"
        fingerprint_id = "cystack_8fc6858f"

    strings:
        $key_0 = "Antivirus:" ascii
        $key_1 = "Build Date:" ascii
        $key_2 = "Computer Name:" ascii
        $key_3 = "Configuration:" ascii
        $key_4 = "Country:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "Elevated:" ascii
        $key_7 = "Execution Path:" ascii
        $key_8 = "Graphics Card:" ascii
        $key_9 = "HWID:" ascii
        $key_10 = "IP Address:" ascii
        $key_11 = "Installed RAM:" ascii
        $key_12 = "Netbios:" ascii
        $key_13 = "Processor:" ascii
        $key_14 = "Processor Cores:" ascii
        $key_15 = "Processor Threads:" ascii
        $key_16 = "Time:" ascii
        $key_17 = "User:" ascii
        $key_18 = "User Language:" ascii
        $key_19 = "User Name:" ascii

    condition:
        all of ($key_*)
}

rule CSSigInfoStealer_cystack_bd7c60ba
{
    meta:
        family = "CSSigInfoStealer"
        fingerprint_id = "cystack_bd7c60ba"

    strings:
        $key_0 = "Book:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Date:" ascii
        $key_3 = "IP Address:" ascii
        $key_4 = "Language:" ascii
        $key_5 = "Location:" ascii
        $key_6 = "Lyrics:" ascii
        $key_7 = "Music:" ascii
        $key_8 = "Performers:" ascii
        $key_9 = "Show:" ascii
        $key_10 = "Time:" ascii
        $key_11 = "Tracks:" ascii
        $key_12 = "Translation:" ascii
        $key_13 = "User:" ascii

    condition:
        all of ($key_*)
}

rule CSSigInfoStealer_cystack_d41e9f17
{
    meta:
        family = "CSSigInfoStealer"
        fingerprint_id = "cystack_d41e9f17"

    strings:
        $key_0 = "Country:" ascii
        $key_1 = "Database Name:" ascii
        $key_2 = "IP Address:" ascii
        $key_3 = "Project Name:" ascii
        $key_4 = "Time:" ascii
        $key_5 = "User:" ascii
        $key_6 = "User Name:" ascii

    condition:
        all of ($key_*)
}
