// YARA rules for CSDarkSideCloudStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSDarkSideCloudStealer_cystack_02dfbe69
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_02dfbe69"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SIT E - ht tps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_02e843de
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_02e843de"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud  WEB SITE -  https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_038f8f3c
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_038f8f3c"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud  WEB SITE - http s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_03f3b585
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_03f3b585"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud  WEB  SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_03f770c8
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_03f770c8"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "C loud WEB SITE  - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_045f0792
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_045f0792"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE  -  https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_047fd080
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_047fd080"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clou d WEB SITE - htt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_05243921
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_05243921"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_05e75a27
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_05e75a27"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB  SITE - h ttps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_064cfe65
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_064cfe65"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB S ITE -  https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_074bfebb
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_074bfebb"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud W EB SIT E - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_074cf94d
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_074cf94d"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud W EB SIT E - http s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_085c261c
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_085c261c"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cl o ud WEB SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_09a874cb
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_09a874cb"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clo ud W EB SITE - htt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_09e97fbe
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_09e97fbe"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cores:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Date:" ascii
        $key_4 = "Display Resolution:" ascii
        $key_5 = "GUID:" ascii
        $key_6 = "HWID:" ascii
        $key_7 = "Install Date:" ascii
        $key_8 = "Ip:" ascii
        $key_9 = "Keyboard Languages:" ascii
        $key_10 = "Local Time:" ascii
        $key_11 = "MachineID:" ascii
        $key_12 = "Path:" ascii
        $key_13 = "Processor:" ascii
        $key_14 = "RAM:" ascii
        $key_15 = "Threads:" ascii
        $key_16 = "TimeZone:" ascii
        $key_17 = "User Name:" ascii
        $key_18 = "Version:" ascii
        $key_19 = "VideoCard:" ascii
        $key_20 = "Windows:" ascii

    condition:
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_0ab56fc9
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_0ab56fc9"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE - ht t ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_0cd90c70
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_0cd90c70"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clou d  WEB SITE - htt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_0d5ccf0b
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_0d5ccf0b"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB S  ITE - h ttps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_0de10f56
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_0de10f56"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SI TE  - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_0efa03f9
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_0efa03f9"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cl oud WEB SIT E - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_1086237a
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_1086237a"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SIT E - h ttp s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_127ad4b7
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_127ad4b7"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE  - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_128d1d45
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_128d1d45"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud W EB SITE -  h ttps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_1426ee4d
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_1426ee4d"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cl  oud WEB SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_14a0f5bb
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_14a0f5bb"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clou d  WEB SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_14e0d2a7
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_14e0d2a7"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE   - http s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_171156df
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_171156df"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB S ITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_1727ddd9
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_1727ddd9"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE  - ht tps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_175f30a0
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_175f30a0"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE  - htt p s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_186085ec
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_186085ec"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SI TE - h ttps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_199549df
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_199549df"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Date:" ascii
        $key_2 = "Display Resolution:" ascii
        $key_3 = "User Name:" ascii
        $key_4 = "Windows:" ascii

    condition:
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_1a9992f9
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_1a9992f9"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cl oud WEB SITE  - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_1ad2e819
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_1ad2e819"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB  SITE -  h ttps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_1cd87afd
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_1cd87afd"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "C  loud WEB SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_1cda0736
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_1cda0736"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE   - htt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_1d04fcd7
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_1d04fcd7"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE - h ttp s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_1dc6d0bd
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_1dc6d0bd"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud  WEB SITE -  http s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_20e901dd
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_20e901dd"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE  - htt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_20ed7ddc
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_20ed7ddc"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clou d WEB SITE  - http s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_21d03b9b
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_21d03b9b"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WE B SITE - h ttp s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_225e4105
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_225e4105"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE - ht tps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_27de303e
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_27de303e"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "C loud WEB SITE - http s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_2a39ee56
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_2a39ee56"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clo ud WEB SI TE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_2cea85c2
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_2cea85c2"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE -  htt  ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_2d67819e
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_2d67819e"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud W EB SITE - h  ttps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_2ed9e3d8
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_2ed9e3d8"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cl oud WEB SITE -  https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_306fc4a9
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_306fc4a9"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "C loud WEB S ITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_317b9bc2
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_317b9bc2"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SIT E - ht  tps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_31928558
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_31928558"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud W EB SITE - htt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_321af2c9
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_321af2c9"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cores:" ascii
        $key_2 = "Date:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_32e07fde
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_32e07fde"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SI TE - http s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_32eff0eb
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_32eff0eb"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cl oud WEB S ITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_32fc2096
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_32fc2096"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE - http  s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_3323f74e
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_3323f74e"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE - h ttps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_33a97d32
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_33a97d32"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SIT E - http s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_34a7dfdc
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_34a7dfdc"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cl oud  WEB SITE - h ttps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_366c0336
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_366c0336"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB  SITE - ht t ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_37f97caa
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_37f97caa"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clou d WEB SIT E - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_3826184f
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_3826184f"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WE B SITE - h ttps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_3b14bd1f
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_3b14bd1f"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud W  EB SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_3ba837f8
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_3ba837f8"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WE B  SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_3c97dea1
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_3c97dea1"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud  WEB SITE - htt  ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_3cf909d4
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_3cf909d4"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud  WEB S ITE - h ttps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_3dcdbd53
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_3dcdbd53"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE - htt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_3e738b2b
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_3e738b2b"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE  -  http s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_3ea0cae3
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_3ea0cae3"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WE B SI TE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_3ee77ff9
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_3ee77ff9"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "GUID:" ascii
        $key_5 = "HWID:" ascii
        $key_6 = "Install Date:" ascii
        $key_7 = "Keyboard Languages:" ascii
        $key_8 = "Local Time:" ascii
        $key_9 = "Path:" ascii
        $key_10 = "Processor:" ascii
        $key_11 = "RAM:" ascii
        $key_12 = "Threads:" ascii
        $key_13 = "TimeZone:" ascii
        $key_14 = "User Name:" ascii
        $key_15 = "VideoCard:" ascii
        $key_16 = "Windows:" ascii
        $key_17 = "Work Dir:" ascii

    condition:
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_3f00e3bc
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_3f00e3bc"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB  SITE - https:" ascii
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
        $key_14 = "Windows:" ascii

    condition:
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_3f529b82
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_3f529b82"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SI T E - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_41bf07db
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_41bf07db"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SIT E  - http s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_41ddfcf5
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_41ddfcf5"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clo ud WEB SITE - ht  tps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_42f55c99
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_42f55c99"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB  SITE - http s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_433369d9
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_433369d9"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clo ud WEB SITE -  ht tps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_43e5b5d8
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_43e5b5d8"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB  SITE  - htt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_440f51b1
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_440f51b1"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE - https:" ascii
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
        $key_14 = "Windows:" ascii

    condition:
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_4494033a
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_4494033a"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "C loud WEB SIT E - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_459655d0
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_459655d0"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WE  B SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_459d0ae9
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_459d0ae9"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB S I TE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_46b1e17e
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_46b1e17e"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB   SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_49970861
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_49970861"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clo ud WEB  SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_49d9a3b8
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_49d9a3b8"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_4a5e207c
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_4a5e207c"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE  - htt  ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_4ac37628
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_4ac37628"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clou d WEB  SITE - htt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_4c3cebf2
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_4c3cebf2"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "Admin Group:" ascii
        $key_1 = "Display Resolution:" ascii
        $key_2 = "Domain Name:" ascii
        $key_3 = "Graphics card:" ascii
        $key_4 = "Installed RAM:" ascii
        $key_5 = "Integrity:" ascii
        $key_6 = "Keyboard Language:" ascii
        $key_7 = "Operation System:" ascii
        $key_8 = "Processor:" ascii
        $key_9 = "System Language:" ascii
        $key_10 = "TimeZone:" ascii
        $key_11 = "User Name:" ascii
        $key_12 = "UserLanguage:" ascii

    condition:
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_4c7ff4b0
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_4c7ff4b0"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "C loud WE B SITE - h ttps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_4c83f47b
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_4c83f47b"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud  WEB SITE  - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_4cfbdc75
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_4cfbdc75"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE  -  htt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_4f44052e
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_4f44052e"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cl oud WEB SI TE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_4f729125
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_4f729125"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
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
        $key_19 = "VideoCard:" ascii
        $key_20 = "Windows:" ascii
        $key_21 = "Work Dir:" ascii

    condition:
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_4fa6edc7
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_4fa6edc7"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SI TE - ht tps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_5085d464
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_5085d464"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cl oud WEB  SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_5245ebf6
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_5245ebf6"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud   WEB SITE - h ttps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_52cab115
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_52cab115"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clo ud WEB SITE  - htt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_5398b7b2
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_5398b7b2"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE - h   ttps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_54d16dd2
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_54d16dd2"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud  WEB SI TE - h ttps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_54ff90d6
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_54ff90d6"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud  WEB SITE  - h ttps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_55632f5c
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_55632f5c"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud  WEB S ITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_5591b7c5
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_5591b7c5"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cl oud WEB SITE -  http s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_57941a13
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_57941a13"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cl oud WEB SITE  - ht tps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_58b6be0c
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_58b6be0c"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud  WEB SITE - ht tps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_5ae22501
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_5ae22501"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cl oud W EB SITE - ht tps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_5c59681a
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_5c59681a"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "C loud W EB SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_5d5c37e5
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_5d5c37e5"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "C lou d WEB SITE - htt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_5e6e6201
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_5e6e6201"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB  SITE  - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_5ef9d70e
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_5ef9d70e"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE - htt p s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_5fc8304b
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_5fc8304b"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "C loud WEB SI TE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_6124916b
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_6124916b"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clo ud WEB SITE -  http s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_63de139b
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_63de139b"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_648f811d
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_648f811d"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud  W EB SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_66439cde
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_66439cde"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_66da964f
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_66da964f"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB  SIT E - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_68131884
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_68131884"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE -  h ttps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_68719dea
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_68719dea"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "C loud WE B SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_68ec790f
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_68ec790f"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clo  ud WEB SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_6bdcb57d
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_6bdcb57d"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SIT E - htt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_6c344c22
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_6c344c22"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clou d W EB SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_6c9155d8
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_6c9155d8"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clou  d WEB SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_6ef39ec6
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_6ef39ec6"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE -  https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_6f2af3c1
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_6f2af3c1"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB S ITE  - http s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_6fa9dc7d
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_6fa9dc7d"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB S ITE - ht tps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_70c5753b
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_70c5753b"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clo ud WEB SITE - h ttps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_70c5d869
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_70c5d869"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud W E B SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_71e3a4cb
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_71e3a4cb"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud W EB SITE  - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_72d040ba
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_72d040ba"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud W EB SITE - h ttps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_742b4f07
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_742b4f07"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB S ITE -  http s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_74534abd
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_74534abd"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WE B SITE - htt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_7465bb11
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_7465bb11"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "C loud WEB  SITE - h ttps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_75817087
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_75817087"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cl ou d WEB SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_7631a3e6
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_7631a3e6"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "C lo ud WEB SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_79507219
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_79507219"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE - h  ttps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_79a9f84d
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_79a9f84d"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WE B SIT E - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_7c1358ee
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_7c1358ee"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clo ud WEB SITE  - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_7cdca3d3
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_7cdca3d3"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE - h ttp  s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_7d429317
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_7d429317"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "HWID:" ascii
        $key_5 = "Keyboard Languages:" ascii
        $key_6 = "Local Time:" ascii
        $key_7 = "Path:" ascii
        $key_8 = "Processor:" ascii
        $key_9 = "RAM:" ascii
        $key_10 = "Threads:" ascii
        $key_11 = "TimeZone:" ascii
        $key_12 = "User Name:" ascii
        $key_13 = "Windows:" ascii
        $key_14 = "Work Dir:" ascii

    condition:
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_7ddde737
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_7ddde737"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SI TE -  http s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_7e275dfe
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_7e275dfe"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud  WEB SITE  - htt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_7e659970
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_7e659970"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cores:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Date:" ascii
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

    condition:
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_7eb2df85
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_7eb2df85"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SIT  E - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_7f208df4
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_7f208df4"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB  SITE -  ht tps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_7ffb3fc0
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_7ffb3fc0"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB S I TE - h ttps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_81a349a9
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_81a349a9"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clo ud  WEB SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_8307a3e7
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_8307a3e7"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_835dea8a
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_835dea8a"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cl oud WEB SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_844cf45f
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_844cf45f"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "C loud WEB SITE - ht tps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_84767500
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_84767500"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SIT E  - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_84ed10fc
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_84ed10fc"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cl oud W EB SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_85f11502
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_85f11502"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB   SITE - ht tps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_86b39810
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_86b39810"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud W EB SI TE - htt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_870a6410
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_870a6410"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SIT E  - ht tps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_88309b5d
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_88309b5d"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cl oud WEB SITE  - htt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_89afe747
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_89afe747"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clo ud WEB SITE - ht tps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_89bb50ec
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_89bb50ec"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clo ud WEB SITE - htt  ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_8cc40819
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_8cc40819"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Display Resolution:" ascii
        $key_2 = "User Name:" ascii
        $key_3 = "Windows:" ascii

    condition:
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_8ce2c4bd
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_8ce2c4bd"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud  WE B SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_8d6af117
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_8d6af117"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clou d WEB SITE -  https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_8d95bf53
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_8d95bf53"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SIT E - https:" ascii
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
        $key_14 = "Windows:" ascii

    condition:
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_8e3e1253
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_8e3e1253"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clou d WEB SI TE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_8fda29ff
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_8fda29ff"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clo ud WEB S ITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_9048a87c
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_9048a87c"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clo ud WEB S ITE - h ttps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_91d1dc97
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_91d1dc97"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "C loud WEB S ITE - htt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_91e5dccc
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_91e5dccc"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clou d WEB  SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_9229a081
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_9229a081"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WE B SITE  - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_924befd1
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_924befd1"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
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
        $key_15 = "Windows:" ascii
        $key_16 = "Work Dir:" ascii

    condition:
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_949096a0
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_949096a0"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE  - http s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_9515da1b
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_9515da1b"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clo ud WEB SIT E - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_99023e9c
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_99023e9c"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clo ud  WEB SITE - ht tps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_9ada5914
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_9ada5914"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SI TE - h tt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_9e79e973
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_9e79e973"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clou d WEB SITE -  htt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_9ec2a86f
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_9ec2a86f"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB  SITE - ht tps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_a035e059
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_a035e059"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "C lou d WEB SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_a04c2626
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_a04c2626"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clo ud WEB SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_a0a07f38
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_a0a07f38"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cl oud WEB  SITE - h ttps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_a1c3da9b
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_a1c3da9b"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "C loud  WEB SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_a23f2567
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_a23f2567"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Date:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "Keyboard Languages:" ascii
        $key_7 = "Local Time:" ascii
        $key_8 = "Path:" ascii
        $key_9 = "Processor:" ascii
        $key_10 = "RAM:" ascii
        $key_11 = "Threads:" ascii
        $key_12 = "TimeZone:" ascii
        $key_13 = "User Name:" ascii
        $key_14 = "Windows:" ascii
        $key_15 = "Work Dir:" ascii

    condition:
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_a2a022c9
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_a2a022c9"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE - htt  ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_a34ad370
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_a34ad370"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clou d WEB SIT E - h ttps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_a3bbfebb
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_a3bbfebb"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "Display Resolution:" ascii
        $key_1 = "User Name:" ascii

    condition:
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_a4343d43
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_a4343d43"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB  S ITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_a4a05b61
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_a4a05b61"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud W EB  SITE - htt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_a546212f
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_a546212f"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clou d WEB SITE  - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_a8bffcc3
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_a8bffcc3"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clou d WEB SITE - h ttps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_a960c433
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_a960c433"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clou d WEB SITE - ht tps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_a9bda2af
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_a9bda2af"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE -  ht t ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_aaa20102
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_aaa20102"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud  WEB SI TE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_acb315eb
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_acb315eb"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clou d  WEB SITE - h ttps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_add72987
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_add72987"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB  SITE -  https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_ae01bb3b
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_ae01bb3b"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE - h t tps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_aebde5d0
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_aebde5d0"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB S ITE - http s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_b0981e31
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_b0981e31"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
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
        $key_17 = "Windows:" ascii
        $key_18 = "Work Dir:" ascii

    condition:
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_b15eee2c
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_b15eee2c"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clou d WEB SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_b51c1bb9
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_b51c1bb9"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clo u d WEB SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_b57878d3
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_b57878d3"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clo ud WEB SITE - htt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_b65289ab
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_b65289ab"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE   - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_b65cd405
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_b65cd405"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WE B SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_b70a8671
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_b70a8671"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SI TE -  https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_b716b28a
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_b716b28a"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SIT  E - http s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_b7c26915
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_b7c26915"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Date:" ascii
        $key_3 = "Display Resolution:" ascii
        $key_4 = "User Name:" ascii
        $key_5 = "Windows:" ascii

    condition:
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_b9a62394
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_b9a62394"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cl oud  WEB SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_b9eb988d
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_b9eb988d"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "C loud WEB SITE -  https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_b9f31f5f
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_b9f31f5f"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cl oud WEB SITE - http s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_bbf13581
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_bbf13581"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SI TE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_bed86868
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_bed86868"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud  W EB SITE - htt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_bf55b301
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_bf55b301"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud W EB SITE - http s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_c06bdd22
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_c06bdd22"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clo ud WEB  SITE - http s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_c0ecbafb
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_c0ecbafb"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB S ITE  - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_c0f34659
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_c0f34659"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB S ITE - htt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_c12b8ac9
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_c12b8ac9"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clou d WEB SITE  - ht tps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_c1ec087b
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_c1ec087b"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud  WEB S ITE - http s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_c216eddd
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_c216eddd"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cl oud WEB S ITE - http s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_c2e25826
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_c2e25826"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB  SITE - htt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_c354878e
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_c354878e"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB  SITE -  htt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_c36c9110
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_c36c9110"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE -   https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_c37898a1
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_c37898a1"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cl oud WEB SITE -  htt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_c4e89590
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_c4e89590"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clo ud W EB SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_c79d874e
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_c79d874e"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB  SITE  - http s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_c7c6a95c
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_c7c6a95c"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE -  ht tps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_c85ed49a
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_c85ed49a"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SI  TE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_c8fa2902
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_c8fa2902"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clo ud  WEB SITE - h ttps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_cb87fb08
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_cb87fb08"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud W EB SITE - ht tps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_cc8c2a29
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_cc8c2a29"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE - h ttps:" ascii
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
        $key_14 = "Windows:" ascii

    condition:
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_cc9748c9
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_cc9748c9"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB  SITE - h tt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_ce57d3ee
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_ce57d3ee"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE  - h ttps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_cf3838f1
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_cf3838f1"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud   WEB SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_d0f5f60f
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_d0f5f60f"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud  WEB SITE - h ttp s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_d12eb23f
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_d12eb23f"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "C l oud WEB SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_d1e77bbd
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_d1e77bbd"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud  WEB SITE - h  ttps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_d1f60ac1
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_d1f60ac1"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud W EB SITE -  https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_d2d53e33
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_d2d53e33"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WE B SITE -  h ttps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_d4a0a2b4
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_d4a0a2b4"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE - ht tp s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_d54cca81
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_d54cca81"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SIT E - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_d56333b0
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_d56333b0"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WE B S ITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_d5a0b142
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_d5a0b142"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SIT E -  https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_d62e5e62
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_d62e5e62"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cores:" ascii
        $key_2 = "Display Resolution:" ascii
        $key_3 = "GUID:" ascii
        $key_4 = "HWID:" ascii
        $key_5 = "Install Date:" ascii
        $key_6 = "Keyboard Languages:" ascii
        $key_7 = "Local Time:" ascii
        $key_8 = "MachineID:" ascii
        $key_9 = "Processor:" ascii
        $key_10 = "RAM:" ascii
        $key_11 = "Threads:" ascii
        $key_12 = "TimeZone:" ascii
        $key_13 = "User Name:" ascii
        $key_14 = "VideoCard:" ascii
        $key_15 = "Windows:" ascii

    condition:
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_d64a783e
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_d64a783e"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud  WEB SITE - h ttps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_d692420c
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_d692420c"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_d82fb943
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_d82fb943"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB  SI TE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_d8b006df
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_d8b006df"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cores:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Date:" ascii
        $key_4 = "Display Resolution:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_d8be7952
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_d8be7952"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clou d WEB SITE - http s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_d8c0d56e
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_d8c0d56e"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Cores:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Date:" ascii
        $key_5 = "Display Resolution:" ascii
        $key_6 = "HWID:" ascii
        $key_7 = "Keyboard Languages:" ascii
        $key_8 = "Local Time:" ascii
        $key_9 = "MachineID:" ascii
        $key_10 = "Path:" ascii
        $key_11 = "Processor:" ascii
        $key_12 = "RAM:" ascii
        $key_13 = "Threads:" ascii
        $key_14 = "TimeZone:" ascii
        $key_15 = "User Name:" ascii
        $key_16 = "Windows:" ascii
        $key_17 = "Work Dir:" ascii

    condition:
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_d98fb9f9
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_d98fb9f9"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cl oud WE B SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_db257f9e
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_db257f9e"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud W EB SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_dc1f41bf
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_dc1f41bf"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "C loud WEB  SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_dc5cd941
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_dc5cd941"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SI TE - htt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_dcfe8bde
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_dcfe8bde"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WE B SITE -  https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_dd638058
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_dd638058"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WE B SITE - http s:" ascii
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
        $key_14 = "Windows:" ascii

    condition:
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_ddd11bb0
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_ddd11bb0"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WE B SITE - http s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_e0363645
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_e0363645"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE -  htt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_e087bbb0
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_e087bbb0"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "Cores:" ascii
        $key_1 = "Display Resolution:" ascii
        $key_2 = "Keyboard Languages:" ascii
        $key_3 = "Local Time:" ascii
        $key_4 = "Processor:" ascii
        $key_5 = "RAM:" ascii
        $key_6 = "Threads:" ascii
        $key_7 = "TimeZone:" ascii
        $key_8 = "User Name:" ascii

    condition:
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_e123c7f8
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_e123c7f8"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "C loud WEB SITE - htt  ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_e38d16cb
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_e38d16cb"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cores:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Date:" ascii
        $key_4 = "Display Resolution:" ascii
        $key_5 = "Keyboard Languages:" ascii
        $key_6 = "Local Time:" ascii
        $key_7 = "Processor:" ascii
        $key_8 = "RAM:" ascii
        $key_9 = "Threads:" ascii
        $key_10 = "TimeZone:" ascii
        $key_11 = "User Name:" ascii
        $key_12 = "Windows:" ascii

    condition:
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_e41aa953
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_e41aa953"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud W EB S ITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_e4624c90
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_e4624c90"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud  WEB SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_e4b1ff84
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_e4b1ff84"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud  WEB SITE - htt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_e5b04a9a
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_e5b04a9a"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud  WEB SITE -  htt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_e8a37cc9
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_e8a37cc9"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB  SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_e8fa1a76
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_e8fa1a76"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cl oud WEB SITE - ht tps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_ea660537
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_ea660537"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud  WEB SIT E - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_eb74f2cb
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_eb74f2cb"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cl oud W EB SITE - http s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_eb7d8183
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_eb7d8183"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE  - ht t ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_ec9f8671
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_ec9f8671"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clou d WEB SIT E - https:" ascii
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
        $key_13 = "User Name:" ascii
        $key_14 = "Version:" ascii
        $key_15 = "Windows:" ascii

    condition:
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_ef6837a1
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_ef6837a1"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "C loud WEB SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_f0404f36
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_f0404f36"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cl oud WEB SITE - h ttps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_f0910527
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_f0910527"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WE B SITE -  ht tps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_f0b76df2
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_f0b76df2"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "C loud WEB SITE - htt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_f6733bc5
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_f6733bc5"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SI TE  - https:" ascii
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
        $key_14 = "Windows:" ascii

    condition:
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_f72f5c4f
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_f72f5c4f"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clou d WEB S ITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_f8122db6
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_f8122db6"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clo ud WEB SITE -  https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_f8ca62d7
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_f8ca62d7"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB S  ITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_f9f26386
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_f9f26386"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WEB SITE - http s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_faf5bb1c
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_faf5bb1c"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WE B SITE - ht tps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_fb6ba84e
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_fb6ba84e"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Clou d WE B SITE - https:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_fd8ba8be
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_fd8ba8be"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud W EB  SITE - http s:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_fdc89876
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_fdc89876"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud WE B  SITE - h ttps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_fe023642
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_fe023642"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud  WEB SITE - h t tps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_fe60c6ff
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_fe60c6ff"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Cloud  WE B SITE - htt ps:" ascii
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
        any of ($banner_*) or all of ($key_*)
}

rule CSDarkSideCloudStealer_cystack_fff2b82f
{
    meta:
        family = "CSDarkSideCloudStealer"
        fingerprint_id = "cystack_fff2b82f"

    strings:
        $banner_0 = "===DARKSIDE_BRAND_BEGIN===" ascii nocase
        $key_0 = "AV:" ascii
        $key_1 = "Display Resolution:" ascii
        $key_2 = "User Name:" ascii

    condition:
        any of ($banner_*) or all of ($key_*)
}
