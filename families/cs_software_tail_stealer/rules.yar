// YARA rules for CSSoftwareTailStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSSoftwareTailStealer_bradmax
{
    meta:
        family = "CSSoftwareTailStealer"
        fingerprint_id = "bradmax"

    strings:
        $key_0 = "All Users:" ascii
        $key_1 = "Color Depth:" ascii
        $key_2 = "Device Name:" ascii
        $key_3 = "Device String:" ascii
        $key_4 = "Installed Apps:" ascii
        $key_5 = "Network Info:" ascii
        $key_6 = "Process List:" ascii
        $key_7 = "Process count:" ascii
        $key_8 = "Resolution:" ascii

    condition:
        all of ($key_*)
}
