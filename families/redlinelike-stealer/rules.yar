// YARA rules for RedlineLike Stealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule RedlineLike_Stealer_cystack_0df2596d
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_0df2596d"

    strings:
        $key_0 = "Display Resolution:" ascii
        $key_1 = "Domain Name:" ascii
        $key_2 = "Graphics card:" ascii
        $key_3 = "Installed RAM:" ascii
        $key_4 = "Integrity:" ascii
        $key_5 = "Keyboard Language:" ascii
        $key_6 = "Operation System:" ascii
        $key_7 = "Processor:" ascii
        $key_8 = "System Language:" ascii
        $key_9 = "TimeZone:" ascii
        $key_10 = "User Name:" ascii
        $key_11 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_0f69a6b9
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_0f69a6b9"

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
        $key_18 = "Version Build:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_2460a6dc
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_2460a6dc"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Display Resolution:" ascii
        $key_3 = "Domain Name:" ascii
        $key_4 = "Integrity:" ascii
        $key_5 = "Keyboard Language:" ascii
        $key_6 = "TimeZone:" ascii
        $key_7 = "User Name:" ascii
        $key_8 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_24e2c0b7
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_24e2c0b7"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "Domain Name:" ascii
        $key_1 = "Graphics card:" ascii
        $key_2 = "Installed RAM:" ascii
        $key_3 = "Operation System:" ascii
        $key_4 = "Processor:" ascii
        $key_5 = "System Language:" ascii

    condition:
        any of ($banner_*) or all of ($key_*)
}

rule RedlineLike_Stealer_cystack_2ac6571b
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_2ac6571b"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Antivirus:" ascii
        $key_2 = "City:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Display Resolution:" ascii
        $key_5 = "Domain Name:" ascii
        $key_6 = "Graphics card:" ascii
        $key_7 = "Installed RAM:" ascii
        $key_8 = "Integrity:" ascii
        $key_9 = "Keyboard Language:" ascii
        $key_10 = "Operation System:" ascii
        $key_11 = "Processor:" ascii
        $key_12 = "System Language:" ascii
        $key_13 = "TimeZone:" ascii
        $key_14 = "Timezone:" ascii
        $key_15 = "User Name:" ascii
        $key_16 = "UserLanguage:" ascii
        $key_17 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_3662db05
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_3662db05"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "Country:" ascii
        $key_1 = "Graphics card:" ascii
        $key_2 = "IP:" ascii
        $key_3 = "Installed RAM:" ascii
        $key_4 = "Keyboard Language:" ascii
        $key_5 = "Log date:" ascii
        $key_6 = "MachineID:" ascii
        $key_7 = "Operation System:" ascii
        $key_8 = "Processor:" ascii
        $key_9 = "ScreenSize:" ascii
        $key_10 = "System Language:" ascii
        $key_11 = "User Language:" ascii
        $key_12 = "UserName:" ascii

    condition:
        any of ($banner_*) or all of ($key_*)
}

rule RedlineLike_Stealer_cystack_47bdc5de
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_47bdc5de"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Display Resolution:" ascii
        $key_3 = "Domain Name:" ascii
        $key_4 = "Graphics card:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "Installed RAM:" ascii
        $key_7 = "Integrity:" ascii
        $key_8 = "Keyboard Language:" ascii
        $key_9 = "Operation System:" ascii
        $key_10 = "Processor:" ascii
        $key_11 = "System Language:" ascii
        $key_12 = "TimeZone:" ascii
        $key_13 = "User Name:" ascii
        $key_14 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_49de1981
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_49de1981"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Antivirus:" ascii
        $key_2 = "City:" ascii
        $key_3 = "Computer Name:" ascii
        $key_4 = "Country:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "Domain Name:" ascii
        $key_7 = "Graphics card:" ascii
        $key_8 = "IP Address:" ascii
        $key_9 = "Installed RAM:" ascii
        $key_10 = "Integrity:" ascii
        $key_11 = "Keyboard Language:" ascii
        $key_12 = "Operation System:" ascii
        $key_13 = "Postal Code:" ascii
        $key_14 = "Processor:" ascii
        $key_15 = "Region:" ascii
        $key_16 = "System Language:" ascii
        $key_17 = "TimeZone:" ascii
        $key_18 = "Timezone:" ascii
        $key_19 = "User Name:" ascii
        $key_20 = "UserLanguage:" ascii
        $key_21 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_4c3cebf2
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_4c3cebf2"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "Admin Group:" ascii
        $key_1 = "Display Resolution:" ascii
        $key_2 = "Domain Name:" ascii
        $key_3 = "Graphics card:" ascii
        $key_4 = "Installed RAM:" ascii
        $key_5 = "Integrity:" ascii
        $key_6 = "Keyboard Language:" ascii
        $key_7 = "Operation System:" ascii
        $key_8 = "Processor:" ascii
        $key_9 = "System Language:" ascii
        $key_10 = "TimeZone:" ascii
        $key_11 = "User Name:" ascii
        $key_12 = "UserLanguage:" ascii

    condition:
        any of ($banner_*) or all of ($key_*)
}

rule RedlineLike_Stealer_cystack_4d65acc2
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_4d65acc2"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Display Resolution:" ascii
        $key_2 = "Integrity:" ascii
        $key_3 = "Keyboard Language:" ascii
        $key_4 = "TimeZone:" ascii
        $key_5 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_5455ca59
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_5455ca59"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "Domain Name:" ascii
        $key_5 = "Graphics card:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Installed RAM:" ascii
        $key_8 = "Integrity:" ascii
        $key_9 = "Keyboard Language:" ascii
        $key_10 = "Operation System:" ascii
        $key_11 = "Processor:" ascii
        $key_12 = "System Language:" ascii
        $key_13 = "TimeZone:" ascii
        $key_14 = "User Name:" ascii
        $key_15 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_60bb56d3
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_60bb56d3"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Display Resolution:" ascii
        $key_3 = "Domain Name:" ascii
        $key_4 = "Graphics card:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "Installed RAM:" ascii
        $key_7 = "Keyboard Language:" ascii
        $key_8 = "Operation System:" ascii
        $key_9 = "Processor:" ascii
        $key_10 = "System Language:" ascii
        $key_11 = "TimeZone:" ascii
        $key_12 = "User Name:" ascii
        $key_13 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_63de139b
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_63de139b"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "Domain Name:" ascii
        $key_5 = "Graphics card:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Installed RAM:" ascii
        $key_8 = "Integrity:" ascii
        $key_9 = "Keyboard Language:" ascii
        $key_10 = "Operation System:" ascii
        $key_11 = "Processor:" ascii
        $key_12 = "System Language:" ascii
        $key_13 = "TimeZone:" ascii
        $key_14 = "User Name:" ascii
        $key_15 = "UserLanguage:" ascii

    condition:
        any of ($banner_*) or all of ($key_*)
}

rule RedlineLike_Stealer_cystack_735b57ba
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_735b57ba"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Display Resolution:" ascii
        $key_3 = "Domain Name:" ascii
        $key_4 = "Graphics card:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "Installed RAM:" ascii
        $key_7 = "Integrity:" ascii
        $key_8 = "Keyboard Language:" ascii
        $key_9 = "Operation System:" ascii
        $key_10 = "Processor:" ascii
        $key_11 = "System Language:" ascii
        $key_12 = "TimeZone:" ascii
        $key_13 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_7378aac5
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_7378aac5"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Display Resolution:" ascii
        $key_3 = "Domain Name:" ascii
        $key_4 = "Graphics card:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "Installed RAM:" ascii
        $key_7 = "Integrity:" ascii
        $key_8 = "Keyboard Language:" ascii
        $key_9 = "Processor:" ascii
        $key_10 = "System Language:" ascii
        $key_11 = "TimeZone:" ascii
        $key_12 = "User Name:" ascii
        $key_13 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_80805b46
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_80805b46"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Display Resolution:" ascii
        $key_2 = "Domain Name:" ascii
        $key_3 = "Graphics card:" ascii
        $key_4 = "Installed RAM:" ascii
        $key_5 = "Integrity:" ascii
        $key_6 = "Keyboard Language:" ascii
        $key_7 = "Operation System:" ascii
        $key_8 = "Processor:" ascii
        $key_9 = "TimeZone:" ascii
        $key_10 = "User Name:" ascii
        $key_11 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_8307a3e7
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_8307a3e7"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "Admin Group:" ascii
        $key_1 = "Antivirus:" ascii
        $key_2 = "City:" ascii
        $key_3 = "Computer Name:" ascii
        $key_4 = "Country:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "Domain Name:" ascii
        $key_7 = "Graphics card:" ascii
        $key_8 = "Installed RAM:" ascii
        $key_9 = "Integrity:" ascii
        $key_10 = "Keyboard Language:" ascii
        $key_11 = "Operation System:" ascii
        $key_12 = "Processor:" ascii
        $key_13 = "System Language:" ascii
        $key_14 = "TimeZone:" ascii
        $key_15 = "Timezone:" ascii
        $key_16 = "User Name:" ascii
        $key_17 = "UserLanguage:" ascii
        $key_18 = "Wallpaper Hash:" ascii

    condition:
        any of ($banner_*) or all of ($key_*)
}

rule RedlineLike_Stealer_cystack_84654605
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_84654605"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Display Resolution:" ascii
        $key_3 = "Domain Name:" ascii
        $key_4 = "Graphics card:" ascii
        $key_5 = "Integrity:" ascii
        $key_6 = "Keyboard Language:" ascii
        $key_7 = "Product Key:" ascii
        $key_8 = "Router MAC Address:" ascii
        $key_9 = "User Name:" ascii
        $key_10 = "UserLanguage:" ascii
        $key_11 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_8739bd31
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_8739bd31"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Display Resolution:" ascii
        $key_2 = "Integrity:" ascii
        $key_3 = "Keyboard Language:" ascii
        $key_4 = "Product Key:" ascii
        $key_5 = "User Name:" ascii
        $key_6 = "UserLanguage:" ascii
        $key_7 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_93fee37c
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_93fee37c"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "BUILD NAME:" ascii
        $key_2 = "Computer Name:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Display Resolution:" ascii
        $key_5 = "Domain Name:" ascii
        $key_6 = "Graphics card:" ascii
        $key_7 = "HWID:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "Installed RAM:" ascii
        $key_10 = "Integrity:" ascii
        $key_11 = "Keyboard Language:" ascii
        $key_12 = "Operation System:" ascii
        $key_13 = "Processor:" ascii
        $key_14 = "Product Key:" ascii
        $key_15 = "Router MAC Address:" ascii
        $key_16 = "System Language:" ascii
        $key_17 = "TimeZone:" ascii
        $key_18 = "User Name:" ascii
        $key_19 = "UserLanguage:" ascii
        $key_20 = "Wallpaper Hash:" ascii

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

rule RedlineLike_Stealer_cystack_a1b233c6
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_a1b233c6"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Display Resolution:" ascii
        $key_2 = "Domain Name:" ascii
        $key_3 = "Integrity:" ascii
        $key_4 = "Keyboard Language:" ascii
        $key_5 = "Product Key:" ascii
        $key_6 = "Router MAC Address:" ascii
        $key_7 = "User Name:" ascii
        $key_8 = "UserLanguage:" ascii
        $key_9 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_b6ece516
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_b6ece516"

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
        $key_11 = "Operation System:" ascii
        $key_12 = "Processor:" ascii
        $key_13 = "Product Key:" ascii
        $key_14 = "Router MAC Address:" ascii
        $key_15 = "System Language:" ascii
        $key_16 = "TimeZone:" ascii
        $key_17 = "User Name:" ascii
        $key_18 = "UserLanguage:" ascii
        $key_19 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_c142a44b
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_c142a44b"

    strings:
        $key_0 = "City:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Display Resolution:" ascii
        $key_3 = "IP Address:" ascii
        $key_4 = "Keyboard Language:" ascii
        $key_5 = "Postal Code:" ascii
        $key_6 = "Region:" ascii
        $key_7 = "TimeZone:" ascii
        $key_8 = "Timezone:" ascii
        $key_9 = "UserLanguage:" ascii
        $key_10 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_c83e9a41
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_c83e9a41"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "IP Address:" ascii
        $key_5 = "Integrity:" ascii
        $key_6 = "Keyboard Language:" ascii
        $key_7 = "Postal Code:" ascii
        $key_8 = "Region:" ascii
        $key_9 = "TimeZone:" ascii
        $key_10 = "Timezone:" ascii
        $key_11 = "UserLanguage:" ascii
        $key_12 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_c850613f
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_c850613f"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Display Resolution:" ascii
        $key_2 = "Graphics card:" ascii
        $key_3 = "Installed RAM:" ascii
        $key_4 = "Integrity:" ascii
        $key_5 = "Keyboard Language:" ascii
        $key_6 = "Operation System:" ascii
        $key_7 = "Processor:" ascii
        $key_8 = "System Language:" ascii
        $key_9 = "TimeZone:" ascii
        $key_10 = "User Name:" ascii
        $key_11 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_cc52bdba
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_cc52bdba"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Display Resolution:" ascii
        $key_3 = "Domain Name:" ascii
        $key_4 = "Graphics card:" ascii
        $key_5 = "HWID:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Installed RAM:" ascii
        $key_8 = "Integrity:" ascii
        $key_9 = "Keyboard Language:" ascii
        $key_10 = "Log date:" ascii
        $key_11 = "Operation System:" ascii
        $key_12 = "Processor:" ascii
        $key_13 = "System Language:" ascii
        $key_14 = "TimeZone:" ascii
        $key_15 = "User Name:" ascii
        $key_16 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_d6ea5c3d
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_d6ea5c3d"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Antivirus:" ascii
        $key_2 = "City:" ascii
        $key_3 = "Computer Name:" ascii
        $key_4 = "Country:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "Domain Name:" ascii
        $key_7 = "Graphics card:" ascii
        $key_8 = "IP Address:" ascii
        $key_9 = "Integrity:" ascii
        $key_10 = "Keyboard Language:" ascii
        $key_11 = "Operation System:" ascii
        $key_12 = "Postal Code:" ascii
        $key_13 = "Region:" ascii
        $key_14 = "TimeZone:" ascii
        $key_15 = "Timezone:" ascii
        $key_16 = "User Name:" ascii
        $key_17 = "UserLanguage:" ascii
        $key_18 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_d706f1b5
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_d706f1b5"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Antivirus:" ascii
        $key_2 = "City:" ascii
        $key_3 = "Computer Name:" ascii
        $key_4 = "Country:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "Domain Name:" ascii
        $key_7 = "Graphics card:" ascii
        $key_8 = "IP Address:" ascii
        $key_9 = "Installed RAM:" ascii
        $key_10 = "Integrity:" ascii
        $key_11 = "Keyboard Language:" ascii
        $key_12 = "Operation System:" ascii
        $key_13 = "Postal Code:" ascii
        $key_14 = "Processor:" ascii
        $key_15 = "Region:" ascii
        $key_16 = "TimeZone:" ascii
        $key_17 = "Timezone:" ascii
        $key_18 = "User Name:" ascii
        $key_19 = "UserLanguage:" ascii
        $key_20 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_d7c6c67e
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_d7c6c67e"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Display Resolution:" ascii
        $key_2 = "Domain Name:" ascii
        $key_3 = "Graphics card:" ascii
        $key_4 = "Installed RAM:" ascii
        $key_5 = "Integrity:" ascii
        $key_6 = "Keyboard Language:" ascii
        $key_7 = "Operation System:" ascii
        $key_8 = "Processor:" ascii
        $key_9 = "System Language:" ascii
        $key_10 = "TimeZone:" ascii
        $key_11 = "User Name:" ascii
        $key_12 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_dd8d6359
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_dd8d6359"

    strings:
        $key_0 = "APPLE:" ascii
        $key_1 = "Admin Group:" ascii
        $key_2 = "Computer Name:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Display Resolution:" ascii
        $key_5 = "Domain Name:" ascii
        $key_6 = "GOOGLE:" ascii
        $key_7 = "Graphics card:" ascii
        $key_8 = "HWID:" ascii
        $key_9 = "IP:" ascii
        $key_10 = "Installed RAM:" ascii
        $key_11 = "Integrity:" ascii
        $key_12 = "Keyboard Language:" ascii
        $key_13 = "Operation System:" ascii
        $key_14 = "Processor:" ascii
        $key_15 = "Product Key:" ascii
        $key_16 = "Router MAC Address:" ascii
        $key_17 = "System Language:" ascii
        $key_18 = "TimeZone:" ascii
        $key_19 = "User Name:" ascii
        $key_20 = "UserLanguage:" ascii
        $key_21 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_df353994
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_df353994"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Display Resolution:" ascii
        $key_2 = "Integrity:" ascii
        $key_3 = "Keyboard Language:" ascii
        $key_4 = "TimeZone:" ascii
        $key_5 = "User Name:" ascii
        $key_6 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_e6316c5e
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_e6316c5e"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Display Resolution:" ascii
        $key_3 = "Domain Name:" ascii
        $key_4 = "Graphics card:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "Installed RAM:" ascii
        $key_7 = "Integrity:" ascii
        $key_8 = "Keyboard Language:" ascii
        $key_9 = "Operation System:" ascii
        $key_10 = "System Language:" ascii
        $key_11 = "TimeZone:" ascii
        $key_12 = "User Name:" ascii
        $key_13 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_ec5637c1
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_ec5637c1"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "BUILD NAME:" ascii
        $key_2 = "Computer Name:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Display Resolution:" ascii
        $key_5 = "Domain Name:" ascii
        $key_6 = "Graphics card:" ascii
        $key_7 = "HWID:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "Installed RAM:" ascii
        $key_10 = "Integrity:" ascii
        $key_11 = "Keyboard Language:" ascii
        $key_12 = "MYLNIKOV:" ascii
        $key_13 = "Operation System:" ascii
        $key_14 = "Processor:" ascii
        $key_15 = "Product Key:" ascii
        $key_16 = "Router MAC Address:" ascii
        $key_17 = "System Language:" ascii
        $key_18 = "TimeZone:" ascii
        $key_19 = "User Name:" ascii
        $key_20 = "UserLanguage:" ascii
        $key_21 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_efe7f525
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_efe7f525"

    strings:
        $key_0 = "APPLE:" ascii
        $key_1 = "Admin Group:" ascii
        $key_2 = "Display Resolution:" ascii
        $key_3 = "GOOGLE:" ascii
        $key_4 = "Integrity:" ascii
        $key_5 = "Keyboard Language:" ascii
        $key_6 = "Product Key:" ascii
        $key_7 = "User Name:" ascii
        $key_8 = "UserLanguage:" ascii
        $key_9 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_f3954c4a
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_f3954c4a"

    strings:
        $key_0 = "APPLE:" ascii
        $key_1 = "Admin Group:" ascii
        $key_2 = "BUILD NAME:" ascii
        $key_3 = "Computer Name:" ascii
        $key_4 = "Country:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "Domain Name:" ascii
        $key_7 = "GOOGLE:" ascii
        $key_8 = "Graphics card:" ascii
        $key_9 = "HWID:" ascii
        $key_10 = "IP:" ascii
        $key_11 = "Installed RAM:" ascii
        $key_12 = "Integrity:" ascii
        $key_13 = "Keyboard Language:" ascii
        $key_14 = "Operation System:" ascii
        $key_15 = "Processor:" ascii
        $key_16 = "Product Key:" ascii
        $key_17 = "Router MAC Address:" ascii
        $key_18 = "System Language:" ascii
        $key_19 = "TimeZone:" ascii
        $key_20 = "User Name:" ascii
        $key_21 = "UserLanguage:" ascii
        $key_22 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_f95511e0
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_f95511e0"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Display Resolution:" ascii
        $key_2 = "Domain Name:" ascii
        $key_3 = "Graphics card:" ascii
        $key_4 = "IP:" ascii
        $key_5 = "Installed RAM:" ascii
        $key_6 = "Integrity:" ascii
        $key_7 = "Keyboard Language:" ascii
        $key_8 = "Operation System:" ascii
        $key_9 = "Processor:" ascii
        $key_10 = "System Language:" ascii
        $key_11 = "TimeZone:" ascii
        $key_12 = "User Name:" ascii
        $key_13 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}
