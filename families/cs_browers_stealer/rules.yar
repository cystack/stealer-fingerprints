// YARA rules for CSBrowersStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSBrowersStealer_cystack_0120da9d
{
    meta:
        family = "CSBrowersStealer"
        fingerprint_id = "cystack_0120da9d"

    strings:
        $key_0 = "Antivirus:" ascii
        $key_1 = "Applications:" ascii
        $key_2 = "Browers:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Extensions:" ascii
        $key_5 = "Facebook:" ascii
        $key_6 = "Ip:" ascii
        $key_7 = "Username:" ascii
        $key_8 = "Wallets:" ascii

    condition:
        all of ($key_*)
}

rule CSBrowersStealer_cystack_128633b4
{
    meta:
        family = "CSBrowersStealer"
        fingerprint_id = "cystack_128633b4"

    strings:
        $key_0 = "Antivirus:" ascii
        $key_1 = "Applications:" ascii
        $key_2 = "Browers:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Extensions:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "Username:" ascii
        $key_7 = "Wallets:" ascii

    condition:
        all of ($key_*)
}

rule CSBrowersStealer_cystack_4fdd346f
{
    meta:
        family = "CSBrowersStealer"
        fingerprint_id = "cystack_4fdd346f"

    strings:
        $key_0 = "Antivirus:" ascii
        $key_1 = "Applications:" ascii
        $key_2 = "Browers:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Extensions:" ascii
        $key_5 = "Facebook:" ascii
        $key_6 = "Username:" ascii
        $key_7 = "Wallets:" ascii

    condition:
        all of ($key_*)
}

rule CSBrowersStealer_cystack_74dcf9e8
{
    meta:
        family = "CSBrowersStealer"
        fingerprint_id = "cystack_74dcf9e8"

    strings:
        $key_0 = "Antivirus:" ascii
        $key_1 = "Applications:" ascii
        $key_2 = "Browers:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Extensions:" ascii
        $key_5 = "Facebook:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Username:" ascii
        $key_8 = "Wallets:" ascii

    condition:
        all of ($key_*)
}
