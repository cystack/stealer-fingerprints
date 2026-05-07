// YARA rules for CSHunterCloudStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSHunterCloudStealer_cystack_1863c96d
{
    meta:
        family = "CSHunterCloudStealer"
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

rule CSHunterCloudStealer_cystack_47bdc5de
{
    meta:
        family = "CSHunterCloudStealer"
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

rule CSHunterCloudStealer_cystack_5455ca59
{
    meta:
        family = "CSHunterCloudStealer"
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

rule CSHunterCloudStealer_cystack_733cba35
{
    meta:
        family = "CSHunterCloudStealer"
        fingerprint_id = "cystack_733cba35"

    strings:
        $key_0 = "Computer Name:" ascii
        $key_1 = "Network Info:" ascii
        $key_2 = "Process List:" ascii
        $key_3 = "Process count:" ascii
        $key_4 = "System Summary:" ascii

    condition:
        all of ($key_*)
}

rule CSHunterCloudStealer_cystack_d018500e
{
    meta:
        family = "CSHunterCloudStealer"
        fingerprint_id = "cystack_d018500e"

    strings:
        $key_0 = "CPU:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "GPU:" ascii
        $key_4 = "Hwid:" ascii
        $key_5 = "RAM:" ascii
        $key_6 = "Screensize:" ascii
        $key_7 = "System Language:" ascii
        $key_8 = "Timezone:" ascii

    condition:
        all of ($key_*)
}

rule CSHunterCloudStealer_cystack_d706f1b5
{
    meta:
        family = "CSHunterCloudStealer"
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

rule CSHunterCloudStealer_cystack_d7c6c67e
{
    meta:
        family = "CSHunterCloudStealer"
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

rule CSHunterCloudStealer_cystack_f95511e0
{
    meta:
        family = "CSHunterCloudStealer"
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
