// YARA rules for Redline.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule Redline_cystack_7d94dffd
{
    meta:
        family = "Redline"
        fingerprint_id = "cystack_7d94dffd"

    strings:
        $key_0 = "Anti-Viruses:" ascii
        $key_1 = "Available KeyboardLayouts:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Current Language:" ascii
        $key_4 = "FileLocation:" ascii
        $key_5 = "HWID:" ascii
        $key_6 = "Hardwares:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "Name:" ascii
        $key_9 = "Operation System:" ascii
        $key_10 = "Process Elevation:" ascii
        $key_11 = "ScreenSize:" ascii
        $key_12 = "UserName:" ascii
        $key_13 = "Zip Code:" ascii

    condition:
        all of ($key_*)
}
