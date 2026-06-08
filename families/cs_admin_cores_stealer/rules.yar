// YARA rules for CSAdminCoresStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSAdminCoresStealer_cystack_d4351ed0
{
    meta:
        family = "CSAdminCoresStealer"
        fingerprint_id = "cystack_d4351ed0"

    strings:
        $key_0 = "ADMIN:" ascii
        $key_1 = "CORES:" ascii
        $key_2 = "CPU:" ascii
        $key_3 = "HWID:" ascii
        $key_4 = "IP:" ascii
        $key_5 = "LID:" ascii
        $key_6 = "OS:" ascii
        $key_7 = "RAM:" ascii
        $key_8 = "USERNAME:" ascii

    condition:
        all of ($key_*)
}
