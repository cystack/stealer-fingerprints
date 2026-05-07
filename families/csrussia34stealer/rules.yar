// YARA rules for CSRussia34Stealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSRussia34Stealer_cystack_0fe89d26
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_0fe89d26"

    strings:
        $key_0 = "Computer Name:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "IP:" ascii
        $key_3 = "Operating System:" ascii
        $key_4 = "Username:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_18ae3e96
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_18ae3e96"

    strings:
        $key_0 = "Country:" ascii
        $key_1 = "Operating System:" ascii
        $key_2 = "Username:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_2d2c7ce0
{
    meta:
        family = "CSRussia34Stealer"
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

rule CSRussia34Stealer_cystack_3f14dfa1
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_3f14dfa1"

    strings:
        $key_0 = "Chipset Model:" ascii
        $key_1 = "Memory:" ascii
        $key_2 = "Model Name:" ascii
        $key_3 = "Resolution:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_4177c9d7
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_4177c9d7"

    strings:
        $key_0 = "CPU Cores:" ascii
        $key_1 = "CPU Name:" ascii
        $key_2 = "CPU Threads:" ascii
        $key_3 = "CPU Vendor:" ascii
        $key_4 = "Country:" ascii
        $key_5 = "Display resolution:" ascii
        $key_6 = "Domain:" ascii
        $key_7 = "GPU:" ascii
        $key_8 = "HWID:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_4565f9fe
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_4565f9fe"

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
        $key_13 = "TimeZone:" ascii
        $key_14 = "User Name:" ascii
        $key_15 = "UserLanguage:" ascii
        $key_16 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_4afc8936
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_4afc8936"

    strings:
        $key_0 = "Country:" ascii
        $key_1 = "HWID:" ascii
        $key_2 = "IP:" ascii
        $key_3 = "Operation System:" ascii
        $key_4 = "ScreenSize:" ascii
        $key_5 = "UserName:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_4d67d751
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_4d67d751"

    strings:
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
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_5455ca59
{
    meta:
        family = "CSRussia34Stealer"
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

rule CSRussia34Stealer_cystack_55a19892
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_55a19892"

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
        $key_9 = "System Language:" ascii
        $key_10 = "TimeZone:" ascii
        $key_11 = "User Name:" ascii
        $key_12 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_604764a3
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_604764a3"

    strings:
        $key_0 = "CPU (Processor):" ascii
        $key_1 = "Country:" ascii
        $key_2 = "IP:" ascii
        $key_3 = "Operating System:" ascii
        $key_4 = "Username:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_6e4a1437
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_6e4a1437"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "Domain Name:" ascii
        $key_5 = "Graphics card:" ascii
        $key_6 = "IP:" ascii
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

rule CSRussia34Stealer_cystack_796e25f3
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_796e25f3"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Display Resolution:" ascii
        $key_2 = "Domain Name:" ascii
        $key_3 = "Graphics card:" ascii
        $key_4 = "Installed RAM:" ascii
        $key_5 = "Integrity:" ascii
        $key_6 = "Keyboard Language:" ascii
        $key_7 = "Operation System:" ascii
        $key_8 = "System Language:" ascii
        $key_9 = "TimeZone:" ascii
        $key_10 = "User Name:" ascii
        $key_11 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_a355753e
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_a355753e"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Display Resolution:" ascii
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

rule CSRussia34Stealer_cystack_a5b1cb3f
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_a5b1cb3f"

    strings:
        $key_0 = "Country:" ascii
        $key_1 = "HWID:" ascii
        $key_2 = "Operation System:" ascii
        $key_3 = "ScreenSize:" ascii
        $key_4 = "UserName:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_ae1e54a0
{
    meta:
        family = "CSRussia34Stealer"
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

rule CSRussia34Stealer_cystack_c8d510fe
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_c8d510fe"

    strings:
        $key_0 = "Computer Name:" ascii
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

rule CSRussia34Stealer_cystack_d2200157
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_d2200157"

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
        $key_17 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_db621574
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_db621574"

    strings:
        $key_0 = "HWID:" ascii
        $key_1 = "Operation System:" ascii
        $key_2 = "ScreenSize:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_ea9c3c30
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_ea9c3c30"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "Domain Name:" ascii
        $key_5 = "Graphics card:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Installed RAM:" ascii
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

rule CSRussia34Stealer_cystack_f2741cce
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_f2741cce"

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
        $key_14 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_fc838809
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_fc838809"

    strings:
        $key_0 = "CPU (Processor):" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "IP:" ascii
        $key_4 = "Operating System:" ascii
        $key_5 = "Username:" ascii

    condition:
        all of ($key_*)
}
