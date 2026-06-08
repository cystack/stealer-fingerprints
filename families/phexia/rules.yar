// YARA rules for Phexia.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule Phexia_cystack_9f0a6be5
{
    meta:
        family = "Phexia"
        fingerprint_id = "cystack_9f0a6be5"

    strings:
        $key_0 = "Build:" ascii
        $key_1 = "Graphics/Displays:" ascii
        $key_2 = "Hardware:" ascii
        $key_3 = "IP Address:" ascii
        $key_4 = "Password:" ascii
        $key_5 = "Software:" ascii
        $key_6 = "Username:" ascii

    condition:
        all of ($key_*)
}
