// YARA rules for CSGeoSysInfoStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSGeoSysInfoStealer_cystack_829961c1
{
    meta:
        family = "CSGeoSysInfoStealer"
        fingerprint_id = "cystack_829961c1"

    strings:
        $key_0 = "CPU:" ascii
        $key_1 = "Computer:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "GPU:" ascii
        $key_4 = "IP:" ascii
        $key_5 = "OS:" ascii
        $key_6 = "RAM:" ascii
        $key_7 = "User:" ascii

    condition:
        all of ($key_*)
}
