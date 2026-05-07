// YARA rules for CSALStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSALStealer_cystack_32fa8e1f
{
    meta:
        family = "CSALStealer"
        fingerprint_id = "cystack_32fa8e1f"

    strings:
        $key_0 = "Buy:" ascii
        $key_1 = "Reserve Link:" ascii

    condition:
        all of ($key_*)
}
