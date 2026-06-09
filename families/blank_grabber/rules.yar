// YARA rules for Blank Grabber.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule Blank_Grabber_amnesia
{
    meta:
        family = "Blank Grabber"
        fingerprint_id = "amnesia"

    strings:
        $key_0 = "Amnesia got a new victim:" ascii
        $key_1 = "Autofills:" ascii
        $key_2 = "CPU:" ascii
        $key_3 = "Cellular Network:" ascii
        $key_4 = "Common Files:" ascii
        $key_5 = "Computer Name:" ascii
        $key_6 = "Computer OS:" ascii
        $key_7 = "Cookies:" ascii
        $key_8 = "Country:" ascii
        $key_9 = "Discord Accounts:" ascii
        $key_10 = "Epic Session:" ascii
        $key_11 = "GPU:" ascii
        $key_12 = "Growtopia Session:" ascii
        $key_13 = "History:" ascii
        $key_14 = "IP:" ascii
        $key_15 = "Minecraft Sessions:" ascii
        $key_16 = "Passwords:" ascii
        $key_17 = "Product Key:" ascii
        $key_18 = "Proxy/VPN:" ascii
        $key_19 = "Region:" ascii
        $key_20 = "Roblox Cookies:" ascii
        $key_21 = "Screenshot:" ascii
        $key_22 = "Steam Session:" ascii
        $key_23 = "System Info:" ascii
        $key_24 = "Telegram Sessions:" ascii
        $key_25 = "Timezone:" ascii
        $key_26 = "Total Memory:" ascii
        $key_27 = "UUID:" ascii
        $key_28 = "Uplay Session:" ascii
        $key_29 = "Wallets:" ascii
        $key_30 = "Webcam:" ascii
        $key_31 = "Wifi Passwords:" ascii

    condition:
        all of ($key_*)
}

rule Blank_Grabber_cystack_05506afb
{
    meta:
        family = "Blank Grabber"
        fingerprint_id = "cystack_05506afb"

    strings:
        $key_0 = "Autofills:" ascii
        $key_1 = "Blank Grabber got a new victim:" ascii
        $key_2 = "CPU:" ascii
        $key_3 = "Cellular Network:" ascii
        $key_4 = "Common Files:" ascii
        $key_5 = "Computer Name:" ascii
        $key_6 = "Computer OS:" ascii
        $key_7 = "Cookies:" ascii
        $key_8 = "Country:" ascii
        $key_9 = "Discord Accounts:" ascii
        $key_10 = "Epic Session:" ascii
        $key_11 = "GPU:" ascii
        $key_12 = "Growtopia Session:" ascii
        $key_13 = "History:" ascii
        $key_14 = "IP:" ascii
        $key_15 = "Minecraft Sessions:" ascii
        $key_16 = "Passwords:" ascii
        $key_17 = "Region:" ascii
        $key_18 = "Roblox Cookies:" ascii
        $key_19 = "Screenshot:" ascii
        $key_20 = "Steam Session:" ascii
        $key_21 = "System Info:" ascii
        $key_22 = "Timezone:" ascii
        $key_23 = "Total Memory:" ascii
        $key_24 = "Uplay Session:" ascii
        $key_25 = "Webcam:" ascii
        $key_26 = "Wifi Passwords:" ascii

    condition:
        all of ($key_*)
}

rule Blank_Grabber_cystack_12bb25c3
{
    meta:
        family = "Blank Grabber"
        fingerprint_id = "cystack_12bb25c3"

    strings:
        $key_0 = "Autofills:" ascii
        $key_1 = "Blank Grabber got a new victim:" ascii
        $key_2 = "CPU:" ascii
        $key_3 = "Common Files:" ascii
        $key_4 = "Computer Name:" ascii
        $key_5 = "Computer OS:" ascii
        $key_6 = "Cookies:" ascii
        $key_7 = "Discord Accounts:" ascii
        $key_8 = "Epic Session:" ascii
        $key_9 = "GPU:" ascii
        $key_10 = "Growtopia Session:" ascii
        $key_11 = "History:" ascii
        $key_12 = "Minecraft Sessions:" ascii
        $key_13 = "Passwords:" ascii
        $key_14 = "Product Key:" ascii
        $key_15 = "Roblox Cookies:" ascii
        $key_16 = "Screenshot:" ascii
        $key_17 = "Steam Session:" ascii
        $key_18 = "System Info:" ascii
        $key_19 = "Total Memory:" ascii
        $key_20 = "UUID:" ascii
        $key_21 = "Uplay Session:" ascii
        $key_22 = "Wallets:" ascii
        $key_23 = "Webcam:" ascii
        $key_24 = "Wifi Passwords:" ascii

    condition:
        all of ($key_*)
}

rule Blank_Grabber_cystack_22dec19e
{
    meta:
        family = "Blank Grabber"
        fingerprint_id = "cystack_22dec19e"

    strings:
        $key_0 = "Autofills:" ascii
        $key_1 = "Blank Grabber got a new victim:" ascii
        $key_2 = "CPU:" ascii
        $key_3 = "Cellular Network:" ascii
        $key_4 = "Common Files:" ascii
        $key_5 = "Computer OS:" ascii
        $key_6 = "Cookies:" ascii
        $key_7 = "Country:" ascii
        $key_8 = "Discord Accounts:" ascii
        $key_9 = "Epic Session:" ascii
        $key_10 = "GPU:" ascii
        $key_11 = "Growtopia Session:" ascii
        $key_12 = "History:" ascii
        $key_13 = "IP:" ascii
        $key_14 = "Minecraft Sessions:" ascii
        $key_15 = "Passwords:" ascii
        $key_16 = "Product Key:" ascii
        $key_17 = "Proxy/VPN:" ascii
        $key_18 = "Region:" ascii
        $key_19 = "Reverse DNS:" ascii
        $key_20 = "Roblox Cookies:" ascii
        $key_21 = "Screenshot:" ascii
        $key_22 = "Steam Session:" ascii
        $key_23 = "System Info:" ascii
        $key_24 = "Telegram Sessions:" ascii
        $key_25 = "Timezone:" ascii
        $key_26 = "Total Memory:" ascii
        $key_27 = "UUID:" ascii
        $key_28 = "Uplay Session:" ascii
        $key_29 = "Wallets:" ascii
        $key_30 = "Webcam:" ascii
        $key_31 = "Wifi Passwords:" ascii

    condition:
        all of ($key_*)
}

rule Blank_Grabber_cystack_2ec99495
{
    meta:
        family = "Blank Grabber"
        fingerprint_id = "cystack_2ec99495"

    strings:
        $key_0 = "Autofills:" ascii
        $key_1 = "CPU:" ascii
        $key_2 = "Cellular Network:" ascii
        $key_3 = "Common Files:" ascii
        $key_4 = "Computer Name:" ascii
        $key_5 = "Computer OS:" ascii
        $key_6 = "Cookies:" ascii
        $key_7 = "Country:" ascii
        $key_8 = "Discord Accounts:" ascii
        $key_9 = "Epic Session:" ascii
        $key_10 = "GPU:" ascii
        $key_11 = "Growtopia Session:" ascii
        $key_12 = "History:" ascii
        $key_13 = "IP:" ascii
        $key_14 = "Minecraft Sessions:" ascii
        $key_15 = "Passwords:" ascii
        $key_16 = "Product Key:" ascii
        $key_17 = "Proxy/VPN:" ascii
        $key_18 = "Region:" ascii
        $key_19 = "Roblox Cookies:" ascii
        $key_20 = "Screenshot:" ascii
        $key_21 = "Steam Session:" ascii
        $key_22 = "System Info:" ascii
        $key_23 = "Telegram Sessions:" ascii
        $key_24 = "Timezone:" ascii
        $key_25 = "Total Memory:" ascii
        $key_26 = "UUID:" ascii
        $key_27 = "Uplay Session:" ascii
        $key_28 = "Wallets:" ascii
        $key_29 = "Webcam:" ascii
        $key_30 = "Wifi Passwords:" ascii

    condition:
        all of ($key_*)
}

rule Blank_Grabber_cystack_30a7fa5c
{
    meta:
        family = "Blank Grabber"
        fingerprint_id = "cystack_30a7fa5c"

    strings:
        $key_0 = "Autofills:" ascii
        $key_1 = "CPU:" ascii
        $key_2 = "Common Files:" ascii
        $key_3 = "Computer Name:" ascii
        $key_4 = "Computer OS:" ascii
        $key_5 = "Cookies:" ascii
        $key_6 = "Discord Accounts:" ascii
        $key_7 = "Epic Session:" ascii
        $key_8 = "GPU:" ascii
        $key_9 = "Growtopia Session:" ascii
        $key_10 = "History:" ascii
        $key_11 = "Minecraft Sessions:" ascii
        $key_12 = "Passwords:" ascii
        $key_13 = "Product Key:" ascii
        $key_14 = "Roblox Cookies:" ascii
        $key_15 = "Screenshot:" ascii
        $key_16 = "Steam Session:" ascii
        $key_17 = "System Info:" ascii
        $key_18 = "Telegram Sessions:" ascii
        $key_19 = "Total Memory:" ascii
        $key_20 = "UUID:" ascii
        $key_21 = "Uplay Session:" ascii
        $key_22 = "Wallets:" ascii
        $key_23 = "Webcam:" ascii
        $key_24 = "Wifi Passwords:" ascii

    condition:
        all of ($key_*)
}

rule Blank_Grabber_cystack_3251e7a5
{
    meta:
        family = "Blank Grabber"
        fingerprint_id = "cystack_3251e7a5"

    strings:
        $key_0 = "Autofills:" ascii
        $key_1 = "CPU:" ascii
        $key_2 = "Cellular Network:" ascii
        $key_3 = "Common Files:" ascii
        $key_4 = "Computer Name:" ascii
        $key_5 = "Computer OS:" ascii
        $key_6 = "Cookies:" ascii
        $key_7 = "Country:" ascii
        $key_8 = "Discord Accounts:" ascii
        $key_9 = "Epic Session:" ascii
        $key_10 = "GPU:" ascii
        $key_11 = "Growtopia Session:" ascii
        $key_12 = "History:" ascii
        $key_13 = "IP:" ascii
        $key_14 = "Minecraft Sessions:" ascii
        $key_15 = "Passwords:" ascii
        $key_16 = "Product Key:" ascii
        $key_17 = "Proxy/VPN:" ascii
        $key_18 = "Region:" ascii
        $key_19 = "Roblox Cookies:" ascii
        $key_20 = "Screenshot:" ascii
        $key_21 = "Steam Session:" ascii
        $key_22 = "System Info:" ascii
        $key_23 = "Timezone:" ascii
        $key_24 = "Total Memory:" ascii
        $key_25 = "UUID:" ascii
        $key_26 = "Uplay Session:" ascii
        $key_27 = "Wallets:" ascii
        $key_28 = "Webcam:" ascii
        $key_29 = "Wifi Passwords:" ascii

    condition:
        all of ($key_*)
}

rule Blank_Grabber_cystack_3db9f760
{
    meta:
        family = "Blank Grabber"
        fingerprint_id = "cystack_3db9f760"

    strings:
        $key_0 = "Autofills:" ascii
        $key_1 = "Blank Grabber got a new victim:" ascii
        $key_2 = "CPU:" ascii
        $key_3 = "Cellular Network:" ascii
        $key_4 = "Common Files:" ascii
        $key_5 = "Computer Name:" ascii
        $key_6 = "Computer OS:" ascii
        $key_7 = "Cookies:" ascii
        $key_8 = "Country:" ascii
        $key_9 = "Discord Accounts:" ascii
        $key_10 = "Epic Session:" ascii
        $key_11 = "GPU:" ascii
        $key_12 = "Growtopia Session:" ascii
        $key_13 = "History:" ascii
        $key_14 = "IP:" ascii
        $key_15 = "Minecraft Sessions:" ascii
        $key_16 = "Passwords:" ascii
        $key_17 = "Product Key:" ascii
        $key_18 = "Proxy/VPN:" ascii
        $key_19 = "Region:" ascii
        $key_20 = "Reverse DNS:" ascii
        $key_21 = "Roblox Cookies:" ascii
        $key_22 = "Screenshot:" ascii
        $key_23 = "Steam Session:" ascii
        $key_24 = "System Info:" ascii
        $key_25 = "Telegram Sessions:" ascii
        $key_26 = "Timezone:" ascii
        $key_27 = "Total Memory:" ascii
        $key_28 = "UUID:" ascii
        $key_29 = "Uplay Session:" ascii
        $key_30 = "Wallets:" ascii
        $key_31 = "Webcam:" ascii
        $key_32 = "Wifi Passwords:" ascii

    condition:
        all of ($key_*)
}

rule Blank_Grabber_cystack_3ed08ab3
{
    meta:
        family = "Blank Grabber"
        fingerprint_id = "cystack_3ed08ab3"

    strings:
        $key_0 = "Autofills:" ascii
        $key_1 = "CPU:" ascii
        $key_2 = "Cellular Network:" ascii
        $key_3 = "Common Files:" ascii
        $key_4 = "Computer Name:" ascii
        $key_5 = "Computer OS:" ascii
        $key_6 = "Cookies:" ascii
        $key_7 = "Country:" ascii
        $key_8 = "Discord Accounts:" ascii
        $key_9 = "Epic Session:" ascii
        $key_10 = "GPU:" ascii
        $key_11 = "Growtopia Session:" ascii
        $key_12 = "History:" ascii
        $key_13 = "IP:" ascii
        $key_14 = "Minecraft Sessions:" ascii
        $key_15 = "Passwords:" ascii
        $key_16 = "Product Key:" ascii
        $key_17 = "Proxy/VPN:" ascii
        $key_18 = "Region:" ascii
        $key_19 = "Reverse DNS:" ascii
        $key_20 = "Roblox Cookies:" ascii
        $key_21 = "Screenshot:" ascii
        $key_22 = "Steam Session:" ascii
        $key_23 = "System Info:" ascii
        $key_24 = "Timezone:" ascii
        $key_25 = "Total Memory:" ascii
        $key_26 = "UUID:" ascii
        $key_27 = "Uplay Session:" ascii
        $key_28 = "Wallets:" ascii
        $key_29 = "Webcam:" ascii
        $key_30 = "Wifi Passwords:" ascii

    condition:
        all of ($key_*)
}

rule Blank_Grabber_cystack_4ed137de
{
    meta:
        family = "Blank Grabber"
        fingerprint_id = "cystack_4ed137de"

    strings:
        $key_0 = "Autofills:" ascii
        $key_1 = "Blank Grabber got a new victim:" ascii
        $key_2 = "CPU:" ascii
        $key_3 = "Cellular Network:" ascii
        $key_4 = "Common Files:" ascii
        $key_5 = "Computer Name:" ascii
        $key_6 = "Computer OS:" ascii
        $key_7 = "Cookies:" ascii
        $key_8 = "Country:" ascii
        $key_9 = "Discord Accounts:" ascii
        $key_10 = "Epic Session:" ascii
        $key_11 = "GPU:" ascii
        $key_12 = "Growtopia Session:" ascii
        $key_13 = "History:" ascii
        $key_14 = "IP:" ascii
        $key_15 = "Minecraft Sessions:" ascii
        $key_16 = "Passwords:" ascii
        $key_17 = "Product Key:" ascii
        $key_18 = "Region:" ascii
        $key_19 = "Roblox Cookies:" ascii
        $key_20 = "Screenshot:" ascii
        $key_21 = "Steam Session:" ascii
        $key_22 = "System Info:" ascii
        $key_23 = "Telegram Sessions:" ascii
        $key_24 = "Timezone:" ascii
        $key_25 = "Total Memory:" ascii
        $key_26 = "UUID:" ascii
        $key_27 = "Uplay Session:" ascii
        $key_28 = "Wallets:" ascii
        $key_29 = "Webcam:" ascii
        $key_30 = "Wifi Passwords:" ascii

    condition:
        all of ($key_*)
}

rule Blank_Grabber_cystack_531d6bd4
{
    meta:
        family = "Blank Grabber"
        fingerprint_id = "cystack_531d6bd4"

    strings:
        $key_0 = "Autofills:" ascii
        $key_1 = "Blank Grabber got a new victim:" ascii
        $key_2 = "CPU:" ascii
        $key_3 = "Cellular Network:" ascii
        $key_4 = "Common Files:" ascii
        $key_5 = "Computer Name:" ascii
        $key_6 = "Computer OS:" ascii
        $key_7 = "Cookies:" ascii
        $key_8 = "Country:" ascii
        $key_9 = "Discord Accounts:" ascii
        $key_10 = "Epic Session:" ascii
        $key_11 = "GPU:" ascii
        $key_12 = "Growtopia Session:" ascii
        $key_13 = "History:" ascii
        $key_14 = "IP:" ascii
        $key_15 = "Minecraft Sessions:" ascii
        $key_16 = "Passwords:" ascii
        $key_17 = "Product Key:" ascii
        $key_18 = "Proxy/VPN:" ascii
        $key_19 = "Region:" ascii
        $key_20 = "Reverse DNS:" ascii
        $key_21 = "Roblox Cookies:" ascii
        $key_22 = "Screenshot:" ascii
        $key_23 = "Steam Session:" ascii
        $key_24 = "System Info:" ascii
        $key_25 = "Timezone:" ascii
        $key_26 = "Total Memory:" ascii
        $key_27 = "UUID:" ascii
        $key_28 = "Uplay Session:" ascii
        $key_29 = "Wallets:" ascii
        $key_30 = "Webcam:" ascii
        $key_31 = "Wifi Passwords:" ascii

    condition:
        all of ($key_*)
}

rule Blank_Grabber_cystack_57d3f2a5
{
    meta:
        family = "Blank Grabber"
        fingerprint_id = "cystack_57d3f2a5"

    strings:
        $key_0 = "Autofills:" ascii
        $key_1 = "Blank Grabber got a new victim:" ascii
        $key_2 = "CPU:" ascii
        $key_3 = "Common Files:" ascii
        $key_4 = "Computer OS:" ascii
        $key_5 = "Cookies:" ascii
        $key_6 = "Discord Accounts:" ascii
        $key_7 = "Epic Session:" ascii
        $key_8 = "GPU:" ascii
        $key_9 = "Growtopia Session:" ascii
        $key_10 = "History:" ascii
        $key_11 = "Minecraft Sessions:" ascii
        $key_12 = "Passwords:" ascii
        $key_13 = "Product Key:" ascii
        $key_14 = "Roblox Cookies:" ascii
        $key_15 = "Screenshot:" ascii
        $key_16 = "Steam Session:" ascii
        $key_17 = "System Info:" ascii
        $key_18 = "Telegram Sessions:" ascii
        $key_19 = "Total Memory:" ascii
        $key_20 = "UUID:" ascii
        $key_21 = "Uplay Session:" ascii
        $key_22 = "Wallets:" ascii
        $key_23 = "Webcam:" ascii
        $key_24 = "Wifi Passwords:" ascii

    condition:
        all of ($key_*)
}

rule Blank_Grabber_cystack_8547d387
{
    meta:
        family = "Blank Grabber"
        fingerprint_id = "cystack_8547d387"

    strings:
        $key_0 = "Autofills:" ascii
        $key_1 = "Blank Grabber got a new victim:" ascii
        $key_2 = "CPU:" ascii
        $key_3 = "Cellular Network:" ascii
        $key_4 = "Common Files:" ascii
        $key_5 = "Computer Name:" ascii
        $key_6 = "Computer OS:" ascii
        $key_7 = "Cookies:" ascii
        $key_8 = "Country:" ascii
        $key_9 = "Discord Accounts:" ascii
        $key_10 = "Epic Session:" ascii
        $key_11 = "GPU:" ascii
        $key_12 = "Growtopia Session:" ascii
        $key_13 = "History:" ascii
        $key_14 = "IP:" ascii
        $key_15 = "Minecraft Sessions:" ascii
        $key_16 = "Passwords:" ascii
        $key_17 = "Product Key:" ascii
        $key_18 = "Proxy/VPN:" ascii
        $key_19 = "Region:" ascii
        $key_20 = "Roblox Cookies:" ascii
        $key_21 = "Screenshot:" ascii
        $key_22 = "Steam Session:" ascii
        $key_23 = "System Info:" ascii
        $key_24 = "Timezone:" ascii
        $key_25 = "Total Memory:" ascii
        $key_26 = "UUID:" ascii
        $key_27 = "Uplay Session:" ascii
        $key_28 = "Wallets:" ascii
        $key_29 = "Webcam:" ascii
        $key_30 = "Wifi Passwords:" ascii

    condition:
        all of ($key_*)
}

rule Blank_Grabber_cystack_abb02c93
{
    meta:
        family = "Blank Grabber"
        fingerprint_id = "cystack_abb02c93"

    strings:
        $key_0 = "Autofills:" ascii
        $key_1 = "Blank Grabber got a new victim:" ascii
        $key_2 = "CPU:" ascii
        $key_3 = "Cellular Network:" ascii
        $key_4 = "Common Files:" ascii
        $key_5 = "Computer Name:" ascii
        $key_6 = "Computer OS:" ascii
        $key_7 = "Cookies:" ascii
        $key_8 = "Country:" ascii
        $key_9 = "Discord Accounts:" ascii
        $key_10 = "Epic Session:" ascii
        $key_11 = "GPU:" ascii
        $key_12 = "Growtopia Session:" ascii
        $key_13 = "History:" ascii
        $key_14 = "IP:" ascii
        $key_15 = "Minecraft Sessions:" ascii
        $key_16 = "Passwords:" ascii
        $key_17 = "Product Key:" ascii
        $key_18 = "Proxy/VPN:" ascii
        $key_19 = "Region:" ascii
        $key_20 = "Roblox Cookies:" ascii
        $key_21 = "Screenshot:" ascii
        $key_22 = "Steam Session:" ascii
        $key_23 = "System Info:" ascii
        $key_24 = "Telegram Sessions:" ascii
        $key_25 = "Timezone:" ascii
        $key_26 = "Total Memory:" ascii
        $key_27 = "UUID:" ascii
        $key_28 = "Uplay Session:" ascii
        $key_29 = "Wallets:" ascii
        $key_30 = "Webcam:" ascii
        $key_31 = "Wifi Passwords:" ascii

    condition:
        all of ($key_*)
}

rule Blank_Grabber_cystack_cde4f3d7
{
    meta:
        family = "Blank Grabber"
        fingerprint_id = "cystack_cde4f3d7"

    strings:
        $key_0 = "Autofills:" ascii
        $key_1 = "Blank Grabber got a new victim:" ascii
        $key_2 = "CPU:" ascii
        $key_3 = "Cellular Network:" ascii
        $key_4 = "Common Files:" ascii
        $key_5 = "Computer Name:" ascii
        $key_6 = "Computer OS:" ascii
        $key_7 = "Cookies:" ascii
        $key_8 = "Country:" ascii
        $key_9 = "Discord Accounts:" ascii
        $key_10 = "Epic Session:" ascii
        $key_11 = "GPU:" ascii
        $key_12 = "Growtopia Session:" ascii
        $key_13 = "History:" ascii
        $key_14 = "IP:" ascii
        $key_15 = "Minecraft Sessions:" ascii
        $key_16 = "Passwords:" ascii
        $key_17 = "Product Key:" ascii
        $key_18 = "Region:" ascii
        $key_19 = "Reverse DNS:" ascii
        $key_20 = "Roblox Cookies:" ascii
        $key_21 = "Screenshot:" ascii
        $key_22 = "Steam Session:" ascii
        $key_23 = "System Info:" ascii
        $key_24 = "Telegram Sessions:" ascii
        $key_25 = "Timezone:" ascii
        $key_26 = "Total Memory:" ascii
        $key_27 = "UUID:" ascii
        $key_28 = "Uplay Session:" ascii
        $key_29 = "Wallets:" ascii
        $key_30 = "Webcam:" ascii
        $key_31 = "Wifi Passwords:" ascii

    condition:
        all of ($key_*)
}

rule Blank_Grabber_cystack_d36c2a31
{
    meta:
        family = "Blank Grabber"
        fingerprint_id = "cystack_d36c2a31"

    strings:
        $key_0 = "Autofills:" ascii
        $key_1 = "Blank Grabber got a new victim:" ascii
        $key_2 = "CPU:" ascii
        $key_3 = "Common Files:" ascii
        $key_4 = "Computer Name:" ascii
        $key_5 = "Computer OS:" ascii
        $key_6 = "Cookies:" ascii
        $key_7 = "Discord Accounts:" ascii
        $key_8 = "Epic Session:" ascii
        $key_9 = "GPU:" ascii
        $key_10 = "Growtopia Session:" ascii
        $key_11 = "History:" ascii
        $key_12 = "Minecraft Sessions:" ascii
        $key_13 = "Passwords:" ascii
        $key_14 = "Product Key:" ascii
        $key_15 = "Roblox Cookies:" ascii
        $key_16 = "Screenshot:" ascii
        $key_17 = "Steam Session:" ascii
        $key_18 = "System Info:" ascii
        $key_19 = "Telegram Sessions:" ascii
        $key_20 = "Total Memory:" ascii
        $key_21 = "UUID:" ascii
        $key_22 = "Uplay Session:" ascii
        $key_23 = "Wallets:" ascii
        $key_24 = "Webcam:" ascii
        $key_25 = "Wifi Passwords:" ascii

    condition:
        all of ($key_*)
}

rule Blank_Grabber_cystack_dc1d861b
{
    meta:
        family = "Blank Grabber"
        fingerprint_id = "cystack_dc1d861b"

    strings:
        $key_0 = "Autofills:" ascii
        $key_1 = "CPU:" ascii
        $key_2 = "Cellular Network:" ascii
        $key_3 = "Common Files:" ascii
        $key_4 = "Computer Name:" ascii
        $key_5 = "Computer OS:" ascii
        $key_6 = "Cookies:" ascii
        $key_7 = "Country:" ascii
        $key_8 = "Discord Accounts:" ascii
        $key_9 = "Epic Session:" ascii
        $key_10 = "GPU:" ascii
        $key_11 = "Growtopia Session:" ascii
        $key_12 = "History:" ascii
        $key_13 = "IP:" ascii
        $key_14 = "Minecraft Sessions:" ascii
        $key_15 = "Passwords:" ascii
        $key_16 = "Product Key:" ascii
        $key_17 = "Proxy/VPN:" ascii
        $key_18 = "Region:" ascii
        $key_19 = "Reverse DNS:" ascii
        $key_20 = "Roblox Cookies:" ascii
        $key_21 = "Screenshot:" ascii
        $key_22 = "Steam Session:" ascii
        $key_23 = "System Info:" ascii
        $key_24 = "Telegram Sessions:" ascii
        $key_25 = "Timezone:" ascii
        $key_26 = "Total Memory:" ascii
        $key_27 = "UUID:" ascii
        $key_28 = "Uplay Session:" ascii
        $key_29 = "Wallets:" ascii
        $key_30 = "Webcam:" ascii
        $key_31 = "Wifi Passwords:" ascii

    condition:
        all of ($key_*)
}

rule Blank_Grabber_cystack_e5b29e31
{
    meta:
        family = "Blank Grabber"
        fingerprint_id = "cystack_e5b29e31"

    strings:
        $key_0 = "Autofills:" ascii
        $key_1 = "Blank Grabber got a new victim:" ascii
        $key_2 = "CPU:" ascii
        $key_3 = "Cellular Network:" ascii
        $key_4 = "Common Files:" ascii
        $key_5 = "Computer OS:" ascii
        $key_6 = "Cookies:" ascii
        $key_7 = "Country:" ascii
        $key_8 = "Discord Accounts:" ascii
        $key_9 = "Epic Session:" ascii
        $key_10 = "GPU:" ascii
        $key_11 = "Growtopia Session:" ascii
        $key_12 = "History:" ascii
        $key_13 = "IP:" ascii
        $key_14 = "Minecraft Sessions:" ascii
        $key_15 = "Passwords:" ascii
        $key_16 = "Product Key:" ascii
        $key_17 = "Proxy/VPN:" ascii
        $key_18 = "Region:" ascii
        $key_19 = "Roblox Cookies:" ascii
        $key_20 = "Screenshot:" ascii
        $key_21 = "Steam Session:" ascii
        $key_22 = "System Info:" ascii
        $key_23 = "Telegram Sessions:" ascii
        $key_24 = "Timezone:" ascii
        $key_25 = "Total Memory:" ascii
        $key_26 = "UUID:" ascii
        $key_27 = "Uplay Session:" ascii
        $key_28 = "Wallets:" ascii
        $key_29 = "Webcam:" ascii
        $key_30 = "Wifi Passwords:" ascii

    condition:
        all of ($key_*)
}

rule Blank_Grabber_dead
{
    meta:
        family = "Blank Grabber"
        fingerprint_id = "dead"

    strings:
        $key_0 = "Autofills:" ascii
        $key_1 = "CPU:" ascii
        $key_2 = "Cellular Network:" ascii
        $key_3 = "Common Files:" ascii
        $key_4 = "Computer Name:" ascii
        $key_5 = "Computer OS:" ascii
        $key_6 = "Cookies:" ascii
        $key_7 = "Country:" ascii
        $key_8 = "Dead got a new victim:" ascii
        $key_9 = "Discord Accounts:" ascii
        $key_10 = "Epic Session:" ascii
        $key_11 = "GPU:" ascii
        $key_12 = "Growtopia Session:" ascii
        $key_13 = "History:" ascii
        $key_14 = "IP:" ascii
        $key_15 = "Minecraft Sessions:" ascii
        $key_16 = "Passwords:" ascii
        $key_17 = "Product Key:" ascii
        $key_18 = "Proxy/VPN:" ascii
        $key_19 = "Region:" ascii
        $key_20 = "Reverse DNS:" ascii
        $key_21 = "Roblox Cookies:" ascii
        $key_22 = "Screenshot:" ascii
        $key_23 = "Steam Session:" ascii
        $key_24 = "System Info:" ascii
        $key_25 = "Telegram Sessions:" ascii
        $key_26 = "Timezone:" ascii
        $key_27 = "Total Memory:" ascii
        $key_28 = "UUID:" ascii
        $key_29 = "Uplay Session:" ascii
        $key_30 = "Wallets:" ascii
        $key_31 = "Webcam:" ascii
        $key_32 = "Wifi Passwords:" ascii

    condition:
        all of ($key_*)
}
