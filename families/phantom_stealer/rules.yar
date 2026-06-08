// YARA rules for Phantom Stealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule Phantom_Stealer_cystack_99a5bf98
{
    meta:
        family = "Phantom Stealer"
        fingerprint_id = "cystack_99a5bf98"

    strings:
        $key_0 = "Admin rights:" ascii
        $key_1 = "CPU:" ascii
        $key_2 = "GPU:" ascii
        $key_3 = "Ip:" ascii
        $key_4 = "Location:" ascii
        $key_5 = "PC-name:" ascii
        $key_6 = "Ram:" ascii
        $key_7 = "System:" ascii
        $key_8 = "Username:" ascii

    condition:
        all of ($key_*)
}
