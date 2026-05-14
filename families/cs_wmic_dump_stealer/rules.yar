// YARA rules for CSWmicDumpStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSWmicDumpStealer_snake_case_wmic_dump_system_info_txt
{
    meta:
        family = "CSWmicDumpStealer"
        fingerprint_id = "snake_case_wmic_dump_system_info_txt"

    strings:
        $key_0 = "Ethernet adapter Ethernet:" ascii
        $key_1 = "Ethernet adapter vEthernet (Ethernet):" ascii
        $key_2 = "Ethernet adapter vEthernet (Wi-Fi):" ascii
        $key_3 = "Tunnel adapter 6to4 Adapter:" ascii
        $key_4 = "Wireless LAN adapter Wi-Fi:" ascii

    condition:
        all of ($key_*)
}
