// YARA rules for CSBareUsernameAVStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSBareUsernameAVStealer_cystack_78329a08
{
    meta:
        family = "CSBareUsernameAVStealer"
        fingerprint_id = "cystack_78329a08"

    strings:
        $key_0 = "AntiVirus:" ascii
        $key_1 = "IP:" ascii
        $key_2 = "Username:" ascii

    condition:
        all of ($key_*)
}
