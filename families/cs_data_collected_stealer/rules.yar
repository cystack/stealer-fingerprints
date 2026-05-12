// YARA rules for CSDataCollectedStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSDataCollectedStealer_data_collected_successfully_ack
{
    meta:
        family = "CSDataCollectedStealer"
        fingerprint_id = "data_collected_successfully_ack"

    strings:
        $key_0 = "Computer:" ascii
        $key_1 = "IP:" ascii

    condition:
        all of ($key_*)
}
