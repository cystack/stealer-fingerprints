// YARA rules for Stealerium.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule Stealerium_stealerium_v3_5_2
{
    meta:
        family = "Stealerium"
        fingerprint_id = "stealerium_v3_5_2"

    strings:
        $key_0 = "Antivirus:" ascii
        $key_1 = "CPU:" ascii
        $key_2 = "CompName:" ascii
        $key_3 = "Date:" ascii
        $key_4 = "External IP:" ascii
        $key_5 = "GPU:" ascii
        $key_6 = "Gateway IP:" ascii
        $key_7 = "Internal IP:" ascii
        $key_8 = "Language:" ascii
        $key_9 = "Power:" ascii
        $key_10 = "RAM:" ascii
        $key_11 = "Screen:" ascii
        $key_12 = "System:" ascii
        $key_13 = "Username:" ascii
        $key_14 = "Webcams count:" ascii

    condition:
        all of ($key_*)
}
