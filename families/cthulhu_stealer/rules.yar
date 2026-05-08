// YARA rules for Cthulhu Stealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule Cthulhu_Stealer_cystack_0525ee66
{
    meta:
        family = "Cthulhu Stealer"
        fingerprint_id = "cystack_0525ee66"

    strings:
        $key_0 = "BuildID:" ascii
        $key_1 = "Graphics/Displays:" ascii
        $key_2 = "Hardware:" ascii
        $key_3 = "Software:" ascii
        $key_4 = "Timezone:" ascii
        $key_5 = "Zipcode:" ascii

    condition:
        all of ($key_*)
}

rule Cthulhu_Stealer_cystack_9862de74
{
    meta:
        family = "Cthulhu Stealer"
        fingerprint_id = "cystack_9862de74"

    strings:
        $key_0 = "BuildID:" ascii
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
