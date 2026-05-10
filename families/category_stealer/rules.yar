// YARA rules for Category Stealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule Category_Stealer_cystack_999ef900
{
    meta:
        family = "Category Stealer"
        fingerprint_id = "cystack_999ef900"

    strings:
        $key_0 = "Build ID:" ascii
        $key_1 = "CPU:" ascii
        $key_2 = "Category:" ascii
        $key_3 = "Computer:" ascii
        $key_4 = "Cores/Threads:" ascii
        $key_5 = "Country:" ascii
        $key_6 = "Displays:" ascii
        $key_7 = "GPU:" ascii
        $key_8 = "HWID:" ascii
        $key_9 = "IP:" ascii
        $key_10 = "Language:" ascii
        $key_11 = "Local Time:" ascii
        $key_12 = "OS:" ascii
        $key_13 = "Path:" ascii
        $key_14 = "RAM:" ascii
        $key_15 = "Timezone:" ascii
        $key_16 = "UTC Time:" ascii
        $key_17 = "Username:" ascii

    condition:
        all of ($key_*)
}

rule Category_Stealer_cystack_f2b70568
{
    meta:
        family = "Category Stealer"
        fingerprint_id = "cystack_f2b70568"

    strings:
        $key_0 = "Build ID:" ascii
        $key_1 = "CPU:" ascii
        $key_2 = "Category:" ascii
        $key_3 = "Computer:" ascii
        $key_4 = "Cores/Threads:" ascii
        $key_5 = "Country:" ascii
        $key_6 = "Displays:" ascii
        $key_7 = "GPU:" ascii
        $key_8 = "HWID:" ascii
        $key_9 = "IP:" ascii
        $key_10 = "Keyboards:" ascii
        $key_11 = "Language:" ascii
        $key_12 = "Local Time:" ascii
        $key_13 = "OS:" ascii
        $key_14 = "Path:" ascii
        $key_15 = "RAM:" ascii
        $key_16 = "System:" ascii
        $key_17 = "Timezone:" ascii
        $key_18 = "UTC Time:" ascii
        $key_19 = "Username:" ascii

    condition:
        all of ($key_*)
}

rule Category_Stealer_cystack_f2e27cfe
{
    meta:
        family = "Category Stealer"
        fingerprint_id = "cystack_f2e27cfe"

    strings:
        $key_0 = "CPU:" ascii
        $key_1 = "Category:" ascii
        $key_2 = "Computer:" ascii
        $key_3 = "Cores/Threads:" ascii
        $key_4 = "Country:" ascii
        $key_5 = "Displays:" ascii
        $key_6 = "GPU:" ascii
        $key_7 = "HWID:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "Keyboards:" ascii
        $key_10 = "Language:" ascii
        $key_11 = "Local Time:" ascii
        $key_12 = "OS:" ascii
        $key_13 = "Path:" ascii
        $key_14 = "RAM:" ascii
        $key_15 = "System:" ascii
        $key_16 = "Timezone:" ascii
        $key_17 = "UTC Time:" ascii
        $key_18 = "Username:" ascii

    condition:
        all of ($key_*)
}
