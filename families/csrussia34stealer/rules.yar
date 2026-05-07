// YARA rules for CSRussia34Stealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSRussia34Stealer_cystack_0fe89d26
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_0fe89d26"

    strings:
        $key_0 = "Computer Name:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "IP:" ascii
        $key_3 = "Operating System:" ascii
        $key_4 = "Username:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_18ae3e96
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_18ae3e96"

    strings:
        $key_0 = "Country:" ascii
        $key_1 = "Operating System:" ascii
        $key_2 = "Username:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_1b200d6d
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_1b200d6d"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Date:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "Ip:" ascii
        $key_7 = "Keyboard Languages:" ascii
        $key_8 = "Local Time:" ascii
        $key_9 = "Path:" ascii
        $key_10 = "Processor:" ascii
        $key_11 = "RAM:" ascii
        $key_12 = "Threads:" ascii
        $key_13 = "TimeZone:" ascii
        $key_14 = "User Name:" ascii
        $key_15 = "Version:" ascii
        $key_16 = "Work Dir:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_26bfa01e
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_26bfa01e"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Date:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "HWID:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "Keyboard Languages:" ascii
        $key_9 = "Local Time:" ascii
        $key_10 = "MachineID:" ascii
        $key_11 = "Path:" ascii
        $key_12 = "Processor:" ascii
        $key_13 = "RAM:" ascii
        $key_14 = "Threads:" ascii
        $key_15 = "TimeZone:" ascii
        $key_16 = "User Name:" ascii
        $key_17 = "Version:" ascii
        $key_18 = "Windows:" ascii
        $key_19 = "Work Dir:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_285dee1f
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_285dee1f"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Date:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "Ip:" ascii
        $key_7 = "Keyboard Languages:" ascii
        $key_8 = "Local Time:" ascii
        $key_9 = "Path:" ascii
        $key_10 = "Processor:" ascii
        $key_11 = "RAM:" ascii
        $key_12 = "Threads:" ascii
        $key_13 = "TimeZone:" ascii
        $key_14 = "User Name:" ascii
        $key_15 = "Version:" ascii
        $key_16 = "Windows:" ascii
        $key_17 = "Work Dir:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_28c48a61
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_28c48a61"

    strings:
        $key_0 = "Architecture:" ascii
        $key_1 = "Cores:" ascii
        $key_2 = "Device String:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "GPU:" ascii
        $key_5 = "HWID:" ascii
        $key_6 = "Language:" ascii
        $key_7 = "Laptop:" ascii
        $key_8 = "Local Time:" ascii
        $key_9 = "OS:" ascii
        $key_10 = "RAM:" ascii
        $key_11 = "Resolution:" ascii
        $key_12 = "Threads:" ascii
        $key_13 = "UTC:" ascii
        $key_14 = "UserName:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_29aeb24b
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_29aeb24b"

    strings:
        $key_0 = "ACD/Labs 2024 Freeware in C:" ascii
        $key_1 = "AV:" ascii
        $key_2 = "Computer Name:" ascii
        $key_3 = "Cores:" ascii
        $key_4 = "Country:" ascii
        $key_5 = "Date:" ascii
        $key_6 = "Display Resolution:" ascii
        $key_7 = "GUID:" ascii
        $key_8 = "HWID:" ascii
        $key_9 = "IP:" ascii
        $key_10 = "Install Date:" ascii
        $key_11 = "Keyboard Languages:" ascii
        $key_12 = "Local Time:" ascii
        $key_13 = "MachineID:" ascii
        $key_14 = "Path:" ascii
        $key_15 = "Processor:" ascii
        $key_16 = "RAM:" ascii
        $key_17 = "Threads:" ascii
        $key_18 = "TimeZone:" ascii
        $key_19 = "User Name:" ascii
        $key_20 = "Version:" ascii
        $key_21 = "VideoCard:" ascii
        $key_22 = "Windows:" ascii
        $key_23 = "Work Dir:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_2d2c7ce0
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_2d2c7ce0"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "Domain Name:" ascii
        $key_5 = "Graphics card:" ascii
        $key_6 = "HWID:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "Installed RAM:" ascii
        $key_9 = "Integrity:" ascii
        $key_10 = "Keyboard Language:" ascii
        $key_11 = "Log date:" ascii
        $key_12 = "Operation System:" ascii
        $key_13 = "Processor:" ascii
        $key_14 = "System Language:" ascii
        $key_15 = "TimeZone:" ascii
        $key_16 = "User Name:" ascii
        $key_17 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_374303d1
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_374303d1"

    strings:
        $key_0 = "Architecture:" ascii
        $key_1 = "Cores:" ascii
        $key_2 = "Device String:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "HWID:" ascii
        $key_5 = "Keyboards:" ascii
        $key_6 = "Laptop:" ascii
        $key_7 = "Local Time:" ascii
        $key_8 = "OS:" ascii
        $key_9 = "RAM:" ascii
        $key_10 = "Resolution:" ascii
        $key_11 = "Threads:" ascii
        $key_12 = "UTC:" ascii
        $key_13 = "UserName:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_37542204
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_37542204"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Date:" ascii
        $key_4 = "Display Resolution:" ascii
        $key_5 = "GUID:" ascii
        $key_6 = "HWID:" ascii
        $key_7 = "Install Date:" ascii
        $key_8 = "Keyboard Languages:" ascii
        $key_9 = "Local Time:" ascii
        $key_10 = "MachineID:" ascii
        $key_11 = "Path:" ascii
        $key_12 = "Processor:" ascii
        $key_13 = "RAM:" ascii
        $key_14 = "Threads:" ascii
        $key_15 = "TimeZone:" ascii
        $key_16 = "User Name:" ascii
        $key_17 = "Version:" ascii
        $key_18 = "VideoCard:" ascii
        $key_19 = "Windows:" ascii
        $key_20 = "Work Dir:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_39c007a2
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_39c007a2"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Display Resolution:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "Keyboard Languages:" ascii
        $key_7 = "Local Time:" ascii
        $key_8 = "Path:" ascii
        $key_9 = "Processor:" ascii
        $key_10 = "RAM:" ascii
        $key_11 = "Threads:" ascii
        $key_12 = "TimeZone:" ascii
        $key_13 = "User Name:" ascii
        $key_14 = "Version:" ascii
        $key_15 = "Windows:" ascii
        $key_16 = "Work Dir:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_3f14dfa1
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_3f14dfa1"

    strings:
        $key_0 = "Chipset Model:" ascii
        $key_1 = "Memory:" ascii
        $key_2 = "Model Name:" ascii
        $key_3 = "Resolution:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_4177c9d7
{
    meta:
        family = "CSRussia34Stealer"
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

rule CSRussia34Stealer_cystack_4565f9fe
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_4565f9fe"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "Domain Name:" ascii
        $key_5 = "Graphics card:" ascii
        $key_6 = "HWID:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "Installed RAM:" ascii
        $key_9 = "Integrity:" ascii
        $key_10 = "Keyboard Language:" ascii
        $key_11 = "Operation System:" ascii
        $key_12 = "Processor:" ascii
        $key_13 = "TimeZone:" ascii
        $key_14 = "User Name:" ascii
        $key_15 = "UserLanguage:" ascii
        $key_16 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_4719c968
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_4719c968"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Date:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "GUID:" ascii
        $key_7 = "HWID:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "Install Date:" ascii
        $key_10 = "Keyboard Languages:" ascii
        $key_11 = "Local Time:" ascii
        $key_12 = "MachineID:" ascii
        $key_13 = "Path:" ascii
        $key_14 = "Processor:" ascii
        $key_15 = "RAM:" ascii
        $key_16 = "RE:" ascii
        $key_17 = "Threads:" ascii
        $key_18 = "TimeZone:" ascii
        $key_19 = "User Name:" ascii
        $key_20 = "Version:" ascii
        $key_21 = "VideoCard:" ascii
        $key_22 = "Windows:" ascii
        $key_23 = "Work Dir:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_47bdc5de
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_47bdc5de"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Display Resolution:" ascii
        $key_3 = "Domain Name:" ascii
        $key_4 = "Graphics card:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "Installed RAM:" ascii
        $key_7 = "Integrity:" ascii
        $key_8 = "Keyboard Language:" ascii
        $key_9 = "Operation System:" ascii
        $key_10 = "Processor:" ascii
        $key_11 = "System Language:" ascii
        $key_12 = "TimeZone:" ascii
        $key_13 = "User Name:" ascii
        $key_14 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_4a6d66cc
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_4a6d66cc"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "Domain Name:" ascii
        $key_5 = "Graphics card:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Installed RAM:" ascii
        $key_8 = "Integrity:" ascii
        $key_9 = "Keyboard Language:" ascii
        $key_10 = "Operation System:" ascii
        $key_11 = "Processor:" ascii
        $key_12 = "System Language:" ascii
        $key_13 = "TimeZone:" ascii
        $key_14 = "User Name:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_4afc8936
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_4afc8936"

    strings:
        $key_0 = "Country:" ascii
        $key_1 = "HWID:" ascii
        $key_2 = "IP:" ascii
        $key_3 = "Operation System:" ascii
        $key_4 = "ScreenSize:" ascii
        $key_5 = "UserName:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_4be6fb5b
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_4be6fb5b"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Date:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "Ip:" ascii
        $key_7 = "Keyboard Languages:" ascii
        $key_8 = "Local Time:" ascii
        $key_9 = "Processor:" ascii
        $key_10 = "RAM:" ascii
        $key_11 = "Threads:" ascii
        $key_12 = "TimeZone:" ascii
        $key_13 = "User Name:" ascii
        $key_14 = "Version:" ascii
        $key_15 = "Windows:" ascii
        $key_16 = "Work Dir:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_4d67d751
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_4d67d751"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Antivirus:" ascii
        $key_2 = "City:" ascii
        $key_3 = "Computer Name:" ascii
        $key_4 = "Country:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "Domain Name:" ascii
        $key_7 = "Graphics card:" ascii
        $key_8 = "Installed RAM:" ascii
        $key_9 = "Integrity:" ascii
        $key_10 = "Keyboard Language:" ascii
        $key_11 = "Operation System:" ascii
        $key_12 = "Processor:" ascii
        $key_13 = "System Language:" ascii
        $key_14 = "TimeZone:" ascii
        $key_15 = "Timezone:" ascii
        $key_16 = "User Name:" ascii
        $key_17 = "UserLanguage:" ascii
        $key_18 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_50b2962a
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_50b2962a"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Date:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Keyboard Languages:" ascii
        $key_8 = "Local Time:" ascii
        $key_9 = "Path:" ascii
        $key_10 = "Processor:" ascii
        $key_11 = "RAM:" ascii
        $key_12 = "Threads:" ascii
        $key_13 = "TimeZone:" ascii
        $key_14 = "User Name:" ascii
        $key_15 = "Version:" ascii
        $key_16 = "Windows:" ascii
        $key_17 = "Work Dir:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_542acced
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_542acced"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "Domain Name:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "Installed RAM:" ascii
        $key_7 = "Integrity:" ascii
        $key_8 = "Keyboard Language:" ascii
        $key_9 = "Operation System:" ascii
        $key_10 = "Processor:" ascii
        $key_11 = "System Language:" ascii
        $key_12 = "TimeZone:" ascii
        $key_13 = "User Name:" ascii
        $key_14 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_5455ca59
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_5455ca59"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "Domain Name:" ascii
        $key_5 = "Graphics card:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Installed RAM:" ascii
        $key_8 = "Integrity:" ascii
        $key_9 = "Keyboard Language:" ascii
        $key_10 = "Operation System:" ascii
        $key_11 = "Processor:" ascii
        $key_12 = "System Language:" ascii
        $key_13 = "TimeZone:" ascii
        $key_14 = "User Name:" ascii
        $key_15 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_55a19892
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_55a19892"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Display Resolution:" ascii
        $key_2 = "Domain Name:" ascii
        $key_3 = "Graphics card:" ascii
        $key_4 = "IP:" ascii
        $key_5 = "Installed RAM:" ascii
        $key_6 = "Integrity:" ascii
        $key_7 = "Keyboard Language:" ascii
        $key_8 = "Operation System:" ascii
        $key_9 = "System Language:" ascii
        $key_10 = "TimeZone:" ascii
        $key_11 = "User Name:" ascii
        $key_12 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_5a3cdc62
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_5a3cdc62"

    strings:
        $key_0 = "Architecture:" ascii
        $key_1 = "Cores:" ascii
        $key_2 = "Device String:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "GPU:" ascii
        $key_5 = "HWID:" ascii
        $key_6 = "Keyboards:" ascii
        $key_7 = "Language:" ascii
        $key_8 = "Laptop:" ascii
        $key_9 = "Local Time:" ascii
        $key_10 = "OS:" ascii
        $key_11 = "RAM:" ascii
        $key_12 = "Resolution:" ascii
        $key_13 = "Threads:" ascii
        $key_14 = "UTC:" ascii
        $key_15 = "UserName:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_5a454a1f
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_5a454a1f"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Date:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Keyboard Languages:" ascii
        $key_8 = "Local Time:" ascii
        $key_9 = "Processor:" ascii
        $key_10 = "RAM:" ascii
        $key_11 = "Threads:" ascii
        $key_12 = "TimeZone:" ascii
        $key_13 = "User Name:" ascii
        $key_14 = "Version:" ascii
        $key_15 = "Windows:" ascii
        $key_16 = "Work Dir:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_604764a3
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_604764a3"

    strings:
        $key_0 = "CPU (Processor):" ascii
        $key_1 = "Country:" ascii
        $key_2 = "IP:" ascii
        $key_3 = "Operating System:" ascii
        $key_4 = "Username:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_6e4a1437
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_6e4a1437"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "Domain Name:" ascii
        $key_5 = "Graphics card:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Integrity:" ascii
        $key_8 = "Keyboard Language:" ascii
        $key_9 = "Operation System:" ascii
        $key_10 = "Processor:" ascii
        $key_11 = "System Language:" ascii
        $key_12 = "TimeZone:" ascii
        $key_13 = "User Name:" ascii
        $key_14 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_7853dcf6
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_7853dcf6"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Date:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "GUID:" ascii
        $key_7 = "HWID:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "Install Date:" ascii
        $key_10 = "Keyboard Languages:" ascii
        $key_11 = "Local Time:" ascii
        $key_12 = "MachineID:" ascii
        $key_13 = "Path:" ascii
        $key_14 = "Processor:" ascii
        $key_15 = "RAM:" ascii
        $key_16 = "Supermarket Simulator:" ascii
        $key_17 = "Threads:" ascii
        $key_18 = "TimeZone:" ascii
        $key_19 = "User Name:" ascii
        $key_20 = "Version:" ascii
        $key_21 = "VideoCard:" ascii
        $key_22 = "Windows:" ascii
        $key_23 = "Work Dir:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_796e25f3
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_796e25f3"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Display Resolution:" ascii
        $key_2 = "Domain Name:" ascii
        $key_3 = "Graphics card:" ascii
        $key_4 = "Installed RAM:" ascii
        $key_5 = "Integrity:" ascii
        $key_6 = "Keyboard Language:" ascii
        $key_7 = "Operation System:" ascii
        $key_8 = "System Language:" ascii
        $key_9 = "TimeZone:" ascii
        $key_10 = "User Name:" ascii
        $key_11 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_7fb16572
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_7fb16572"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Date:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "HWID:" ascii
        $key_7 = "Ip:" ascii
        $key_8 = "Keyboard Languages:" ascii
        $key_9 = "Local Time:" ascii
        $key_10 = "MachineID:" ascii
        $key_11 = "Path:" ascii
        $key_12 = "Processor:" ascii
        $key_13 = "RAM:" ascii
        $key_14 = "Threads:" ascii
        $key_15 = "TimeZone:" ascii
        $key_16 = "User Name:" ascii
        $key_17 = "Version:" ascii
        $key_18 = "Windows:" ascii
        $key_19 = "Work Dir:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_8126440c
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_8126440c"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Date:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "GUID:" ascii
        $key_7 = "HWID:" ascii
        $key_8 = "Install Date:" ascii
        $key_9 = "Ip:" ascii
        $key_10 = "Keyboard Languages:" ascii
        $key_11 = "Local Time:" ascii
        $key_12 = "MachineID:" ascii
        $key_13 = "Path:" ascii
        $key_14 = "Processor:" ascii
        $key_15 = "RAM:" ascii
        $key_16 = "Threads:" ascii
        $key_17 = "TimeZone:" ascii
        $key_18 = "User Name:" ascii
        $key_19 = "Version:" ascii
        $key_20 = "VideoCard:" ascii
        $key_21 = "Windows:" ascii
        $key_22 = "Work Dir:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_90a5d79f
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_90a5d79f"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Date:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Keyboard Languages:" ascii
        $key_8 = "Local Time:" ascii
        $key_9 = "Path:" ascii
        $key_10 = "Processor:" ascii
        $key_11 = "RAM:" ascii
        $key_12 = "Threads:" ascii
        $key_13 = "TimeZone:" ascii
        $key_14 = "User Name:" ascii
        $key_15 = "Version:" ascii
        $key_16 = "Work Dir:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_97155c5f
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_97155c5f"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Date:" ascii
        $key_4 = "Display Resolution:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "Keyboard Languages:" ascii
        $key_7 = "Local Time:" ascii
        $key_8 = "Path:" ascii
        $key_9 = "Processor:" ascii
        $key_10 = "RAM:" ascii
        $key_11 = "Threads:" ascii
        $key_12 = "TimeZone:" ascii
        $key_13 = "User Name:" ascii
        $key_14 = "Version:" ascii
        $key_15 = "Windows:" ascii
        $key_16 = "Work Dir:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_9e89f04b
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_9e89f04b"

    strings:
        $key_0 = "Architecture:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Device String:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "GPU:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "Keyboards:" ascii
        $key_9 = "Language:" ascii
        $key_10 = "Laptop:" ascii
        $key_11 = "Local Time:" ascii
        $key_12 = "OS:" ascii
        $key_13 = "RAM:" ascii
        $key_14 = "Resolution:" ascii
        $key_15 = "Threads:" ascii
        $key_16 = "UTC:" ascii
        $key_17 = "UserName:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_a355753e
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_a355753e"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "Graphics card:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "Installed RAM:" ascii
        $key_7 = "Integrity:" ascii
        $key_8 = "Keyboard Language:" ascii
        $key_9 = "Operation System:" ascii
        $key_10 = "Processor:" ascii
        $key_11 = "System Language:" ascii
        $key_12 = "TimeZone:" ascii
        $key_13 = "User Name:" ascii
        $key_14 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_a5b1cb3f
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_a5b1cb3f"

    strings:
        $key_0 = "Country:" ascii
        $key_1 = "HWID:" ascii
        $key_2 = "Operation System:" ascii
        $key_3 = "ScreenSize:" ascii
        $key_4 = "UserName:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_a82d5756
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_a82d5756"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Display Resolution:" ascii
        $key_5 = "Ip:" ascii
        $key_6 = "Keyboard Languages:" ascii
        $key_7 = "Local Time:" ascii
        $key_8 = "Path:" ascii
        $key_9 = "Processor:" ascii
        $key_10 = "RAM:" ascii
        $key_11 = "Threads:" ascii
        $key_12 = "TimeZone:" ascii
        $key_13 = "User Name:" ascii
        $key_14 = "Version:" ascii
        $key_15 = "Windows:" ascii
        $key_16 = "Work Dir:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_ac9f09f0
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_ac9f09f0"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Date:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "Install Date:" ascii
        $key_7 = "Ip:" ascii
        $key_8 = "Keyboard Languages:" ascii
        $key_9 = "Local Time:" ascii
        $key_10 = "Path:" ascii
        $key_11 = "Processor:" ascii
        $key_12 = "RAM:" ascii
        $key_13 = "Threads:" ascii
        $key_14 = "TimeZone:" ascii
        $key_15 = "User Name:" ascii
        $key_16 = "Version:" ascii
        $key_17 = "VideoCard:" ascii
        $key_18 = "Windows:" ascii
        $key_19 = "Work Dir:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_ad711950
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_ad711950"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Date:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "GUID:" ascii
        $key_7 = "HWID:" ascii
        $key_8 = "Install Date:" ascii
        $key_9 = "Ip:" ascii
        $key_10 = "Keyboard Languages:" ascii
        $key_11 = "Local Time:" ascii
        $key_12 = "MachineID:" ascii
        $key_13 = "Path:" ascii
        $key_14 = "Processor:" ascii
        $key_15 = "RAM:" ascii
        $key_16 = "Stealer:" ascii
        $key_17 = "Threads:" ascii
        $key_18 = "TimeZone:" ascii
        $key_19 = "User Name:" ascii
        $key_20 = "Version:" ascii
        $key_21 = "VideoCard:" ascii
        $key_22 = "Windows:" ascii
        $key_23 = "Work Dir:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_ae1e54a0
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_ae1e54a0"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "Domain Name:" ascii
        $key_5 = "Graphics card:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Installed RAM:" ascii
        $key_8 = "Integrity:" ascii
        $key_9 = "Keyboard Language:" ascii
        $key_10 = "Operation System:" ascii
        $key_11 = "System Language:" ascii
        $key_12 = "TimeZone:" ascii
        $key_13 = "User Name:" ascii
        $key_14 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_b1f517d5
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_b1f517d5"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Date:" ascii
        $key_4 = "Display Resolution:" ascii
        $key_5 = "HWID:" ascii
        $key_6 = "Keyboard Languages:" ascii
        $key_7 = "Local Time:" ascii
        $key_8 = "MachineID:" ascii
        $key_9 = "Path:" ascii
        $key_10 = "Processor:" ascii
        $key_11 = "RAM:" ascii
        $key_12 = "Threads:" ascii
        $key_13 = "TimeZone:" ascii
        $key_14 = "User Name:" ascii
        $key_15 = "Version:" ascii
        $key_16 = "Windows:" ascii
        $key_17 = "Work Dir:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_ba331d24
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_ba331d24"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Date:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "GUID:" ascii
        $key_7 = "HWID:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "Install Date:" ascii
        $key_10 = "Keyboard Languages:" ascii
        $key_11 = "Local Time:" ascii
        $key_12 = "MachineID:" ascii
        $key_13 = "Path:" ascii
        $key_14 = "Processor:" ascii
        $key_15 = "RAM:" ascii
        $key_16 = "Threads:" ascii
        $key_17 = "TimeZone:" ascii
        $key_18 = "User Name:" ascii
        $key_19 = "Version:" ascii
        $key_20 = "VideoCard:" ascii
        $key_21 = "Windows:" ascii
        $key_22 = "Work Dir:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_c1d935a4
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_c1d935a4"

    strings:
        $key_0 = "Architecture:" ascii
        $key_1 = "Cores:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Device String:" ascii
        $key_4 = "Display Resolution:" ascii
        $key_5 = "HWID:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Keyboards:" ascii
        $key_8 = "Laptop:" ascii
        $key_9 = "Local Time:" ascii
        $key_10 = "OS:" ascii
        $key_11 = "RAM:" ascii
        $key_12 = "Resolution:" ascii
        $key_13 = "Threads:" ascii
        $key_14 = "UTC:" ascii
        $key_15 = "UserName:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_c3cc1ed0
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_c3cc1ed0"

    strings:
        $key_0 = "Architecture:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Device String:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "GPU:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "Language:" ascii
        $key_9 = "Laptop:" ascii
        $key_10 = "Local Time:" ascii
        $key_11 = "OS:" ascii
        $key_12 = "RAM:" ascii
        $key_13 = "Resolution:" ascii
        $key_14 = "Threads:" ascii
        $key_15 = "UTC:" ascii
        $key_16 = "UserName:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_c56a1c73
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_c56a1c73"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Date:" ascii
        $key_4 = "Display Resolution:" ascii
        $key_5 = "Keyboard Languages:" ascii
        $key_6 = "Local Time:" ascii
        $key_7 = "Path:" ascii
        $key_8 = "Processor:" ascii
        $key_9 = "RAM:" ascii
        $key_10 = "Threads:" ascii
        $key_11 = "TimeZone:" ascii
        $key_12 = "User Name:" ascii
        $key_13 = "Version:" ascii
        $key_14 = "Windows:" ascii
        $key_15 = "Work Dir:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_c8d510fe
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_c8d510fe"

    strings:
        $key_0 = "Computer Name:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Display Resolution:" ascii
        $key_3 = "Domain Name:" ascii
        $key_4 = "Graphics card:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "Installed RAM:" ascii
        $key_7 = "Integrity:" ascii
        $key_8 = "Keyboard Language:" ascii
        $key_9 = "Operation System:" ascii
        $key_10 = "Processor:" ascii
        $key_11 = "System Language:" ascii
        $key_12 = "TimeZone:" ascii
        $key_13 = "User Name:" ascii
        $key_14 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_d2200157
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_d2200157"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "Domain Name:" ascii
        $key_5 = "Graphics card:" ascii
        $key_6 = "HWID:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "Installed RAM:" ascii
        $key_9 = "Integrity:" ascii
        $key_10 = "Keyboard Language:" ascii
        $key_11 = "Operation System:" ascii
        $key_12 = "Processor:" ascii
        $key_13 = "System Language:" ascii
        $key_14 = "TimeZone:" ascii
        $key_15 = "User Name:" ascii
        $key_16 = "UserLanguage:" ascii
        $key_17 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_db621574
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_db621574"

    strings:
        $key_0 = "HWID:" ascii
        $key_1 = "Operation System:" ascii
        $key_2 = "ScreenSize:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_de2587bc
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_de2587bc"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Date:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "GUID:" ascii
        $key_7 = "HWID:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "Install Date:" ascii
        $key_10 = "Keyboard Languages:" ascii
        $key_11 = "Local Time:" ascii
        $key_12 = "MachineID:" ascii
        $key_13 = "PUBG:" ascii
        $key_14 = "Path:" ascii
        $key_15 = "Processor:" ascii
        $key_16 = "RAM:" ascii
        $key_17 = "Threads:" ascii
        $key_18 = "TimeZone:" ascii
        $key_19 = "User Name:" ascii
        $key_20 = "Version:" ascii
        $key_21 = "VideoCard:" ascii
        $key_22 = "Windows:" ascii
        $key_23 = "Work Dir:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_e1aee1a2
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_e1aee1a2"

    strings:
        $key_0 = "Architecture:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "HWID:" ascii
        $key_3 = "IP:" ascii
        $key_4 = "Language:" ascii
        $key_5 = "Laptop:" ascii
        $key_6 = "Local Time:" ascii
        $key_7 = "OS:" ascii
        $key_8 = "UTC:" ascii
        $key_9 = "UserName:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_ea9c3c30
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_ea9c3c30"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "Domain Name:" ascii
        $key_5 = "Graphics card:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Installed RAM:" ascii
        $key_8 = "Keyboard Language:" ascii
        $key_9 = "Operation System:" ascii
        $key_10 = "Processor:" ascii
        $key_11 = "System Language:" ascii
        $key_12 = "TimeZone:" ascii
        $key_13 = "User Name:" ascii
        $key_14 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_ee2fcc69
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_ee2fcc69"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Date:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "Ip:" ascii
        $key_7 = "Keyboard Languages:" ascii
        $key_8 = "Local Time:" ascii
        $key_9 = "Path:" ascii
        $key_10 = "Processor:" ascii
        $key_11 = "RAM:" ascii
        $key_12 = "Threads:" ascii
        $key_13 = "TimeZone:" ascii
        $key_14 = "User Name:" ascii
        $key_15 = "Version:" ascii
        $key_16 = "Windows:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_f1b713fb
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_f1b713fb"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Date:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Keyboard Languages:" ascii
        $key_8 = "Local Time:" ascii
        $key_9 = "Path:" ascii
        $key_10 = "Processor:" ascii
        $key_11 = "RAM:" ascii
        $key_12 = "Threads:" ascii
        $key_13 = "TimeZone:" ascii
        $key_14 = "User Name:" ascii
        $key_15 = "Version:" ascii
        $key_16 = "Windows:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_f2741cce
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_f2741cce"

    strings:
        $key_0 = "Admin Group:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "Domain Name:" ascii
        $key_5 = "Graphics card:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Installed RAM:" ascii
        $key_8 = "Integrity:" ascii
        $key_9 = "Keyboard Language:" ascii
        $key_10 = "Operation System:" ascii
        $key_11 = "Processor:" ascii
        $key_12 = "System Language:" ascii
        $key_13 = "TimeZone:" ascii
        $key_14 = "UserLanguage:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_f95c1aaa
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_f95c1aaa"

    strings:
        $key_0 = "Architecture:" ascii
        $key_1 = "Cores:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Device String:" ascii
        $key_4 = "Display Resolution:" ascii
        $key_5 = "HWID:" ascii
        $key_6 = "Keyboards:" ascii
        $key_7 = "Laptop:" ascii
        $key_8 = "Local Time:" ascii
        $key_9 = "OS:" ascii
        $key_10 = "RAM:" ascii
        $key_11 = "Resolution:" ascii
        $key_12 = "Threads:" ascii
        $key_13 = "UTC:" ascii
        $key_14 = "UserName:" ascii

    condition:
        all of ($key_*)
}

rule CSRussia34Stealer_cystack_fc838809
{
    meta:
        family = "CSRussia34Stealer"
        fingerprint_id = "cystack_fc838809"

    strings:
        $key_0 = "CPU (Processor):" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "IP:" ascii
        $key_4 = "Operating System:" ascii
        $key_5 = "Username:" ascii

    condition:
        all of ($key_*)
}
