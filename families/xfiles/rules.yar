// YARA rules for XFiles.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule XFiles_cystack_fe611d56
{
    meta:
        family = "XFiles"
        fingerprint_id = "cystack_fe611d56"

    strings:
        $key_0 = "Buy:" ascii
        $key_1 = "CPU (Processor):" ascii
        $key_2 = "Computer Name:" ascii
        $key_3 = "Desktop Screenshot Taken:" ascii
        $key_4 = "GPU (Display Devices):" ascii
        $key_5 = "Hardware ID:" ascii
        $key_6 = "Processed parts:" ascii
        $key_7 = "RAM (Memory):" ascii
        $key_8 = "Reserve Link:" ascii
        $key_9 = "Screens:" ascii
        $key_10 = "Username:" ascii

    condition:
        all of ($key_*)
}
