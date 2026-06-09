// YARA rules for RedlineLike Stealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule RedlineLike_Stealer_cystack_072c723f
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_072c723f"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Domain Name:" ascii
        $key_4 = "Graphics card:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "Installed RAM:" ascii
        $key_7 = "Integrity:" ascii
        $key_8 = "MachineID:" ascii
        $key_9 = "Operation System:" ascii
        $key_10 = "Processor:" ascii
        $key_11 = "Product Key:" ascii
        $key_12 = "System Language:" ascii
        $key_13 = "TimeZone:" ascii
        $key_14 = "User Name:" ascii
        $key_15 = "UserLanguage:" ascii

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

rule RedlineLike_Stealer_cystack_10fe4746
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_10fe4746"

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
        $key_10 = "Log date:" ascii
        $key_11 = "Operation System:" ascii
        $key_12 = "Processor:" ascii
        $key_13 = "Product Key:" ascii
        $key_14 = "System Language:" ascii
        $key_15 = "TimeZone:" ascii
        $key_16 = "User Name:" ascii
        $key_17 = "UserLanguage:" ascii
        $key_18 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_133f0f19
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_133f0f19"

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

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_1863c96d
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_1863c96d"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
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

rule RedlineLike_Stealer_cystack_1ed0fd47
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_1ed0fd47"

    strings:
        $key_0 = "BUILD NAME:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Domain Name:" ascii
        $key_4 = "Graphics card:" ascii
        $key_5 = "HWID:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Installed RAM:" ascii
        $key_8 = "Operation System:" ascii
        $key_9 = "Processor:" ascii
        $key_10 = "Product Key:" ascii
        $key_11 = "Router MAC Address:" ascii
        $key_12 = "System Language:" ascii
        $key_13 = "TimeZone:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_20220931
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_20220931"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Country:" ascii
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

rule RedlineLike_Stealer_cystack_2176857a
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_2176857a"

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

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_279e10c7
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_279e10c7"

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
        $key_11 = "MachineID:" ascii
        $key_12 = "Operation System:" ascii
        $key_13 = "Processor:" ascii
        $key_14 = "System Language:" ascii
        $key_15 = "TimeZone:" ascii
        $key_16 = "User Name:" ascii
        $key_17 = "UserLanguage:" ascii
        $key_18 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_2b6c44c5
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_2b6c44c5"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Display Resolution:" ascii
        $key_3 = "Domain Name:" ascii
        $key_4 = "Graphics card:" ascii
        $key_5 = "Integrity:" ascii
        $key_6 = "Keyboard Language:" ascii
        $key_7 = "Log date:" ascii
        $key_8 = "MachineID:" ascii
        $key_9 = "Operation System:" ascii
        $key_10 = "Product Key:" ascii
        $key_11 = "TimeZone:" ascii
        $key_12 = "Traffic:" ascii
        $key_13 = "User Name:" ascii
        $key_14 = "UserLanguage:" ascii
        $key_15 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

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

rule RedlineLike_Stealer_cystack_2e13a9b2
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_2e13a9b2"

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
        $key_12 = "MachineID:" ascii
        $key_13 = "Operation System:" ascii
        $key_14 = "Processor:" ascii
        $key_15 = "Product Key:" ascii
        $key_16 = "System Language:" ascii
        $key_17 = "TimeZone:" ascii
        $key_18 = "User Name:" ascii
        $key_19 = "UserLanguage:" ascii
        $key_20 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_32be75b7
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_32be75b7"

    strings:
        $key_0 = "APPLE:" ascii
        $key_1 = "Admin Group:" ascii
        $key_2 = "BUILD NAME:" ascii
        $key_3 = "Computer Name:" ascii
        $key_4 = "Country:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "Domain Name:" ascii
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

rule RedlineLike_Stealer_cystack_36946d93
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_36946d93"

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
        $key_13 = "Product Key:" ascii
        $key_14 = "System Language:" ascii
        $key_15 = "TimeZone:" ascii
        $key_16 = "User Name:" ascii
        $key_17 = "UserLanguage:" ascii
        $key_18 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_3c5357c9
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_3c5357c9"

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
        $key_11 = "Product Key:" ascii
        $key_12 = "System Language:" ascii
        $key_13 = "TimeZone:" ascii
        $key_14 = "User Name:" ascii
        $key_15 = "UserLanguage:" ascii
        $key_16 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_3ffbbc4b
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_3ffbbc4b"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Display Resolution:" ascii
        $key_3 = "Domain Name:" ascii
        $key_4 = "Graphics card:" ascii
        $key_5 = "Integrity:" ascii
        $key_6 = "Keyboard Language:" ascii
        $key_7 = "Log date:" ascii
        $key_8 = "MachineID:" ascii
        $key_9 = "Operation System:" ascii
        $key_10 = "Processor:" ascii
        $key_11 = "Product Key:" ascii
        $key_12 = "TimeZone:" ascii
        $key_13 = "User Name:" ascii
        $key_14 = "UserLanguage:" ascii
        $key_15 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_42e7066c
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_42e7066c"

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
        $key_10 = "MachineID:" ascii
        $key_11 = "Operation System:" ascii
        $key_12 = "Processor:" ascii
        $key_13 = "Product Key:" ascii
        $key_14 = "System Language:" ascii
        $key_15 = "TimeZone:" ascii
        $key_16 = "User Name:" ascii
        $key_17 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
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

rule RedlineLike_Stealer_cystack_49f11599
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_49f11599"

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
        $key_12 = "MachineID:" ascii
        $key_13 = "Operation System:" ascii
        $key_14 = "Processor:" ascii
        $key_15 = "Prodct Key:" ascii
        $key_16 = "System Language:" ascii
        $key_17 = "TimeZone:" ascii
        $key_18 = "User Name:" ascii
        $key_19 = "UserLanguage:" ascii
        $key_20 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
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

rule RedlineLike_Stealer_cystack_5064d0de
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_5064d0de"

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
        $key_10 = "Log date:" ascii
        $key_11 = "MachineID:" ascii
        $key_12 = "Operation System:" ascii
        $key_13 = "Processor:" ascii
        $key_14 = "System Language:" ascii
        $key_15 = "TimeZone:" ascii
        $key_16 = "User Name:" ascii
        $key_17 = "UserLanguage:" ascii
        $key_18 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_5076fdca
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_5076fdca"

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
        $key_10 = "MachineID:" ascii
        $key_11 = "Operation System:" ascii
        $key_12 = "Processor:" ascii
        $key_13 = "Product Key:" ascii
        $key_14 = "System Language:" ascii
        $key_15 = "TimeZone:" ascii
        $key_16 = "User Name:" ascii
        $key_17 = "UserLanguage:" ascii
        $key_18 = "Wallpaper Hash:" ascii

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

rule RedlineLike_Stealer_cystack_5542c850
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_5542c850"

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
        $key_14 = "Product Key:" ascii
        $key_15 = "System Language:" ascii
        $key_16 = "TimeZone:" ascii
        $key_17 = "User Name:" ascii
        $key_18 = "UserLanguage:" ascii
        $key_19 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_59125a87
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_59125a87"

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
        $key_16 = "Traffic:" ascii
        $key_17 = "User Name:" ascii
        $key_18 = "UserLanguage:" ascii
        $key_19 = "Version Build:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_5f7be6d7
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_5f7be6d7"

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
        $key_10 = "Log date:" ascii
        $key_11 = "MachineID:" ascii
        $key_12 = "Operation System:" ascii
        $key_13 = "Processor:" ascii
        $key_14 = "Product Key:" ascii
        $key_15 = "System Language:" ascii
        $key_16 = "TimeZone:" ascii
        $key_17 = "Traffic:" ascii
        $key_18 = "User Name:" ascii
        $key_19 = "UserLanguage:" ascii
        $key_20 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_60ccf6d5
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_60ccf6d5"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Display Resolution:" ascii
        $key_3 = "Domain Name:" ascii
        $key_4 = "Graphics card:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "Installed RAM:" ascii
        $key_7 = "Integrity:" ascii
        $key_8 = "Keyboard Language:" ascii
        $key_9 = "MachineID:" ascii
        $key_10 = "Operation System:" ascii
        $key_11 = "Processor:" ascii
        $key_12 = "Product Key:" ascii
        $key_13 = "System Language:" ascii
        $key_14 = "TimeZone:" ascii
        $key_15 = "User Name:" ascii
        $key_16 = "UserLanguage:" ascii
        $key_17 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_64ab919a
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_64ab919a"

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
        $key_10 = "Log date:" ascii
        $key_11 = "MachineID:" ascii
        $key_12 = "Operation System:" ascii
        $key_13 = "Processor:" ascii
        $key_14 = "Product Key:" ascii
        $key_15 = "System Language:" ascii
        $key_16 = "TimeZone:" ascii
        $key_17 = "Traffic:" ascii
        $key_18 = "UserLanguage:" ascii
        $key_19 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_655435f6
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_655435f6"

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
        $key_11 = "MachineID:" ascii
        $key_12 = "Operation System:" ascii
        $key_13 = "Processor:" ascii
        $key_14 = "Product Key:" ascii
        $key_15 = "System Language:" ascii
        $key_16 = "TimeZone:" ascii
        $key_17 = "User Name:" ascii
        $key_18 = "UserLanguage:" ascii
        $key_19 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_67d5e1ab
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_67d5e1ab"

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

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_6d229675
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_6d229675"

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
        $key_9 = "Log date:" ascii
        $key_10 = "Operation System:" ascii
        $key_11 = "Processor:" ascii
        $key_12 = "Product Key:" ascii
        $key_13 = "System Language:" ascii
        $key_14 = "TimeZone:" ascii
        $key_15 = "User Name:" ascii
        $key_16 = "UserLanguage:" ascii
        $key_17 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_6f79d741
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_6f79d741"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Display Resolution:" ascii
        $key_3 = "Domain Name:" ascii
        $key_4 = "Graphics card:" ascii
        $key_5 = "Installed RAM:" ascii
        $key_6 = "Integrity:" ascii
        $key_7 = "Keyboard Language:" ascii
        $key_8 = "Log date:" ascii
        $key_9 = "MachineID:" ascii
        $key_10 = "Operation System:" ascii
        $key_11 = "Processor:" ascii
        $key_12 = "Product Key:" ascii
        $key_13 = "System Language:" ascii
        $key_14 = "TimeZone:" ascii
        $key_15 = "Traffic:" ascii
        $key_16 = "User Name:" ascii
        $key_17 = "UserLanguage:" ascii
        $key_18 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_7219389c
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_7219389c"

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
        $key_12 = "MachineID:" ascii
        $key_13 = "Operation System:" ascii
        $key_14 = "Processor:" ascii
        $key_15 = "Product Key:" ascii
        $key_16 = "System Language:" ascii
        $key_17 = "TimeZone:" ascii
        $key_18 = "User Name:" ascii
        $key_19 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_730f988c
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_730f988c"

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
        $key_12 = "MachineID:" ascii
        $key_13 = "Operation System:" ascii
        $key_14 = "Processor:" ascii
        $key_15 = "System Language:" ascii
        $key_16 = "TimeZone:" ascii
        $key_17 = "User Name:" ascii
        $key_18 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_7a2d1647
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_7a2d1647"

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
        $key_12 = "System Language:" ascii
        $key_13 = "TimeZone:" ascii
        $key_14 = "User Name:" ascii
        $key_15 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_7cd05ed9
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_7cd05ed9"

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

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_83c06639
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_83c06639"

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
        $key_11 = "MachineID:" ascii
        $key_12 = "Operation System:" ascii
        $key_13 = "Processor:" ascii
        $key_14 = "System Language:" ascii
        $key_15 = "TimeZone:" ascii
        $key_16 = "User Name:" ascii
        $key_17 = "UserLanguage:" ascii
        $key_18 = "Wallpaper Hash:" ascii

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

rule RedlineLike_Stealer_cystack_9e96ff0e
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_9e96ff0e"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "Domain Name:" ascii
        $key_5 = "Graphics card:" ascii
        $key_6 = "Installed RAM:" ascii
        $key_7 = "Integrity:" ascii
        $key_8 = "Keyboard Language:" ascii
        $key_9 = "Log date:" ascii
        $key_10 = "MachineID:" ascii
        $key_11 = "Operation System:" ascii
        $key_12 = "Processor:" ascii
        $key_13 = "Product Key:" ascii
        $key_14 = "System Language:" ascii
        $key_15 = "TimeZone:" ascii
        $key_16 = "User Name:" ascii
        $key_17 = "UserLanguage:" ascii
        $key_18 = "Wallpaper Hash:" ascii

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

rule RedlineLike_Stealer_cystack_a0f3c667
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_a0f3c667"

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
        $key_13 = "System Language:" ascii
        $key_14 = "TimeZone:" ascii
        $key_15 = "User Name:" ascii
        $key_16 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_a5858752
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_a5858752"

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
        $key_9 = "MachineID:" ascii
        $key_10 = "Operation System:" ascii
        $key_11 = "Processor:" ascii
        $key_12 = "System Language:" ascii
        $key_13 = "TimeZone:" ascii
        $key_14 = "User Name:" ascii
        $key_15 = "UserLanguage:" ascii
        $key_16 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_ac3930f8
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_ac3930f8"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "BUILD NAME:" ascii
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

rule RedlineLike_Stealer_cystack_ac5ebc70
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_ac5ebc70"

    strings:
        $key_0 = "Computer Name:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Display Resolution:" ascii
        $key_3 = "Domain Name:" ascii
        $key_4 = "HWID:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "Installed RAM:" ascii
        $key_7 = "Keyboard Language:" ascii
        $key_8 = "Log date:" ascii
        $key_9 = "MachineID:" ascii
        $key_10 = "Operation System:" ascii
        $key_11 = "Processor:" ascii
        $key_12 = "Product Key:" ascii
        $key_13 = "System Language:" ascii
        $key_14 = "TimeZone:" ascii
        $key_15 = "Traffic:" ascii
        $key_16 = "User Name:" ascii
        $key_17 = "UserLanguage:" ascii
        $key_18 = "Video card:" ascii
        $key_19 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_ae1e54a0
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_ae1e54a0"

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
        $key_11 = "System Language:" ascii
        $key_12 = "TimeZone:" ascii
        $key_13 = "User Name:" ascii
        $key_14 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_b2032ab1
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_b2032ab1"

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
        $key_11 = "Product Key:" ascii
        $key_12 = "System Language:" ascii
        $key_13 = "TimeZone:" ascii
        $key_14 = "User Name:" ascii
        $key_15 = "UserLanguage:" ascii
        $key_16 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_b59e8be9
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_b59e8be9"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Display Resolution:" ascii
        $key_3 = "Domain Name:" ascii
        $key_4 = "Graphics card:" ascii
        $key_5 = "Installed RAM:" ascii
        $key_6 = "Integrity:" ascii
        $key_7 = "Keyboard Language:" ascii
        $key_8 = "Log date:" ascii
        $key_9 = "MachineID:" ascii
        $key_10 = "Operation System:" ascii
        $key_11 = "Product Key:" ascii
        $key_12 = "TimeZone:" ascii
        $key_13 = "Traffic:" ascii
        $key_14 = "User Name:" ascii
        $key_15 = "UserLanguage:" ascii
        $key_16 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_bc033686
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_bc033686"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Domain Name:" ascii
        $key_4 = "Graphics card:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "Installed RAM:" ascii
        $key_7 = "Integrity:" ascii
        $key_8 = "Keyboard Language:" ascii
        $key_9 = "MachineID:" ascii
        $key_10 = "Operation System:" ascii
        $key_11 = "Processor:" ascii
        $key_12 = "Product Key:" ascii
        $key_13 = "System Language:" ascii
        $key_14 = "TimeZone:" ascii
        $key_15 = "User Name:" ascii
        $key_16 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_be979f63
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_be979f63"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Display Resolution:" ascii
        $key_3 = "Domain Name:" ascii
        $key_4 = "Graphics card:" ascii
        $key_5 = "Installed RAM:" ascii
        $key_6 = "Integrity:" ascii
        $key_7 = "Keyboard Language:" ascii
        $key_8 = "Log date:" ascii
        $key_9 = "MachineID:" ascii
        $key_10 = "Operation System:" ascii
        $key_11 = "Product Key:" ascii
        $key_12 = "System Language:" ascii
        $key_13 = "TimeZone:" ascii
        $key_14 = "User Name:" ascii
        $key_15 = "UserLanguage:" ascii
        $key_16 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_c1e6a3a7
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_c1e6a3a7"

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
        $key_12 = "MachineID:" ascii
        $key_13 = "Operation System:" ascii
        $key_14 = "Processor:" ascii
        $key_15 = "Product Key:" ascii
        $key_16 = "System Language:" ascii
        $key_17 = "TimeZone:" ascii
        $key_18 = "UserLanguage:" ascii
        $key_19 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_c47c7f16
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_c47c7f16"

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
        $key_10 = "Log date:" ascii
        $key_11 = "MachineID:" ascii
        $key_12 = "Operation System:" ascii
        $key_13 = "Processor:" ascii
        $key_14 = "Product Key:" ascii
        $key_15 = "System Language:" ascii
        $key_16 = "TimeZone:" ascii
        $key_17 = "User Name:" ascii
        $key_18 = "UserLanguage:" ascii
        $key_19 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_c6375578
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_c6375578"

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
        $key_12 = "Product Key:" ascii
        $key_13 = "System Language:" ascii
        $key_14 = "TimeZone:" ascii
        $key_15 = "User Name:" ascii
        $key_16 = "UserLanguage:" ascii
        $key_17 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_cfd0ac77
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_cfd0ac77"

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

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_d377db09
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_d377db09"

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
        $key_12 = "MachineID:" ascii
        $key_13 = "Operation System:" ascii
        $key_14 = "Processor:" ascii
        $key_15 = "System Language:" ascii
        $key_16 = "TimeZone:" ascii
        $key_17 = "User Name:" ascii
        $key_18 = "UserLanguage:" ascii
        $key_19 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_d5e7e4a8
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_d5e7e4a8"

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
        $key_12 = "MachineID:" ascii
        $key_13 = "Operation System:" ascii
        $key_14 = "Processor:" ascii
        $key_15 = "Product Key:" ascii
        $key_16 = "System Language:" ascii
        $key_17 = "TimeZone:" ascii
        $key_18 = "Traffic:" ascii
        $key_19 = "User Name:" ascii
        $key_20 = "UserLanguage:" ascii
        $key_21 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_d7d05872
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_d7d05872"

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

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_d9d3b27b
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_d9d3b27b"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Display Resolution:" ascii
        $key_3 = "Domain Name:" ascii
        $key_4 = "Graphics card:" ascii
        $key_5 = "ID:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Installed RAM:" ascii
        $key_8 = "Integrity:" ascii
        $key_9 = "Keyboard Language:" ascii
        $key_10 = "Operation System:" ascii
        $key_11 = "Processor:" ascii
        $key_12 = "Product Key:" ascii
        $key_13 = "System Language:" ascii
        $key_14 = "TimeZone:" ascii
        $key_15 = "User Name:" ascii
        $key_16 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_dfdae098
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_dfdae098"

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

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_e5cf90e8
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_e5cf90e8"

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
        $key_10 = "MachineID:" ascii
        $key_11 = "Operation System:" ascii
        $key_12 = "Processor:" ascii
        $key_13 = "System Language:" ascii
        $key_14 = "TimeZone:" ascii
        $key_15 = "User Name:" ascii
        $key_16 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_e9c9d718
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_e9c9d718"

    strings:
        $key_0 = "Country:" ascii
        $key_1 = "Graphics card:" ascii
        $key_2 = "HWID:" ascii
        $key_3 = "IP:" ascii
        $key_4 = "Installed RAM:" ascii
        $key_5 = "Log date:" ascii
        $key_6 = "Operation System:" ascii
        $key_7 = "Processor:" ascii
        $key_8 = "System Language:" ascii
        $key_9 = "Traffic:" ascii
        $key_10 = "Version Build:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_ea2cf1f2
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_ea2cf1f2"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Display Resolution:" ascii
        $key_3 = "Domain Name:" ascii
        $key_4 = "Graphics card:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "Installed RAM:" ascii
        $key_7 = "Integrity:" ascii
        $key_8 = "Keyboard Language:" ascii
        $key_9 = "MachineID:" ascii
        $key_10 = "Operation System:" ascii
        $key_11 = "Processor:" ascii
        $key_12 = "System Language:" ascii
        $key_13 = "TimeZone:" ascii
        $key_14 = "User Name:" ascii
        $key_15 = "UserLanguage:" ascii
        $key_16 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_ea6a2985
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_ea6a2985"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Display Resolution:" ascii
        $key_3 = "Domain Name:" ascii
        $key_4 = "Graphics card:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "Installed RAM:" ascii
        $key_7 = "Integrity:" ascii
        $key_8 = "Keyboard Language:" ascii
        $key_9 = "MachineID:" ascii
        $key_10 = "Operation System:" ascii
        $key_11 = "Processor:" ascii
        $key_12 = "Prodct Key:" ascii
        $key_13 = "System Language:" ascii
        $key_14 = "TimeZone:" ascii
        $key_15 = "User Name:" ascii
        $key_16 = "UserLanguage:" ascii
        $key_17 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_ee3d861c
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_ee3d861c"

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
        $key_10 = "MachineID:" ascii
        $key_11 = "Operation System:" ascii
        $key_12 = "Processor:" ascii
        $key_13 = "System Language:" ascii
        $key_14 = "TimeZone:" ascii
        $key_15 = "User Name:" ascii
        $key_16 = "UserLanguage:" ascii
        $key_17 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_ef4e0d1b
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_ef4e0d1b"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Display Resolution:" ascii
        $key_3 = "Domain Name:" ascii
        $key_4 = "Graphics card:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "Installed RAM:" ascii
        $key_7 = "Integrity:" ascii
        $key_8 = "Keyboard Language:" ascii
        $key_9 = "MachineID:" ascii
        $key_10 = "Operation System:" ascii
        $key_11 = "Processor:" ascii
        $key_12 = "Product Key:" ascii
        $key_13 = "System Language:" ascii
        $key_14 = "TimeZone:" ascii
        $key_15 = "User Name:" ascii
        $key_16 = "UserLanguage:" ascii

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

rule RedlineLike_Stealer_cystack_fa688f82
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_fa688f82"

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
        $key_9 = "MachineID:" ascii
        $key_10 = "Operation System:" ascii
        $key_11 = "Processor:" ascii
        $key_12 = "Product Key:" ascii
        $key_13 = "System Language:" ascii
        $key_14 = "TimeZone:" ascii
        $key_15 = "User Name:" ascii
        $key_16 = "UserLanguage:" ascii
        $key_17 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_fc732c97
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_fc732c97"

    strings:
        $key_0 = "Computer Name:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Domain Name:" ascii
        $key_3 = "Graphics card:" ascii
        $key_4 = "HWID:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "Installed RAM:" ascii
        $key_7 = "Log date:" ascii
        $key_8 = "Operation System:" ascii
        $key_9 = "Processor:" ascii
        $key_10 = "System Language:" ascii
        $key_11 = "Traffic:" ascii
        $key_12 = "Version Build:" ascii

    condition:
        all of ($key_*)
}

rule RedlineLike_Stealer_cystack_fddd76ee
{
    meta:
        family = "RedlineLike Stealer"
        fingerprint_id = "cystack_fddd76ee"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "BUILD NAME:" ascii
        $key_2 = "Computer Name:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Display Resolution:" ascii
        $key_5 = "Domain Name:" ascii
        $key_6 = "Graphics card:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "Installed RAM:" ascii
        $key_9 = "Integrity:" ascii
        $key_10 = "Keyboard Language:" ascii
        $key_11 = "Operation System:" ascii
        $key_12 = "Router MAC Address:" ascii
        $key_13 = "System Language:" ascii
        $key_14 = "TimeZone:" ascii
        $key_15 = "User Name:" ascii
        $key_16 = "UserLanguage:" ascii
        $key_17 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}
