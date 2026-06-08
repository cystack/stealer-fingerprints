// YARA rules for CSMacUserinfoStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSMacUserinfoStealer_cystack_5d07c49b
{
    meta:
        family = "CSMacUserinfoStealer"
        fingerprint_id = "cystack_5d07c49b"

    strings:
        $key_0 = "Board-ID:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Country Code:" ascii
        $key_4 = "Graphics/Displays:" ascii
        $key_5 = "Hardware:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Latitude:" ascii
        $key_8 = "Longitude:" ascii
        $key_9 = "Region:" ascii
        $key_10 = "Software:" ascii
        $key_11 = "Timezone:" ascii
        $key_12 = "Zipcode:" ascii

    condition:
        all of ($key_*)
}

rule CSMacUserinfoStealer_cystack_92283eb3
{
    meta:
        family = "CSMacUserinfoStealer"
        fingerprint_id = "cystack_92283eb3"

    strings:
        $key_0 = "City:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Country Code:" ascii
        $key_3 = "Hardware:" ascii
        $key_4 = "IP:" ascii
        $key_5 = "Latitude:" ascii
        $key_6 = "Longitude:" ascii
        $key_7 = "Region:" ascii
        $key_8 = "Software:" ascii
        $key_9 = "Timezone:" ascii
        $key_10 = "Zipcode:" ascii

    condition:
        all of ($key_*)
}

rule CSMacUserinfoStealer_cystack_e6b74373
{
    meta:
        family = "CSMacUserinfoStealer"
        fingerprint_id = "cystack_e6b74373"

    strings:
        $key_0 = "City:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Country Code:" ascii
        $key_3 = "Graphics/Displays:" ascii
        $key_4 = "Hardware:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "Latitude:" ascii
        $key_7 = "Longitude:" ascii
        $key_8 = "Region:" ascii
        $key_9 = "Software:" ascii
        $key_10 = "Timezone:" ascii
        $key_11 = "Zipcode:" ascii

    condition:
        all of ($key_*)
}
