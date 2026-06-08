// YARA rules for CSStatsSectionStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSStatsSectionStealer_cystack_8e08a598
{
    meta:
        family = "CSStatsSectionStealer"
        fingerprint_id = "cystack_8e08a598"

    strings:
        $key_0 = "Computer:" ascii
        $key_1 = "Cookies:" ascii
        $key_2 = "Credit Cards:" ascii
        $key_3 = "OS:" ascii
        $key_4 = "Passwords:" ascii
        $key_5 = "Time:" ascii
        $key_6 = "User:" ascii

    condition:
        all of ($key_*)
}
