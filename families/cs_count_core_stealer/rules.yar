// YARA rules for CSCountCoreStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSCountCoreStealer_cystack_012b9023
{
    meta:
        family = "CSCountCoreStealer"
        fingerprint_id = "cystack_012b9023"

    strings:
        $key_0 = "Arch:" ascii
        $key_1 = "Count Core:" ascii
        $key_2 = "Hostname:" ascii
        $key_3 = "IP Address:" ascii
        $key_4 = "User Info:" ascii
        $key_5 = "Version:" ascii

    condition:
        all of ($key_*)
}

rule CSCountCoreStealer_cystack_58103687
{
    meta:
        family = "CSCountCoreStealer"
        fingerprint_id = "cystack_58103687"

    strings:
        $key_0 = "Arch:" ascii
        $key_1 = "Count Core:" ascii
        $key_2 = "Cpu:" ascii
        $key_3 = "File Location:" ascii
        $key_4 = "Gpu:" ascii
        $key_5 = "Hostname:" ascii
        $key_6 = "IP Address:" ascii
        $key_7 = "Mac:" ascii
        $key_8 = "Release:" ascii
        $key_9 = "Type:" ascii
        $key_10 = "User Info:" ascii
        $key_11 = "Uuid:" ascii
        $key_12 = "Version:" ascii

    condition:
        all of ($key_*)
}

rule CSCountCoreStealer_cystack_6e563a49
{
    meta:
        family = "CSCountCoreStealer"
        fingerprint_id = "cystack_6e563a49"

    strings:
        $key_0 = "Arch:" ascii
        $key_1 = "Count Core:" ascii
        $key_2 = "File Location:" ascii
        $key_3 = "Hostname:" ascii
        $key_4 = "IP Address:" ascii
        $key_5 = "User Info:" ascii
        $key_6 = "Version:" ascii

    condition:
        all of ($key_*)
}

rule CSCountCoreStealer_cystack_93fdb3ac
{
    meta:
        family = "CSCountCoreStealer"
        fingerprint_id = "cystack_93fdb3ac"

    strings:
        $key_0 = "Arch:" ascii
        $key_1 = "Count Core:" ascii
        $key_2 = "File Location:" ascii
        $key_3 = "Hostname:" ascii
        $key_4 = "IP Address:" ascii
        $key_5 = "Release:" ascii
        $key_6 = "Type:" ascii
        $key_7 = "User Info:" ascii
        $key_8 = "Version:" ascii

    condition:
        all of ($key_*)
}

rule CSCountCoreStealer_cystack_aeea7400
{
    meta:
        family = "CSCountCoreStealer"
        fingerprint_id = "cystack_aeea7400"

    strings:
        $key_0 = "Arch:" ascii
        $key_1 = "Count Core:" ascii
        $key_2 = "File Location:" ascii
        $key_3 = "Hostname:" ascii
        $key_4 = "IP Address:" ascii
        $key_5 = "Release:" ascii
        $key_6 = "Type:" ascii
        $key_7 = "User Info:" ascii

    condition:
        all of ($key_*)
}

rule CSCountCoreStealer_cystack_bc6dd75d
{
    meta:
        family = "CSCountCoreStealer"
        fingerprint_id = "cystack_bc6dd75d"

    strings:
        $key_0 = "Arch:" ascii
        $key_1 = "Count Core:" ascii
        $key_2 = "Cpu:" ascii
        $key_3 = "File Location:" ascii
        $key_4 = "Gpu:" ascii
        $key_5 = "Hostname:" ascii
        $key_6 = "IP Address:" ascii
        $key_7 = "Mac:" ascii
        $key_8 = "Release:" ascii
        $key_9 = "Type:" ascii
        $key_10 = "User Info:" ascii
        $key_11 = "Uuid:" ascii

    condition:
        all of ($key_*)
}
