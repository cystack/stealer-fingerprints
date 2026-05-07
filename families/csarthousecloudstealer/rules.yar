// YARA rules for CSArtHouseCloudStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSArtHouseCloudStealer_cystack_4177c9d7
{
    meta:
        family = "CSArtHouseCloudStealer"
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

rule CSArtHouseCloudStealer_cystack_4afc8936
{
    meta:
        family = "CSArtHouseCloudStealer"
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

rule CSArtHouseCloudStealer_cystack_604764a3
{
    meta:
        family = "CSArtHouseCloudStealer"
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

rule CSArtHouseCloudStealer_cystack_931e4ef2
{
    meta:
        family = "CSArtHouseCloudStealer"
        fingerprint_id = "cystack_931e4ef2"

    strings:
        $key_0 = "Country:" ascii
        $key_1 = "IP:" ascii
        $key_2 = "Operating System:" ascii
        $key_3 = "Username:" ascii

    condition:
        all of ($key_*)
}
