// YARA rules for CSGeoBoxStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSGeoBoxStealer_cystack_a4e34ae5
{
    meta:
        family = "CSGeoBoxStealer"
        fingerprint_id = "cystack_a4e34ae5"

    strings:
        $key_0 = "City:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Display Resolution:" ascii
        $key_3 = "IP Address:" ascii
        $key_4 = "Keyboard Language:" ascii
        $key_5 = "Postal Code:" ascii
        $key_6 = "Region:" ascii
        $key_7 = "Timezone:" ascii
        $key_8 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}
