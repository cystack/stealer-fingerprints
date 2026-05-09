// YARA rules for RedlineLike Stealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule RedlineLike_Stealer_cystack_2d2c7ce0
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_2d2c7ce0"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "Domain Name:" ascii
        $key_5 = "Graphics card:" ascii
        $key_6 = "HWID:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "Installed RAM:" ascii
        $key_9 = "Integrity:" ascii
        $key_10 = "Keyboard Language:" ascii
        $key_11 = "Log date:" ascii
        $key_12 = "Operation System:" ascii
        $key_13 = "Processor:" ascii
        $key_14 = "System Language:" ascii
        $key_15 = "TimeZone:" ascii
        $key_16 = "User Name:" ascii
        $key_17 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_5e2c1672
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_5e2c1672"

    strings:
        $key_0 = "ASN:" ascii
        $key_1 = "Admin Group:" ascii
        $key_2 = "Antivirus:" ascii
        $key_3 = "City:" ascii
        $key_4 = "Computer Name:" ascii
        $key_5 = "Country:" ascii
        $key_6 = "Display Resolution:" ascii
        $key_7 = "Domain Name:" ascii
        $key_8 = "Graphics card:" ascii
        $key_9 = "HWID:" ascii
        $key_10 = "IP Address:" ascii
        $key_11 = "ISP:" ascii
        $key_12 = "Installed RAM:" ascii
        $key_13 = "Integrity:" ascii
        $key_14 = "Keyboard Language:" ascii
        $key_15 = "Log date:" ascii
        $key_16 = "Operation System:" ascii
        $key_17 = "Organization:" ascii
        $key_18 = "Postal Code:" ascii
        $key_19 = "Processor:" ascii
        $key_20 = "Region:" ascii
        $key_21 = "System Language:" ascii
        $key_22 = "TimeZone:" ascii
        $key_23 = "Timezone:" ascii
        $key_24 = "User Name:" ascii
        $key_25 = "UserLanguage:" ascii
        $key_26 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_a06e8d9d
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_a06e8d9d"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Antivirus:" ascii
        $key_2 = "City:" ascii
        $key_3 = "Computer Name:" ascii
        $key_4 = "Country:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "Domain Name:" ascii
        $key_7 = "Graphics card:" ascii
        $key_8 = "HWID:" ascii
        $key_9 = "IP Address:" ascii
        $key_10 = "Installed RAM:" ascii
        $key_11 = "Integrity:" ascii
        $key_12 = "Keyboard Language:" ascii
        $key_13 = "Log date:" ascii
        $key_14 = "Operation System:" ascii
        $key_15 = "Postal Code:" ascii
        $key_16 = "Processor:" ascii
        $key_17 = "Region:" ascii
        $key_18 = "System Language:" ascii
        $key_19 = "TimeZone:" ascii
        $key_20 = "Timezone:" ascii
        $key_21 = "User Name:" ascii
        $key_22 = "UserLanguage:" ascii
        $key_23 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_d948cd26
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_d948cd26"

    strings:
        $key_0 = "ASN:" ascii
        $key_1 = "Admin Group:" ascii
        $key_2 = "Antivirus:" ascii
        $key_3 = "City:" ascii
        $key_4 = "Computer Name:" ascii
        $key_5 = "Country:" ascii
        $key_6 = "Display Resolution:" ascii
        $key_7 = "Domain Name:" ascii
        $key_8 = "Graphics card:" ascii
        $key_9 = "HWID:" ascii
        $key_10 = "IP Address:" ascii
        $key_11 = "ISP:" ascii
        $key_12 = "Installed RAM:" ascii
        $key_13 = "Integrity:" ascii
        $key_14 = "Keyboard Language:" ascii
        $key_15 = "Log date:" ascii
        $key_16 = "Operation System:" ascii
        $key_17 = "Organization:" ascii
        $key_18 = "Processor:" ascii
        $key_19 = "Region:" ascii
        $key_20 = "System Language:" ascii
        $key_21 = "TimeZone:" ascii
        $key_22 = "Timezone:" ascii
        $key_23 = "User Name:" ascii
        $key_24 = "UserLanguage:" ascii
        $key_25 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}
