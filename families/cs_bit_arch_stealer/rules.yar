// YARA rules for CSBitArchStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSBitArchStealer_bitarch_x64_bit_info_txt
{
    meta:
        family = "CSBitArchStealer"
        fingerprint_id = "bitarch_x64_bit_info_txt"

    strings:
        $key_0 = "Antivirus:" ascii
        $key_1 = "BitArch:" ascii
        $key_2 = "CPU:" ascii
        $key_3 = "City:" ascii
        $key_4 = "Country:" ascii
        $key_5 = "Date:" ascii
        $key_6 = "DomainName:" ascii
        $key_7 = "GPU:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "RAM:" ascii
        $key_10 = "Region:" ascii
        $key_11 = "ScreenSize:" ascii
        $key_12 = "TimeZone:" ascii
        $key_13 = "Username:" ascii
        $key_14 = "WindowsVersion:" ascii
        $key_15 = "ZIP:" ascii

    condition:
        all of ($key_*)
}
