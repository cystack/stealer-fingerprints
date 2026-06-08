// YARA rules for DiskInfo Stealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule DiskInfo_Stealer_cystack_d665d19f
{
    meta:
        family = "DiskInfo Stealer"
        fingerprint_id = "cystack_d665d19f"

    strings:
        $key_0 = "Computer:" ascii
        $key_1 = "Disk Capacity:" ascii
        $key_2 = "Disk Free:" ascii
        $key_3 = "Memory:" ascii
        $key_4 = "OS:" ascii
        $key_5 = "User:" ascii

    condition:
        all of ($key_*)
}
