// YARA rules for Lumma.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule Lumma_cystack_00237ee6
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_00237ee6"

    strings:
        $key_0 = "CPU Name:" ascii
        $key_1 = "CPU Threads:" ascii
        $key_2 = "CPU Vendor:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Display resolution:" ascii
        $key_5 = "Domain:" ascii
        $key_6 = "GPU:" ascii
        $key_7 = "HWID:" ascii

    condition:
        all of ($key_*)
}

rule Lumma_cystack_4177c9d7
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_4177c9d7"

    strings:
        $key_0 = "CPU Cores:" ascii
        $key_1 = "CPU Name:" ascii
        $key_2 = "CPU Threads:" ascii
        $key_3 = "CPU Vendor:" ascii
        $key_4 = "Country:" ascii
        $key_5 = "Display resolution:" ascii
        $key_6 = "Domain:" ascii
        $key_7 = "GPU:" ascii
        $key_8 = "HWID:" ascii

    condition:
        all of ($key_*)
}
