// YARA rules for StealC.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule StealC_cystack_17febd38
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_17febd38"

    strings:
        $key_0 = "Architecture:" ascii
        $key_1 = "Cores:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Device String:" ascii
        $key_4 = "Display Resolution:" ascii
        $key_5 = "GPU:" ascii
        $key_6 = "HWID:" ascii
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

rule StealC_cystack_28c48a61
{
    meta:
        family = "StealC"
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

rule StealC_cystack_2f93db51
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_2f93db51"

    strings:
        $key_0 = "Architecture:" ascii
        $key_1 = "CPU:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Device String:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "GPU:" ascii
        $key_7 = "HWID:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "Keyboards:" ascii
        $key_10 = "Language:" ascii
        $key_11 = "Laptop:" ascii
        $key_12 = "Local Time:" ascii
        $key_13 = "OS:" ascii
        $key_14 = "RAM:" ascii
        $key_15 = "Resolution:" ascii
        $key_16 = "Threads:" ascii
        $key_17 = "UTC:" ascii
        $key_18 = "UserName:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_32366ff6
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_32366ff6"

    strings:
        $key_0 = "Architecture:" ascii
        $key_1 = "CPU:" ascii
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

rule StealC_cystack_374303d1
{
    meta:
        family = "StealC"
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

rule StealC_cystack_3a34a244
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_3a34a244"

    strings:
        $key_0 = "Architecture:" ascii
        $key_1 = "CPU:" ascii
        $key_2 = "Computer Name:" ascii
        $key_3 = "Cores:" ascii
        $key_4 = "Country:" ascii
        $key_5 = "Device String:" ascii
        $key_6 = "Display Resolution:" ascii
        $key_7 = "GPU:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "Keyboards:" ascii
        $key_10 = "Language:" ascii
        $key_11 = "Laptop:" ascii
        $key_12 = "Local Time:" ascii
        $key_13 = "OS:" ascii
        $key_14 = "RAM:" ascii
        $key_15 = "Resolution:" ascii
        $key_16 = "Threads:" ascii
        $key_17 = "UTC:" ascii
        $key_18 = "UserName:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_3dbb2ef5
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_3dbb2ef5"

    strings:
        $key_0 = "Architecture:" ascii
        $key_1 = "Cores:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Device String:" ascii
        $key_4 = "Display Resolution:" ascii
        $key_5 = "GPU:" ascii
        $key_6 = "HWID:" ascii
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

rule StealC_cystack_3e5aeb50
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_3e5aeb50"

    strings:
        $key_0 = "Architecture:" ascii
        $key_1 = "Cores:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Device String:" ascii
        $key_4 = "Display Resolution:" ascii
        $key_5 = "GPU:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Keyboards:" ascii
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

rule StealC_cystack_5a3cdc62
{
    meta:
        family = "StealC"
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

rule StealC_cystack_677f855d
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_677f855d"

    strings:
        $key_0 = "Architecture:" ascii
        $key_1 = "CPU:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Device String:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "GPU:" ascii
        $key_7 = "HWID:" ascii
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

rule StealC_cystack_769e0ade
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_769e0ade"

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
        $key_13 = "Path:" ascii
        $key_14 = "RAM:" ascii
        $key_15 = "Resolution:" ascii
        $key_16 = "Threads:" ascii
        $key_17 = "UTC:" ascii
        $key_18 = "UserName:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_7a8ccb6e
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_7a8ccb6e"

    strings:
        $key_0 = "Network Info:" ascii
        $key_1 = "Process List:" ascii
        $key_2 = "Process count:" ascii
        $key_3 = "System Summary:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_8b3c31f9
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_8b3c31f9"

    strings:
        $key_0 = "Architecture:" ascii
        $key_1 = "CPU:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Device String:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "GPU:" ascii
        $key_7 = "HWID:" ascii
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

rule StealC_cystack_9e89f04b
{
    meta:
        family = "StealC"
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

rule StealC_cystack_a9654ba8
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_a9654ba8"

    strings:
        $key_0 = "Architecture:" ascii
        $key_1 = "CPU:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Device String:" ascii
        $key_4 = "Display Resolution:" ascii
        $key_5 = "GPU:" ascii
        $key_6 = "HWID:" ascii
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

rule StealC_cystack_ac35d607
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_ac35d607"

    strings:
        $key_0 = "Architecture:" ascii
        $key_1 = "CPU:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Device String:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "GPU:" ascii
        $key_7 = "HWID:" ascii
        $key_8 = "Language:" ascii
        $key_9 = "Laptop:" ascii
        $key_10 = "OS:" ascii
        $key_11 = "RAM:" ascii
        $key_12 = "Resolution:" ascii
        $key_13 = "Threads:" ascii
        $key_14 = "UserName:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_c1d935a4
{
    meta:
        family = "StealC"
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

rule StealC_cystack_c3cc1ed0
{
    meta:
        family = "StealC"
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

rule StealC_cystack_db7c0462
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_db7c0462"

    strings:
        $key_0 = "Architecture:" ascii
        $key_1 = "Cores:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Device String:" ascii
        $key_4 = "Display Resolution:" ascii
        $key_5 = "GPU:" ascii
        $key_6 = "HWID:" ascii
        $key_7 = "Keyboards:" ascii
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

rule StealC_cystack_dd9953b8
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_dd9953b8"

    strings:
        $key_0 = "Architecture:" ascii
        $key_1 = "Cores:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Device String:" ascii
        $key_4 = "Display Resolution:" ascii
        $key_5 = "GPU:" ascii
        $key_6 = "HWID:" ascii
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

rule StealC_cystack_f95c1aaa
{
    meta:
        family = "StealC"
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
