// YARA rules for BracketSection Stealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule BracketSection_Stealer_cystack_2928a851
{
    meta:
        family = "BracketSection Stealer"
        fingerprint_id = "cystack_2928a851"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "CPU:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "GPU:" ascii
        $key_4 = "Hwid:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "RAM:" ascii
        $key_7 = "Screensize:" ascii
        $key_8 = "System Language:" ascii
        $key_9 = "Timezone:" ascii
        $key_10 = "Username:" ascii

    condition:
        any of ($banner_*) or all of ($key_*)
}

rule BracketSection_Stealer_cystack_9a2ff223
{
    meta:
        family = "BracketSection Stealer"
        fingerprint_id = "cystack_9a2ff223"

    strings:
        $key_0 = "Buildtag:" ascii
        $key_1 = "CPU:" ascii
        $key_2 = "City:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "FileLocation:" ascii
        $key_5 = "GPU:" ascii
        $key_6 = "Hostname:" ascii
        $key_7 = "Hwid:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "Keyboard:" ascii
        $key_10 = "Logdate:" ascii
        $key_11 = "OS Product:" ascii
        $key_12 = "RAM:" ascii
        $key_13 = "Screensize:" ascii
        $key_14 = "System Language:" ascii
        $key_15 = "Timezone:" ascii
        $key_16 = "Username:" ascii

    condition:
        all of ($key_*)
}

rule BracketSection_Stealer_cystack_e81b5e96
{
    meta:
        family = "BracketSection Stealer"
        fingerprint_id = "cystack_e81b5e96"

    strings:
        $key_0 = "CPU:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "GPU:" ascii
        $key_4 = "Hwid:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "RAM:" ascii
        $key_7 = "Screensize:" ascii
        $key_8 = "System Language:" ascii
        $key_9 = "Timezone:" ascii
        $key_10 = "Username:" ascii

    condition:
        all of ($key_*)
}
