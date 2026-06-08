// YARA rules for CSMrdUidStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSMrdUidStealer_cystack_7c108e60
{
    meta:
        family = "CSMrdUidStealer"
        fingerprint_id = "cystack_7c108e60"

    strings:
        $key_0 = "CPU:" ascii
        $key_1 = "ComputerName:" ascii
        $key_2 = "DateTime:" ascii
        $key_3 = "Disk:" ascii
        $key_4 = "Display Resolution:" ascii
        $key_5 = "GPU:" ascii
        $key_6 = "Installed software:" ascii
        $key_7 = "Keyboard Languages:" ascii
        $key_8 = "OS:" ascii
        $key_9 = "Process:" ascii
        $key_10 = "RAM:" ascii
        $key_11 = "UID:" ascii
        $key_12 = "UserAgent:" ascii
        $key_13 = "UserName:" ascii

    condition:
        all of ($key_*)
}

rule CSMrdUidStealer_cystack_a2d5a331
{
    meta:
        family = "CSMrdUidStealer"
        fingerprint_id = "cystack_a2d5a331"

    strings:
        $key_0 = "CPU:" ascii
        $key_1 = "ComputerName:" ascii
        $key_2 = "DateTime:" ascii
        $key_3 = "Disk:" ascii
        $key_4 = "Display Resolution:" ascii
        $key_5 = "GPU:" ascii
        $key_6 = "Installed software:" ascii
        $key_7 = "Keyboard Languages:" ascii
        $key_8 = "OS:" ascii
        $key_9 = "Process:" ascii
        $key_10 = "RAM:" ascii
        $key_11 = "UID:" ascii
        $key_12 = "UserName:" ascii

    condition:
        all of ($key_*)
}

rule CSMrdUidStealer_cystack_c4068d09
{
    meta:
        family = "CSMrdUidStealer"
        fingerprint_id = "cystack_c4068d09"

    strings:
        $key_0 = "CPU:" ascii
        $key_1 = "ComputerName:" ascii
        $key_2 = "DateTime:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "GPU:" ascii
        $key_5 = "Installed software:" ascii
        $key_6 = "Keyboard Languages:" ascii
        $key_7 = "OS:" ascii
        $key_8 = "RAM:" ascii
        $key_9 = "UID:" ascii
        $key_10 = "UserAgent:" ascii
        $key_11 = "UserName:" ascii

    condition:
        all of ($key_*)
}
