// YARA rules for CSRussia34Stealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSRussia34Stealer_russia34_com_aggregator_legacy_mixed_sha
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "russia34_com_aggregator_legacy_mixed_sha"

    strings:
        $key_0 = "Age of Empires III:" ascii
        $key_1 = "Batman:" ascii
        $key_2 = "Call of Duty:" ascii
        $key_3 = "Cores:" ascii
        $key_4 = "Grand Theft Auto IV:" ascii
        $key_5 = "PUBG:" ascii
        $key_6 = "Processor:" ascii
        $key_7 = "Project Reality:" ascii
        $key_8 = "RAM:" ascii
        $key_9 = "Threads:" ascii
        $key_10 = "Umamusume:" ascii
        $key_11 = "VideoCard:" ascii

    condition:
        all of ($key_*)
}
