// YARA rules for CSWLFRCloudStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSWLFRCloudStealer_the_best_fresh_logs_and_ulp_cloud
{
    meta:
        family = "CSWLFRCloudStealer"
        fingerprint_id = "the_best_fresh_logs_and_ulp_cloud"

    strings:
        $key_0 = "Buy:" ascii
        $key_1 = "Reserve Link:" ascii

    condition:
        all of ($key_*)
}
