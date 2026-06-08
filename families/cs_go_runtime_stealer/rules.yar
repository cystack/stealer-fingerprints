// YARA rules for CSGoRuntimeStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSGoRuntimeStealer_cystack_68b1c634
{
    meta:
        family = "CSGoRuntimeStealer"
        fingerprint_id = "cystack_68b1c634"

    strings:
        $key_0 = "Computer:" ascii
        $key_1 = "Directory:" ascii
        $key_2 = "OS:" ascii
        $key_3 = "User:" ascii

    condition:
        all of ($key_*)
}
