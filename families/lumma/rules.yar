// YARA rules for Lumma.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule Lumma_cystack_033e06aa
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_033e06aa"

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

rule Lumma_cystack_0b22cc29
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_0b22cc29"

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
        $key_13 = "NetBIOS:" ascii
        $key_14 = "Path:" ascii
        $key_15 = "RAM Size:" ascii
        $key_16 = "Time:" ascii
        $key_17 = "Time Zone:" ascii
        $key_18 = "User:" ascii

    condition:
        all of ($key_*)
}

rule Lumma_cystack_0e7834a9
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_0e7834a9"

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
        $key_12 = "Language:" ascii
        $key_13 = "Local Date:" ascii
        $key_14 = "LummaC2 Build:" ascii
        $key_15 = "NetBIOS:" ascii
        $key_16 = "OS Version:" ascii
        $key_17 = "Path:" ascii
        $key_18 = "RAM Size:" ascii
        $key_19 = "Time Zone:" ascii
        $key_20 = "User:" ascii

    condition:
        all of ($key_*)
}

rule Lumma_cystack_17440144
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_17440144"

    strings:
        $key_0 = "CPU Cores:" ascii
        $key_1 = "CPU Name:" ascii
        $key_2 = "CPU Threads:" ascii
        $key_3 = "CPU Vendor:" ascii
        $key_4 = "Country:" ascii
        $key_5 = "Display resolution:" ascii
        $key_6 = "HWID:" ascii
        $key_7 = "Hostname:" ascii
        $key_8 = "IP Address:" ascii
        $key_9 = "LID:" ascii
        $key_10 = "Language:" ascii
        $key_11 = "NetBIOS:" ascii
        $key_12 = "OS Version:" ascii
        $key_13 = "Path:" ascii
        $key_14 = "RAM Size:" ascii
        $key_15 = "Time:" ascii
        $key_16 = "User:" ascii

    condition:
        all of ($key_*)
}

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

rule Lumma_cystack_30e46fb7
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_30e46fb7"

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

rule Lumma_cystack_353a363d
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_353a363d"

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

rule Lumma_cystack_38ce40fc
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_38ce40fc"

    strings:
        $key_0 = "CPU Cores:" ascii
        $key_1 = "CPU Name:" ascii
        $key_2 = "CPU Threads:" ascii
        $key_3 = "CPU Vendor:" ascii
        $key_4 = "Computer:" ascii
        $key_5 = "Country:" ascii
        $key_6 = "Display resolution:" ascii
        $key_7 = "HWID:" ascii
        $key_8 = "Hostname:" ascii
        $key_9 = "IP Address:" ascii
        $key_10 = "Install Date:" ascii
        $key_11 = "LID:" ascii
        $key_12 = "Language:" ascii
        $key_13 = "NetBIOS:" ascii
        $key_14 = "Path:" ascii
        $key_15 = "RAM Size:" ascii
        $key_16 = "Time:" ascii
        $key_17 = "User:" ascii

    condition:
        all of ($key_*)
}

rule Lumma_cystack_40fa2320
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_40fa2320"

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
        $key_19 = "RAM Size:" ascii
        $key_20 = "Time Zone:" ascii
        $key_21 = "User:" ascii

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

rule Lumma_cystack_4d2e6c3b
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_4d2e6c3b"

    strings:
        $key_0 = "CPU Cores:" ascii
        $key_1 = "CPU Name:" ascii
        $key_2 = "CPU Threads:" ascii
        $key_3 = "CPU Vendor:" ascii
        $key_4 = "Country:" ascii
        $key_5 = "Display resolution:" ascii
        $key_6 = "Elevated:" ascii
        $key_7 = "HWID:" ascii
        $key_8 = "Hostname:" ascii
        $key_9 = "IP Address:" ascii
        $key_10 = "LID:" ascii
        $key_11 = "Language:" ascii
        $key_12 = "NetBIOS:" ascii
        $key_13 = "Path:" ascii
        $key_14 = "RAM Size:" ascii
        $key_15 = "Time:" ascii
        $key_16 = "User:" ascii

    condition:
        all of ($key_*)
}

rule Lumma_cystack_501a4d38
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_501a4d38"

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
        $key_9 = "IP Address:" ascii
        $key_10 = "Install Date:" ascii
        $key_11 = "LID:" ascii
        $key_12 = "Language:" ascii
        $key_13 = "Local Date:" ascii
        $key_14 = "LummaC2 Build:" ascii
        $key_15 = "NetBIOS:" ascii
        $key_16 = "OS Version:" ascii
        $key_17 = "RAM Size:" ascii
        $key_18 = "Time Zone:" ascii
        $key_19 = "User:" ascii

    condition:
        all of ($key_*)
}

rule Lumma_cystack_5178f185
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_5178f185"

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
        $key_17 = "Path:" ascii
        $key_18 = "RAM Size:" ascii
        $key_19 = "Time Zone:" ascii
        $key_20 = "User:" ascii

    condition:
        all of ($key_*)
}

rule Lumma_cystack_5492ae4d
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_5492ae4d"

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
        $key_11 = "Language:" ascii
        $key_12 = "Local Date:" ascii
        $key_13 = "LummaC2 Build:" ascii
        $key_14 = "NetBIOS:" ascii
        $key_15 = "OS Version:" ascii
        $key_16 = "Path:" ascii
        $key_17 = "RAM Size:" ascii
        $key_18 = "Time:" ascii
        $key_19 = "Time Zone:" ascii
        $key_20 = "User:" ascii

    condition:
        all of ($key_*)
}

rule Lumma_cystack_642a0aa1
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_642a0aa1"

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
        $key_13 = "NetBIOS:" ascii
        $key_14 = "OS Version:" ascii
        $key_15 = "Path:" ascii
        $key_16 = "RAM Size:" ascii
        $key_17 = "Time:" ascii
        $key_18 = "User:" ascii

    condition:
        all of ($key_*)
}

rule Lumma_cystack_67f302a7
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_67f302a7"

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
        $key_12 = "LID:" ascii
        $key_13 = "Language:" ascii
        $key_14 = "NetBIOS:" ascii
        $key_15 = "Path:" ascii
        $key_16 = "RAM Size:" ascii
        $key_17 = "Time:" ascii
        $key_18 = "Time Zone:" ascii
        $key_19 = "User:" ascii

    condition:
        all of ($key_*)
}

rule Lumma_cystack_70df1596
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_70df1596"

    strings:
        $key_0 = "CPU Cores:" ascii
        $key_1 = "CPU Name:" ascii
        $key_2 = "CPU Threads:" ascii
        $key_3 = "CPU Vendor:" ascii
        $key_4 = "Country:" ascii
        $key_5 = "Display resolution:" ascii
        $key_6 = "Domain:" ascii
        $key_7 = "Elevated:" ascii
        $key_8 = "HWID:" ascii
        $key_9 = "Hostname:" ascii
        $key_10 = "IP Address:" ascii
        $key_11 = "LID:" ascii
        $key_12 = "Language:" ascii
        $key_13 = "NetBIOS:" ascii
        $key_14 = "Path:" ascii
        $key_15 = "RAM Size:" ascii
        $key_16 = "Time:" ascii
        $key_17 = "User:" ascii

    condition:
        all of ($key_*)
}

rule Lumma_cystack_75f6591e
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_75f6591e"

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

rule Lumma_cystack_78a2bec1
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_78a2bec1"

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
        $key_19 = "RAM Size:" ascii
        $key_20 = "Time:" ascii
        $key_21 = "Time Zone:" ascii
        $key_22 = "User:" ascii

    condition:
        all of ($key_*)
}

rule Lumma_cystack_7c2f44f2
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_7c2f44f2"

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
        $key_13 = "NetBIOS:" ascii
        $key_14 = "Path:" ascii
        $key_15 = "RAM Size:" ascii
        $key_16 = "Time Zone:" ascii
        $key_17 = "User:" ascii

    condition:
        all of ($key_*)
}

rule Lumma_cystack_7ea45bcd
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_7ea45bcd"

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
        $key_15 = "RAM Size:" ascii
        $key_16 = "Time:" ascii
        $key_17 = "User:" ascii

    condition:
        all of ($key_*)
}

rule Lumma_cystack_8176e468
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_8176e468"

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

rule Lumma_cystack_86f8cf79
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_86f8cf79"

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
        $key_17 = "RAM Size:" ascii
        $key_18 = "Time:" ascii
        $key_19 = "Time Zone:" ascii
        $key_20 = "User:" ascii

    condition:
        all of ($key_*)
}

rule Lumma_cystack_a1eca2c0
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_a1eca2c0"

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
        $key_9 = "IP Address:" ascii
        $key_10 = "Install Date:" ascii
        $key_11 = "Language:" ascii
        $key_12 = "Local Date:" ascii
        $key_13 = "LummaC2 Build:" ascii
        $key_14 = "NetBIOS:" ascii
        $key_15 = "OS Version:" ascii
        $key_16 = "Path:" ascii
        $key_17 = "RAM Size:" ascii
        $key_18 = "Time:" ascii
        $key_19 = "Time Zone:" ascii
        $key_20 = "User:" ascii

    condition:
        all of ($key_*)
}

rule Lumma_cystack_a2cb2029
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_a2cb2029"

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
        $key_17 = "Path:" ascii
        $key_18 = "RAM Size:" ascii
        $key_19 = "Time:" ascii
        $key_20 = "Time Zone:" ascii
        $key_21 = "User:" ascii

    condition:
        all of ($key_*)
}

rule Lumma_cystack_a33378ed
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_a33378ed"

    strings:
        $key_0 = "CPU Cores:" ascii
        $key_1 = "CPU Name:" ascii
        $key_2 = "CPU Threads:" ascii
        $key_3 = "CPU Vendor:" ascii
        $key_4 = "Computer:" ascii
        $key_5 = "Country:" ascii
        $key_6 = "Display resolution:" ascii
        $key_7 = "HWID:" ascii
        $key_8 = "Hostname:" ascii
        $key_9 = "IP Address:" ascii
        $key_10 = "LID:" ascii
        $key_11 = "Language:" ascii
        $key_12 = "LummaC2 Build:" ascii
        $key_13 = "NetBIOS:" ascii
        $key_14 = "RAM Size:" ascii
        $key_15 = "Time:" ascii

    condition:
        all of ($key_*)
}

rule Lumma_cystack_a373b677
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_a373b677"

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
        $key_9 = "IP Address:" ascii
        $key_10 = "Install Date:" ascii
        $key_11 = "LID:" ascii
        $key_12 = "Language:" ascii
        $key_13 = "Local Date:" ascii
        $key_14 = "LummaC2 Build:" ascii
        $key_15 = "NetBIOS:" ascii
        $key_16 = "OS Version:" ascii
        $key_17 = "RAM Size:" ascii
        $key_18 = "Time:" ascii
        $key_19 = "Time Zone:" ascii
        $key_20 = "User:" ascii

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

rule Lumma_cystack_b7e3e9f5
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_b7e3e9f5"

    strings:
        $key_0 = "CPU Cores:" ascii
        $key_1 = "CPU Name:" ascii
        $key_2 = "CPU Threads:" ascii
        $key_3 = "CPU Vendor:" ascii
        $key_4 = "Country:" ascii
        $key_5 = "Display resolution:" ascii
        $key_6 = "Elevated:" ascii
        $key_7 = "HWID:" ascii
        $key_8 = "Hostname:" ascii
        $key_9 = "IP Address:" ascii
        $key_10 = "LID:" ascii
        $key_11 = "Language:" ascii
        $key_12 = "LummaC2 Build:" ascii
        $key_13 = "NetBIOS:" ascii
        $key_14 = "RAM Size:" ascii
        $key_15 = "Time:" ascii
        $key_16 = "User:" ascii

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

rule Lumma_cystack_c8acc99b
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_c8acc99b"

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
        $key_18 = "RAM Size:" ascii
        $key_19 = "Time:" ascii
        $key_20 = "Time Zone:" ascii
        $key_21 = "User:" ascii

    condition:
        all of ($key_*)
}

rule Lumma_cystack_cd164f31
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_cd164f31"

    strings:
        $key_0 = "CPU Cores:" ascii
        $key_1 = "CPU Name:" ascii
        $key_2 = "CPU Threads:" ascii
        $key_3 = "CPU Vendor:" ascii
        $key_4 = "Computer:" ascii
        $key_5 = "Country:" ascii
        $key_6 = "Display resolution:" ascii
        $key_7 = "HWID:" ascii
        $key_8 = "Hostname:" ascii
        $key_9 = "IP Address:" ascii
        $key_10 = "LID:" ascii
        $key_11 = "Language:" ascii
        $key_12 = "LummaC2 Build:" ascii
        $key_13 = "NetBIOS:" ascii
        $key_14 = "Path:" ascii
        $key_15 = "RAM Size:" ascii
        $key_16 = "Time:" ascii
        $key_17 = "User:" ascii

    condition:
        all of ($key_*)
}

rule Lumma_cystack_d9beb4e5
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_d9beb4e5"

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
        $key_18 = "RAM Size:" ascii
        $key_19 = "Time Zone:" ascii
        $key_20 = "User:" ascii

    condition:
        all of ($key_*)
}

rule Lumma_cystack_e2af0132
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_e2af0132"

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
        $key_11 = "Language:" ascii
        $key_12 = "LummaC2 Build:" ascii
        $key_13 = "NetBIOS:" ascii
        $key_14 = "Path:" ascii
        $key_15 = "RAM Size:" ascii
        $key_16 = "Time:" ascii
        $key_17 = "User:" ascii

    condition:
        all of ($key_*)
}

rule Lumma_cystack_e4df1ff8
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_e4df1ff8"

    strings:
        $key_0 = "CPU Cores:" ascii
        $key_1 = "CPU Name:" ascii
        $key_2 = "CPU Threads:" ascii
        $key_3 = "CPU Vendor:" ascii
        $key_4 = "Country:" ascii
        $key_5 = "Display resolution:" ascii
        $key_6 = "Elevated:" ascii
        $key_7 = "HWID:" ascii
        $key_8 = "Hostname:" ascii
        $key_9 = "IP Address:" ascii
        $key_10 = "LID:" ascii
        $key_11 = "Language:" ascii
        $key_12 = "LummaC2 Build:" ascii
        $key_13 = "NetBIOS:" ascii
        $key_14 = "RAM Size:" ascii
        $key_15 = "User:" ascii

    condition:
        all of ($key_*)
}

rule Lumma_cystack_e841a58c
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_e841a58c"

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
        $key_12 = "LID:" ascii
        $key_13 = "Language:" ascii
        $key_14 = "Local Date:" ascii
        $key_15 = "LummaC2 Build:" ascii
        $key_16 = "NetBIOS:" ascii
        $key_17 = "OS Version:" ascii
        $key_18 = "RAM Size:" ascii
        $key_19 = "Time:" ascii
        $key_20 = "Time Zone:" ascii
        $key_21 = "User:" ascii

    condition:
        all of ($key_*)
}

rule Lumma_cystack_ee2649ee
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_ee2649ee"

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
        $key_18 = "RAM Size:" ascii
        $key_19 = "Time:" ascii
        $key_20 = "Time Zone:" ascii

    condition:
        all of ($key_*)
}

rule Lumma_cystack_f3c7371d
{
    meta:
        family = "Lumma"
        fingerprint_id = "cystack_f3c7371d"

    strings:
        $key_0 = "CPU Cores:" ascii
        $key_1 = "CPU Name:" ascii
        $key_2 = "CPU Threads:" ascii
        $key_3 = "CPU Vendor:" ascii
        $key_4 = "Computer:" ascii
        $key_5 = "Country:" ascii
        $key_6 = "Display resolution:" ascii
        $key_7 = "HWID:" ascii
        $key_8 = "Hostname:" ascii
        $key_9 = "IP Address:" ascii
        $key_10 = "LID:" ascii
        $key_11 = "Language:" ascii
        $key_12 = "NetBIOS:" ascii
        $key_13 = "Path:" ascii
        $key_14 = "RAM Size:" ascii
        $key_15 = "Time:" ascii
        $key_16 = "Time Zone:" ascii
        $key_17 = "User:" ascii

    condition:
        all of ($key_*)
}
