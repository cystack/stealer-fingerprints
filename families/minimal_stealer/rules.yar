// YARA rules for Minimal Stealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule Minimal_Stealer_cystack_11d74302
{
    meta:
        family = "Minimal Stealer"
        fingerprint_id = "cystack_11d74302"

    strings:
        $key_0 = "CPU:" ascii
        $key_1 = "Computer:" ascii
        $key_2 = "GPU:" ascii
        $key_3 = "OS:" ascii
        $key_4 = "RAM:" ascii
        $key_5 = "Resolution:" ascii
        $key_6 = "User:" ascii

    condition:
        all of ($key_*)
}
