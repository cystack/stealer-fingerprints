// YARA rules for SHub Stealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule SHub_Stealer_cystack_aa3df1c7
{
    meta:
        family = "SHub Stealer"
        fingerprint_id = "cystack_aa3df1c7"

    strings:
        $key_0 = "Build Tag:" ascii
        $key_1 = "External IP:" ascii
        $key_2 = "Graphics/Displays:" ascii
        $key_3 = "Hardware:" ascii
        $key_4 = "Password:" ascii
        $key_5 = "Software:" ascii
        $key_6 = "Username:" ascii

    condition:
        all of ($key_*)
}
