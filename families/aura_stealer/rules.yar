// YARA rules for AuraStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule AuraStealer_cystack_7146b159
{
    meta:
        family = "AuraStealer"
        fingerprint_id = "cystack_7146b159"

    strings:
        $key_0 = "HWID:" ascii
        $key_1 = "Launched at:" ascii
        $key_2 = "Location:" ascii
        $key_3 = "Run as Admin:" ascii
        $key_4 = "Running on:" ascii
        $key_5 = "User in Admins group:" ascii

    condition:
        all of ($key_*)
}

rule AuraStealer_cystack_e35cafcc
{
    meta:
        family = "AuraStealer"
        fingerprint_id = "cystack_e35cafcc"

    strings:
        $key_0 = "Launched at:" ascii
        $key_1 = "Location:" ascii
        $key_2 = "Run as Admin:" ascii
        $key_3 = "Running on:" ascii
        $key_4 = "User in Admins group:" ascii

    condition:
        all of ($key_*)
}
