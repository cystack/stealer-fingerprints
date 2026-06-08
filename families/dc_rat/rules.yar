// YARA rules for DCRat.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule DCRat_cystack_7508f5a5
{
    meta:
        family = "DCRat"
        fingerprint_id = "cystack_7508f5a5"

    strings:
        $key_0 = "Antivirus:" ascii
        $key_1 = "BIOS:" ascii
        $key_2 = "CPU Name:" ascii
        $key_3 = "City:" ascii
        $key_4 = "Country code:" ascii
        $key_5 = "Firewall:" ascii
        $key_6 = "Framework Version:" ascii
        $key_7 = "GPU Name:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "LANIP:" ascii
        $key_10 = "Location:" ascii
        $key_11 = "Motherboard:" ascii
        $key_12 = "PC Name:" ascii
        $key_13 = "Path:" ascii
        $key_14 = "RAM:" ascii
        $key_15 = "Screens:" ascii
        $key_16 = "User Name:" ascii
        $key_17 = "Windows:" ascii

    condition:
        all of ($key_*)
}

rule DCRat_cystack_874d2bb5
{
    meta:
        family = "DCRat"
        fingerprint_id = "cystack_874d2bb5"

    strings:
        $key_0 = "Antivirus:" ascii
        $key_1 = "BIOS:" ascii
        $key_2 = "CPU Cores:" ascii
        $key_3 = "CPU Name:" ascii
        $key_4 = "City:" ascii
        $key_5 = "Country:" ascii
        $key_6 = "Firewall:" ascii
        $key_7 = "GPU Mode:" ascii
        $key_8 = "GPU Name:" ascii
        $key_9 = "IP:" ascii
        $key_10 = "LANIP:" ascii
        $key_11 = "Location:" ascii
        $key_12 = "Monitors:" ascii
        $key_13 = "Motherboard:" ascii
        $key_14 = "PC Name:" ascii
        $key_15 = "Path:" ascii
        $key_16 = "RAM:" ascii
        $key_17 = "Save Time:" ascii
        $key_18 = "User Name:" ascii
        $key_19 = "Windows:" ascii

    condition:
        all of ($key_*)
}

rule DCRat_cystack_9303ddc1
{
    meta:
        family = "DCRat"
        fingerprint_id = "cystack_9303ddc1"

    strings:
        $key_0 = "Antivirus:" ascii
        $key_1 = "BIOS:" ascii
        $key_2 = "CPU Cores:" ascii
        $key_3 = "CPU Name:" ascii
        $key_4 = "City:" ascii
        $key_5 = "Country Code:" ascii
        $key_6 = "Firewall:" ascii
        $key_7 = "GPU Mode:" ascii
        $key_8 = "GPU Name:" ascii
        $key_9 = "IP:" ascii
        $key_10 = "LANIP:" ascii
        $key_11 = "Location:" ascii
        $key_12 = "Monitors:" ascii
        $key_13 = "Motherboard:" ascii
        $key_14 = "PC Name:" ascii
        $key_15 = "Path:" ascii
        $key_16 = "RAM:" ascii
        $key_17 = "Save Time:" ascii
        $key_18 = "User Name:" ascii
        $key_19 = "Windows:" ascii

    condition:
        all of ($key_*)
}
