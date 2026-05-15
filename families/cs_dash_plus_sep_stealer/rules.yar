// YARA rules for CSDashPlusSepStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSDashPlusSepStealer_bradmax
{
    meta:
        family = "CSDashPlusSepStealer"
        fingerprint_id = "bradmax"

    strings:
        $key_0 = "CK:" ascii
        $key_1 = "ID:" ascii
        $key_2 = "Username:" ascii

    condition:
        all of ($key_*)
}
