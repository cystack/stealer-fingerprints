// YARA rules for PyInfo Stealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule PyInfo_Stealer_cystack_824c4bdd
{
    meta:
        family = "PyInfo Stealer"
        fingerprint_id = "cystack_824c4bdd"

    strings:
        $key_0 = "Architecture:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Hostname:" ascii
        $key_4 = "IP:" ascii
        $key_5 = "ISP:" ascii
        $key_6 = "OS:" ascii
        $key_7 = "Org:" ascii
        $key_8 = "Processor:" ascii
        $key_9 = "Region:" ascii
        $key_10 = "User:" ascii

    condition:
        all of ($key_*)
}
