// YARA rules for CSGADSPanelStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSGADSPanelStealer_cystack_e76892c4
{
    meta:
        family = "CSGADSPanelStealer"
        fingerprint_id = "cystack_e76892c4"

    strings:
        $key_0 = "AntiVirus:" ascii
        $key_1 = "Browser Data:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "IP:" ascii
        $key_4 = "User:" ascii

    condition:
        all of ($key_*)
}
