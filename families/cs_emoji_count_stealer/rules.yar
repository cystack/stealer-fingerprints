// YARA rules for CSEmojiCountStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSEmojiCountStealer_cystack_1a0ba773
{
    meta:
        family = "CSEmojiCountStealer"
        fingerprint_id = "cystack_1a0ba773"

    strings:
        $key_0 = "Antivirus:" ascii
        $key_1 = "Build:" ascii
        $key_2 = "CPU:" ascii
        $key_3 = "City:" ascii
        $key_4 = "Cookies:" ascii
        $key_5 = "Country:" ascii
        $key_6 = "Credit Cards:" ascii
        $key_7 = "Current Language:" ascii
        $key_8 = "Discord Tokens:" ascii
        $key_9 = "FileLocation:" ascii
        $key_10 = "Files:" ascii
        $key_11 = "GPU:" ascii
        $key_12 = "IP:" ascii
        $key_13 = "ISP:" ascii
        $key_14 = "Is Elevated:" ascii
        $key_15 = "OS:" ascii
        $key_16 = "Others:" ascii
        $key_17 = "Passwords:" ascii
        $key_18 = "Postal:" ascii
        $key_19 = "Servers FTP/SSH:" ascii
        $key_20 = "Timezone:" ascii
        $key_21 = "Wallets:" ascii

    condition:
        all of ($key_*)
}

rule CSEmojiCountStealer_cystack_b6fbe92c
{
    meta:
        family = "CSEmojiCountStealer"
        fingerprint_id = "cystack_b6fbe92c"

    strings:
        $key_0 = "Antivirus:" ascii
        $key_1 = "Build:" ascii
        $key_2 = "CPU:" ascii
        $key_3 = "City:" ascii
        $key_4 = "Cookies:" ascii
        $key_5 = "Country:" ascii
        $key_6 = "Credit Cards:" ascii
        $key_7 = "Current Language:" ascii
        $key_8 = "Discord Tokens:" ascii
        $key_9 = "FileLocation:" ascii
        $key_10 = "Files:" ascii
        $key_11 = "GPU:" ascii
        $key_12 = "HWID:" ascii
        $key_13 = "IP:" ascii
        $key_14 = "ISP:" ascii
        $key_15 = "Is Elevated:" ascii
        $key_16 = "OS:" ascii
        $key_17 = "Others:" ascii
        $key_18 = "Passwords:" ascii
        $key_19 = "Postal:" ascii
        $key_20 = "Servers FTP/SSH:" ascii
        $key_21 = "Timezone:" ascii
        $key_22 = "Wallets:" ascii

    condition:
        all of ($key_*)
}
