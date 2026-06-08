// YARA rules for CSSystemSummaryStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSSystemSummaryStealer_cystack_68dce857
{
    meta:
        family = "CSSystemSummaryStealer"
        fingerprint_id = "cystack_68dce857"

    strings:
        $key_0 = "Process List:" ascii
        $key_1 = "Process count:" ascii
        $key_2 = "System Summary:" ascii

    condition:
        all of ($key_*)
}
