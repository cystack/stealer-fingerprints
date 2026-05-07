// YARA rules for Vidar.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule Vidar_cystack_0045b9fa
{
    meta:
        family = "Vidar"
        fingerprint_id = "cystack_0045b9fa"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Cores:" ascii
        $key_2 = "Display Resolution:" ascii
        $key_3 = "HWID:" ascii
        $key_4 = "Keyboard Languages:" ascii
        $key_5 = "Local Time:" ascii
        $key_6 = "RAM:" ascii
        $key_7 = "Threads:" ascii
        $key_8 = "TimeZone:" ascii
        $key_9 = "User Name:" ascii
        $key_10 = "Windows:" ascii

    condition:
        all of ($key_*)
}

rule Vidar_cystack_15f71433
{
    meta:
        family = "Vidar"
        fingerprint_id = "cystack_15f71433"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Display Resolution:" ascii
        $key_5 = "HWID:" ascii
        $key_6 = "Ip:" ascii
        $key_7 = "Keyboard Languages:" ascii
        $key_8 = "Local Time:" ascii
        $key_9 = "RAM:" ascii
        $key_10 = "Threads:" ascii
        $key_11 = "TimeZone:" ascii
        $key_12 = "User Name:" ascii
        $key_13 = "Windows:" ascii
        $key_14 = "Work Dir:" ascii

    condition:
        all of ($key_*)
}

rule Vidar_cystack_1c2ffdc6
{
    meta:
        family = "Vidar"
        fingerprint_id = "cystack_1c2ffdc6"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "HWID:" ascii
        $key_5 = "Keyboard Languages:" ascii
        $key_6 = "Local Time:" ascii
        $key_7 = "Processor:" ascii
        $key_8 = "RAM:" ascii
        $key_9 = "Threads:" ascii
        $key_10 = "TimeZone:" ascii
        $key_11 = "User Name:" ascii
        $key_12 = "Windows:" ascii
        $key_13 = "Work Dir:" ascii

    condition:
        all of ($key_*)
}

rule Vidar_cystack_34b19de7
{
    meta:
        family = "Vidar"
        fingerprint_id = "cystack_34b19de7"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Cores:" ascii
        $key_2 = "Display Resolution:" ascii
        $key_3 = "Keyboard Languages:" ascii
        $key_4 = "Local Time:" ascii
        $key_5 = "Processor:" ascii
        $key_6 = "RAM:" ascii
        $key_7 = "Threads:" ascii
        $key_8 = "TimeZone:" ascii
        $key_9 = "User Name:" ascii
        $key_10 = "Windows:" ascii

    condition:
        all of ($key_*)
}

rule Vidar_cystack_3a8dd8c4
{
    meta:
        family = "Vidar"
        fingerprint_id = "cystack_3a8dd8c4"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "HWID:" ascii
        $key_5 = "Keyboard Languages:" ascii
        $key_6 = "Local Time:" ascii
        $key_7 = "RAM:" ascii
        $key_8 = "Threads:" ascii
        $key_9 = "TimeZone:" ascii
        $key_10 = "User Name:" ascii
        $key_11 = "Windows:" ascii
        $key_12 = "Work Dir:" ascii

    condition:
        all of ($key_*)
}

rule Vidar_cystack_4414d826
{
    meta:
        family = "Vidar"
        fingerprint_id = "cystack_4414d826"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Display Resolution:" ascii
        $key_5 = "HWID:" ascii
        $key_6 = "Keyboard Languages:" ascii
        $key_7 = "Local Time:" ascii
        $key_8 = "Processor:" ascii
        $key_9 = "RAM:" ascii
        $key_10 = "Threads:" ascii
        $key_11 = "TimeZone:" ascii
        $key_12 = "User Name:" ascii
        $key_13 = "Windows:" ascii
        $key_14 = "Work Dir:" ascii

    condition:
        all of ($key_*)
}

rule Vidar_cystack_46863199
{
    meta:
        family = "Vidar"
        fingerprint_id = "cystack_46863199"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Display Resolution:" ascii
        $key_2 = "User Name:" ascii
        $key_3 = "Windows:" ascii

    condition:
        all of ($key_*)
}

rule Vidar_cystack_4b957099
{
    meta:
        family = "Vidar"
        fingerprint_id = "cystack_4b957099"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Display Resolution:" ascii
        $key_5 = "HWID:" ascii
        $key_6 = "Ip:" ascii
        $key_7 = "Keyboard Languages:" ascii
        $key_8 = "Local Time:" ascii
        $key_9 = "Processor:" ascii
        $key_10 = "RAM:" ascii
        $key_11 = "Threads:" ascii
        $key_12 = "TimeZone:" ascii
        $key_13 = "User Name:" ascii
        $key_14 = "Windows:" ascii
        $key_15 = "Work Dir:" ascii

    condition:
        all of ($key_*)
}

rule Vidar_cystack_4dc28b60
{
    meta:
        family = "Vidar"
        fingerprint_id = "cystack_4dc28b60"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Cores:" ascii
        $key_2 = "Display Resolution:" ascii
        $key_3 = "Keyboard Languages:" ascii
        $key_4 = "Local Time:" ascii
        $key_5 = "RAM:" ascii
        $key_6 = "Threads:" ascii
        $key_7 = "TimeZone:" ascii
        $key_8 = "User Name:" ascii
        $key_9 = "Windows:" ascii

    condition:
        all of ($key_*)
}

rule Vidar_cystack_88eeffdf
{
    meta:
        family = "Vidar"
        fingerprint_id = "cystack_88eeffdf"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Cores:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "HWID:" ascii
        $key_5 = "Ip:" ascii
        $key_6 = "Keyboard Languages:" ascii
        $key_7 = "Local Time:" ascii
        $key_8 = "Path:" ascii
        $key_9 = "RAM:" ascii
        $key_10 = "Threads:" ascii
        $key_11 = "TimeZone:" ascii
        $key_12 = "User Name:" ascii
        $key_13 = "Windows:" ascii

    condition:
        all of ($key_*)
}

rule Vidar_cystack_9e67c647
{
    meta:
        family = "Vidar"
        fingerprint_id = "cystack_9e67c647"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Cores:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "HWID:" ascii
        $key_5 = "Ip:" ascii
        $key_6 = "Keyboard Languages:" ascii
        $key_7 = "Local Time:" ascii
        $key_8 = "Processor:" ascii
        $key_9 = "RAM:" ascii
        $key_10 = "Threads:" ascii
        $key_11 = "TimeZone:" ascii
        $key_12 = "User Name:" ascii
        $key_13 = "Windows:" ascii

    condition:
        all of ($key_*)
}

rule Vidar_cystack_a1a2984a
{
    meta:
        family = "Vidar"
        fingerprint_id = "cystack_a1a2984a"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Cores:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "HWID:" ascii
        $key_5 = "Keyboard Languages:" ascii
        $key_6 = "Local Time:" ascii
        $key_7 = "Path:" ascii
        $key_8 = "RAM:" ascii
        $key_9 = "Threads:" ascii
        $key_10 = "TimeZone:" ascii
        $key_11 = "User Name:" ascii
        $key_12 = "Windows:" ascii

    condition:
        all of ($key_*)
}

rule Vidar_cystack_a43160bc
{
    meta:
        family = "Vidar"
        fingerprint_id = "cystack_a43160bc"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Cores:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "Keyboard Languages:" ascii
        $key_5 = "Local Time:" ascii
        $key_6 = "RAM:" ascii
        $key_7 = "Threads:" ascii
        $key_8 = "TimeZone:" ascii
        $key_9 = "User Name:" ascii
        $key_10 = "Windows:" ascii

    condition:
        all of ($key_*)
}

rule Vidar_cystack_aef85b8c
{
    meta:
        family = "Vidar"
        fingerprint_id = "cystack_aef85b8c"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Display Resolution:" ascii
        $key_5 = "HWID:" ascii
        $key_6 = "Keyboard Languages:" ascii
        $key_7 = "Local Time:" ascii
        $key_8 = "Path:" ascii
        $key_9 = "RAM:" ascii
        $key_10 = "Threads:" ascii
        $key_11 = "TimeZone:" ascii
        $key_12 = "User Name:" ascii
        $key_13 = "Windows:" ascii
        $key_14 = "Work Dir:" ascii

    condition:
        all of ($key_*)
}

rule Vidar_cystack_b03f12ca
{
    meta:
        family = "Vidar"
        fingerprint_id = "cystack_b03f12ca"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Cores:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "HWID:" ascii
        $key_5 = "Ip:" ascii
        $key_6 = "Keyboard Languages:" ascii
        $key_7 = "Local Time:" ascii
        $key_8 = "RAM:" ascii
        $key_9 = "Threads:" ascii
        $key_10 = "TimeZone:" ascii
        $key_11 = "User Name:" ascii
        $key_12 = "Windows:" ascii

    condition:
        all of ($key_*)
}

rule Vidar_cystack_c49e7f05
{
    meta:
        family = "Vidar"
        fingerprint_id = "cystack_c49e7f05"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Display Resolution:" ascii
        $key_5 = "HWID:" ascii
        $key_6 = "Keyboard Languages:" ascii
        $key_7 = "Local Time:" ascii
        $key_8 = "RAM:" ascii
        $key_9 = "Threads:" ascii
        $key_10 = "TimeZone:" ascii
        $key_11 = "User Name:" ascii
        $key_12 = "Windows:" ascii
        $key_13 = "Work Dir:" ascii

    condition:
        all of ($key_*)
}

rule Vidar_cystack_d6cd44c9
{
    meta:
        family = "Vidar"
        fingerprint_id = "cystack_d6cd44c9"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Cores:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "Ip:" ascii
        $key_5 = "Keyboard Languages:" ascii
        $key_6 = "Local Time:" ascii
        $key_7 = "RAM:" ascii
        $key_8 = "Threads:" ascii
        $key_9 = "TimeZone:" ascii
        $key_10 = "User Name:" ascii
        $key_11 = "Windows:" ascii

    condition:
        all of ($key_*)
}

rule Vidar_cystack_def8826b
{
    meta:
        family = "Vidar"
        fingerprint_id = "cystack_def8826b"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Display Resolution:" ascii
        $key_5 = "HWID:" ascii
        $key_6 = "Ip:" ascii
        $key_7 = "Keyboard Languages:" ascii
        $key_8 = "Local Time:" ascii
        $key_9 = "Path:" ascii
        $key_10 = "RAM:" ascii
        $key_11 = "Threads:" ascii
        $key_12 = "TimeZone:" ascii
        $key_13 = "User Name:" ascii
        $key_14 = "Windows:" ascii
        $key_15 = "Work Dir:" ascii

    condition:
        all of ($key_*)
}

rule Vidar_cystack_e74c0052
{
    meta:
        family = "Vidar"
        fingerprint_id = "cystack_e74c0052"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Cores:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "Ip:" ascii
        $key_5 = "Keyboard Languages:" ascii
        $key_6 = "Local Time:" ascii
        $key_7 = "Processor:" ascii
        $key_8 = "RAM:" ascii
        $key_9 = "Threads:" ascii
        $key_10 = "TimeZone:" ascii
        $key_11 = "User Name:" ascii
        $key_12 = "Windows:" ascii

    condition:
        all of ($key_*)
}

rule Vidar_cystack_fd304eee
{
    meta:
        family = "Vidar"
        fingerprint_id = "cystack_fd304eee"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Cores:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "Keyboard Languages:" ascii
        $key_5 = "Local Time:" ascii
        $key_6 = "Processor:" ascii
        $key_7 = "RAM:" ascii
        $key_8 = "Threads:" ascii
        $key_9 = "TimeZone:" ascii
        $key_10 = "User Name:" ascii
        $key_11 = "Windows:" ascii

    condition:
        all of ($key_*)
}

rule Vidar_cystack_fdfce735
{
    meta:
        family = "Vidar"
        fingerprint_id = "cystack_fdfce735"

    strings:
        $key_0 = "AV:" ascii
        $key_1 = "Cores:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "HWID:" ascii
        $key_5 = "Keyboard Languages:" ascii
        $key_6 = "Local Time:" ascii
        $key_7 = "RAM:" ascii
        $key_8 = "Threads:" ascii
        $key_9 = "TimeZone:" ascii
        $key_10 = "User Name:" ascii
        $key_11 = "Windows:" ascii

    condition:
        all of ($key_*)
}
