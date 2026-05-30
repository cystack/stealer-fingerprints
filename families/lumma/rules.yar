// YARA rules for Lumma.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule Lumma_cystack_1989fd30
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_1989fd30"

    strings:
        $key_0 = "CPU Cores:" ascii
        $key_1 = "CPU Name:" ascii
        $key_2 = "CPU Threads:" ascii
        $key_3 = "CPU Vendor:" ascii
        $key_4 = "Computer:" ascii
        $key_5 = "Country:" ascii
        $key_6 = "Display resolution:" ascii
        $key_7 = "Elevated:" ascii
        $key_8 = "HWID:" ascii
        $key_9 = "Hostname:" ascii
        $key_10 = "IP Address:" ascii
        $key_11 = "LID:" ascii
        $key_12 = "Language:" ascii
        $key_13 = "LummaC2 Build:" ascii
        $key_14 = "NetBIOS:" ascii
        $key_15 = "Path:" ascii
        $key_16 = "RAM Size:" ascii
        $key_17 = "Time:" ascii
        $key_18 = "User:" ascii

    condition:
        all of ($key_*)
}

rule Lumma_cystack_4a2e376b
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_4a2e376b"

    strings:
        $key_0 = "CPU Cores:" ascii
        $key_1 = "CPU Name:" ascii
        $key_2 = "CPU Threads:" ascii
        $key_3 = "CPU Vendor:" ascii
        $key_4 = "Computer:" ascii
        $key_5 = "Country:" ascii
        $key_6 = "Display resolution:" ascii
        $key_7 = "Domain:" ascii
        $key_8 = "Elevated:" ascii
        $key_9 = "HWID:" ascii
        $key_10 = "Hostname:" ascii
        $key_11 = "IP Address:" ascii
        $key_12 = "Install Date:" ascii
        $key_13 = "LID:" ascii
        $key_14 = "Language:" ascii
        $key_15 = "Local Date:" ascii
        $key_16 = "LummaC2 Build:" ascii
        $key_17 = "NetBIOS:" ascii
        $key_18 = "OS Version:" ascii
        $key_19 = "Path:" ascii
        $key_20 = "RAM Size:" ascii
        $key_21 = "Time:" ascii
        $key_22 = "Time Zone:" ascii
        $key_23 = "User:" ascii

    condition:
        all of ($key_*)
}

rule Lumma_cystack_b2f2fa78
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_b2f2fa78"

    strings:
        $key_0 = "CPU Cores:" ascii
        $key_1 = "CPU Name:" ascii
        $key_2 = "CPU Threads:" ascii
        $key_3 = "CPU Vendor:" ascii
        $key_4 = "Computer:" ascii
        $key_5 = "Country:" ascii
        $key_6 = "Display resolution:" ascii
        $key_7 = "Elevated:" ascii
        $key_8 = "HWID:" ascii
        $key_9 = "Hostname:" ascii
        $key_10 = "IP Address:" ascii
        $key_11 = "Install Date:" ascii
        $key_12 = "LID:" ascii
        $key_13 = "Language:" ascii
        $key_14 = "Local Date:" ascii
        $key_15 = "LummaC2 Build:" ascii
        $key_16 = "NetBIOS:" ascii
        $key_17 = "OS Version:" ascii
        $key_18 = "Path:" ascii
        $key_19 = "RAM Size:" ascii
        $key_20 = "Time:" ascii
        $key_21 = "Time Zone:" ascii
        $key_22 = "User:" ascii

    condition:
        all of ($key_*)
}

rule Lumma_cystack_bc15a086
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_bc15a086"

    strings:
        $key_0 = "CPU Cores:" ascii
        $key_1 = "CPU Name:" ascii
        $key_2 = "CPU Threads:" ascii
        $key_3 = "CPU Vendor:" ascii
        $key_4 = "Computer:" ascii
        $key_5 = "Country:" ascii
        $key_6 = "Display resolution:" ascii
        $key_7 = "Elevated:" ascii
        $key_8 = "HWID:" ascii
        $key_9 = "Hostname:" ascii
        $key_10 = "IP Address:" ascii
        $key_11 = "LID:" ascii
        $key_12 = "Language:" ascii
        $key_13 = "Local Date:" ascii
        $key_14 = "LummaC2 Build:" ascii
        $key_15 = "NetBIOS:" ascii
        $key_16 = "OS Version:" ascii
        $key_17 = "Path:" ascii
        $key_18 = "RAM Size:" ascii
        $key_19 = "Time:" ascii
        $key_20 = "Time Zone:" ascii
        $key_21 = "User:" ascii

    condition:
        all of ($key_*)
}
