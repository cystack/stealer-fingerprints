// YARA rules for CSMacKeychainPassStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSMacKeychainPassStealer_cystack_009c8f5c
{
    meta:
        family = "CSMacKeychainPassStealer"
        fingerprint_id = "cystack_009c8f5c"

    strings:
        $key_0 = "Graphics/Displays:" ascii
        $key_1 = "Hardware:" ascii
        $key_2 = "IP:" ascii
        $key_3 = "Password:" ascii
        $key_4 = "Software:" ascii
        $key_5 = "Username:" ascii

    condition:
        all of ($key_*)
}
