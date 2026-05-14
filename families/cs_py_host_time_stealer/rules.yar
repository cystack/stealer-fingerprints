// YARA rules for CSPyHostTimeStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSPyHostTimeStealer_bradmax
{
    meta:
        family = "CSPyHostTimeStealer"
        fingerprint_id = "bradmax"

    strings:
        $key_0 = "Host:" ascii
        $key_1 = "OS:" ascii
        $key_2 = "Time:" ascii

    condition:
        all of ($key_*)
}
