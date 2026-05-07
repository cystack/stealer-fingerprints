// YARA rules for CSPixelCloudStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSPixelCloudStealer_cystack_04b4fc19
{
    meta:
        family = "CSPixelCloudStealer"
        fingerprint_id = "cystack_04b4fc19"

    strings:
        $key_0 = "CPU (Processor):" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Operating System:" ascii
        $key_3 = "Username:" ascii

    condition:
        all of ($key_*)
}

rule CSPixelCloudStealer_cystack_0fe89d26
{
    meta:
        family = "CSPixelCloudStealer"
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

rule CSPixelCloudStealer_cystack_47bdc5de
{
    meta:
        family = "CSPixelCloudStealer"
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

rule CSPixelCloudStealer_cystack_4afc8936
{
    meta:
        family = "CSPixelCloudStealer"
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

rule CSPixelCloudStealer_cystack_55a19892
{
    meta:
        family = "CSPixelCloudStealer"
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

rule CSPixelCloudStealer_cystack_604764a3
{
    meta:
        family = "CSPixelCloudStealer"
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

rule CSPixelCloudStealer_cystack_7043df8f
{
    meta:
        family = "CSPixelCloudStealer"
        fingerprint_id = "cystack_7043df8f"

    strings:
        $key_0 = "Operating System:" ascii
        $key_1 = "Username:" ascii

    condition:
        all of ($key_*)
}

rule CSPixelCloudStealer_cystack_796e25f3
{
    meta:
        family = "CSPixelCloudStealer"
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

rule CSPixelCloudStealer_cystack_7a2d1647
{
    meta:
        family = "CSPixelCloudStealer"
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

rule CSPixelCloudStealer_cystack_7c3f49e3
{
    meta:
        family = "CSPixelCloudStealer"
        fingerprint_id = "cystack_7c3f49e3"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Display Resolution:" ascii
        $key_2 = "Domain Name:" ascii
        $key_3 = "Installed RAM:" ascii
        $key_4 = "Integrity:" ascii
        $key_5 = "Keyboard Language:" ascii
        $key_6 = "Operation System:" ascii
        $key_7 = "System Language:" ascii
        $key_8 = "TimeZone:" ascii
        $key_9 = "User Name:" ascii
        $key_10 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule CSPixelCloudStealer_cystack_a5b1cb3f
{
    meta:
        family = "CSPixelCloudStealer"
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

rule CSPixelCloudStealer_cystack_d7c6c67e
{
    meta:
        family = "CSPixelCloudStealer"
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

rule CSPixelCloudStealer_cystack_f95511e0
{
    meta:
        family = "CSPixelCloudStealer"
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

rule CSPixelCloudStealer_cystack_fc838809
{
    meta:
        family = "CSPixelCloudStealer"
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
