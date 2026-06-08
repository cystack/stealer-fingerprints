// YARA rules for CSUsersListStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSUsersListStealer_bradmax
{
    meta:
        family = "CSUsersListStealer"
        fingerprint_id = "bradmax"

    strings:
        $key_0 = "HWID:" ascii
        $key_1 = "IP:" ascii
        $key_2 = "Users:" ascii

    condition:
        all of ($key_*)
}
