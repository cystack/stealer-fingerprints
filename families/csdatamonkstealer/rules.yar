// YARA rules for CSDataMonkStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSDataMonkStealer_cystack_1895b35e
{
    meta:
        family = "CSDataMonkStealer"
        fingerprint_id = "cystack_1895b35e"

    strings:
        $key_0 = "Build:" ascii
        $key_1 = "CPU Cores:" ascii
        $key_2 = "CPU Threads:" ascii
        $key_3 = "Computer Name:" ascii
        $key_4 = "Drives:" ascii
        $key_5 = "GPU:" ascii
        $key_6 = "HWID:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "OS:" ascii
        $key_9 = "OS Version:" ascii
        $key_10 = "Processor:" ascii
        $key_11 = "System Language:" ascii
        $key_12 = "Total RAM:" ascii

    condition:
        all of ($key_*)
}
