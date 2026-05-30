// YARA rules for CSMatchesFilterStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSMatchesFilterStealer_cystack_7cf7a69f
{
    meta:
        family = "CSMatchesFilterStealer"
        fingerprint_id = "cystack_7cf7a69f"

    strings:
        $key_0 = "Country:" ascii
        $key_1 = "IP:" ascii
        $key_2 = "Matches:" ascii
        $key_3 = "User:" ascii

    condition:
        all of ($key_*)
}
