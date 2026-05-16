// YARA rules for AMOS Stealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule AMOS_Stealer_cystack_130284cc
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_130284cc"

    strings:
        $key_0 = "AMD Radeon R9 M390:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Debanks:" ascii
        $key_4 = "Graphics/Displays:" ascii
        $key_5 = "Hardware:" ascii
        $key_6 = "Hardware Overview:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "MetaMask Info:" ascii
        $key_9 = "Software:" ascii
        $key_10 = "System Software Overview:" ascii
        $key_11 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_130a8bd3
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_130a8bd3"

    strings:
        $key_0 = "City:" ascii
        $key_1 = "Color LCD:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Debanks:" ascii
        $key_4 = "Graphics/Displays:" ascii
        $key_5 = "Hardware:" ascii
        $key_6 = "Hardware Overview:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "Intel Iris Plus Graphics:" ascii
        $key_9 = "MetaMask Info:" ascii
        $key_10 = "Software:" ascii
        $key_11 = "System Software Overview:" ascii
        $key_12 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_3311417f
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_3311417f"

    strings:
        $key_0 = "AMD Radeon Pro 5500M:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Color LCD:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Debanks:" ascii
        $key_5 = "Graphics/Displays:" ascii
        $key_6 = "Hardware:" ascii
        $key_7 = "Hardware Overview:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "Intel UHD Graphics 630:" ascii
        $key_10 = "MetaMask Info:" ascii
        $key_11 = "Software:" ascii
        $key_12 = "System Software Overview:" ascii
        $key_13 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_3a4ae0ac
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_3a4ae0ac"

    strings:
        $key_0 = "Apple M1:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Debanks:" ascii
        $key_4 = "Graphics/Displays:" ascii
        $key_5 = "HP 22f:" ascii
        $key_6 = "Hardware:" ascii
        $key_7 = "Hardware Overview:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "MetaMask Info:" ascii
        $key_10 = "Software:" ascii
        $key_11 = "System Software Overview:" ascii
        $key_12 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_4a8d83d3
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_4a8d83d3"

    strings:
        $key_0 = "City:" ascii
        $key_1 = "Color LCD:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Debanks:" ascii
        $key_4 = "Graphics/Displays:" ascii
        $key_5 = "Hardware:" ascii
        $key_6 = "Hardware Overview:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "Intel Iris Graphics 6100:" ascii
        $key_9 = "MetaMask Info:" ascii
        $key_10 = "Software:" ascii
        $key_11 = "System Software Overview:" ascii
        $key_12 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_6be8171f
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_6be8171f"

    strings:
        $key_0 = "City:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Debanks:" ascii
        $key_3 = "Graphics/Displays:" ascii
        $key_4 = "Hardware:" ascii
        $key_5 = "Hardware Overview:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "MetaMask Info:" ascii
        $key_8 = "NVIDIA GeForce GTX 660M:" ascii
        $key_9 = "Software:" ascii
        $key_10 = "System Software Overview:" ascii
        $key_11 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_7542b9ba
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_7542b9ba"

    strings:
        $key_0 = "City:" ascii
        $key_1 = "Color LCD:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Debanks:" ascii
        $key_4 = "Graphics/Displays:" ascii
        $key_5 = "Hardware:" ascii
        $key_6 = "Hardware Overview:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "Intel Iris Pro:" ascii
        $key_9 = "MetaMask Info:" ascii
        $key_10 = "Software:" ascii
        $key_11 = "System Software Overview:" ascii
        $key_12 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_7b9b631b
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_7b9b631b"

    strings:
        $key_0 = "Apple M1:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Debanks:" ascii
        $key_4 = "Graphics/Displays:" ascii
        $key_5 = "Hardware:" ascii
        $key_6 = "Hardware Overview:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "MetaMask Info:" ascii
        $key_9 = "PHL 273V7:" ascii
        $key_10 = "Software:" ascii
        $key_11 = "System Software Overview:" ascii
        $key_12 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_7c8ec672
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_7c8ec672"

    strings:
        $key_0 = "Apple M1:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Debanks:" ascii
        $key_4 = "Graphics/Displays:" ascii
        $key_5 = "Hardware:" ascii
        $key_6 = "Hardware Overview:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "MetaMask Info:" ascii
        $key_9 = "Software:" ascii
        $key_10 = "System Software Overview:" ascii
        $key_11 = "Userinfo:" ascii
        $key_12 = "WD215I10:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_807f3e69
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_807f3e69"

    strings:
        $key_0 = "City:" ascii
        $key_1 = "Color LCD:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Debanks:" ascii
        $key_4 = "Graphics/Displays:" ascii
        $key_5 = "Hardware:" ascii
        $key_6 = "Hardware Overview:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "Intel HD Graphics 3000:" ascii
        $key_9 = "MetaMask Info:" ascii
        $key_10 = "Software:" ascii
        $key_11 = "System Software Overview:" ascii
        $key_12 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_8c35232d
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_8c35232d"

    strings:
        $key_0 = "Apple M2:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Debanks:" ascii
        $key_4 = "Graphics/Displays:" ascii
        $key_5 = "Hardware:" ascii
        $key_6 = "Hardware Overview:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "MetaMask Info:" ascii
        $key_9 = "Smart TV:" ascii
        $key_10 = "Software:" ascii
        $key_11 = "System Software Overview:" ascii
        $key_12 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_8e4aecf0
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_8e4aecf0"

    strings:
        $key_0 = "AMD Radeon RX 580:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Debanks:" ascii
        $key_4 = "Graphics/Displays:" ascii
        $key_5 = "Hardware:" ascii
        $key_6 = "Hardware Overview:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "MetaMask Info:" ascii
        $key_9 = "Software:" ascii
        $key_10 = "System Software Overview:" ascii
        $key_11 = "T27D390:" ascii
        $key_12 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_94207481
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_94207481"

    strings:
        $key_0 = "Apple M1:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Debanks:" ascii
        $key_4 = "Graphics/Displays:" ascii
        $key_5 = "Hardware:" ascii
        $key_6 = "Hardware Overview:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "MetaMask Info:" ascii
        $key_9 = "REALTEK:" ascii
        $key_10 = "Software:" ascii
        $key_11 = "System Software Overview:" ascii
        $key_12 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_9732ef4d
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_9732ef4d"

    strings:
        $key_0 = "Apple M1 Pro:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Color LCD:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Debanks:" ascii
        $key_5 = "Graphics/Displays:" ascii
        $key_6 = "Hardware:" ascii
        $key_7 = "Hardware Overview:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "MetaMask Info:" ascii
        $key_10 = "Software:" ascii
        $key_11 = "Studio Display:" ascii
        $key_12 = "System Software Overview:" ascii
        $key_13 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_9b82e639
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_9b82e639"

    strings:
        $key_0 = "City:" ascii
        $key_1 = "Color LCD:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Debanks:" ascii
        $key_4 = "Graphics/Displays:" ascii
        $key_5 = "Hardware:" ascii
        $key_6 = "Hardware Overview:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "Intel HD Graphics 4000:" ascii
        $key_9 = "MetaMask Info:" ascii
        $key_10 = "Software:" ascii
        $key_11 = "System Software Overview:" ascii
        $key_12 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_a9896efb
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_a9896efb"

    strings:
        $key_0 = "Apple M1 Pro:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Color LCD:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Debanks:" ascii
        $key_5 = "Graphics/Displays:" ascii
        $key_6 = "Hardware:" ascii
        $key_7 = "Hardware Overview:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "MetaMask Info:" ascii
        $key_10 = "PA278QV:" ascii
        $key_11 = "Software:" ascii
        $key_12 = "System Software Overview:" ascii
        $key_13 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_afcd54ef
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_afcd54ef"

    strings:
        $key_0 = "City:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Debanks:" ascii
        $key_3 = "Graphics/Displays:" ascii
        $key_4 = "Hardware:" ascii
        $key_5 = "Hardware Overview:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Intel Iris Plus Graphics 640:" ascii
        $key_8 = "MetaMask Info:" ascii
        $key_9 = "Software:" ascii
        $key_10 = "System Software Overview:" ascii
        $key_11 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_b12ddaf1
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_b12ddaf1"

    strings:
        $key_0 = "City:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Debanks:" ascii
        $key_3 = "Graphics/Displays:" ascii
        $key_4 = "Hardware:" ascii
        $key_5 = "Hardware Overview:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Intel UHD Graphics 630:" ascii
        $key_8 = "MetaMask Info:" ascii
        $key_9 = "PHL 247E6:" ascii
        $key_10 = "Software:" ascii
        $key_11 = "System Software Overview:" ascii
        $key_12 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_b296ae1d
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_b296ae1d"

    strings:
        $key_0 = "Apple M4:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Debanks:" ascii
        $key_4 = "Graphics/Displays:" ascii
        $key_5 = "Hardware:" ascii
        $key_6 = "Hardware Overview:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "MetaMask Info:" ascii
        $key_9 = "Software:" ascii
        $key_10 = "System Software Overview:" ascii
        $key_11 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_c2db85fe
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_c2db85fe"

    strings:
        $key_0 = "AMD Radeon R9 M290:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Debanks:" ascii
        $key_4 = "Graphics/Displays:" ascii
        $key_5 = "Hardware:" ascii
        $key_6 = "Hardware Overview:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "MetaMask Info:" ascii
        $key_9 = "Software:" ascii
        $key_10 = "System Software Overview:" ascii
        $key_11 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_c405812f
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_c405812f"

    strings:
        $key_0 = "Apple M3 Max:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Color LCD:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Debanks:" ascii
        $key_5 = "Graphics/Displays:" ascii
        $key_6 = "Hardware:" ascii
        $key_7 = "Hardware Overview:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "MetaMask Info:" ascii
        $key_10 = "Software:" ascii
        $key_11 = "System Software Overview:" ascii
        $key_12 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_c4062a27
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_c4062a27"

    strings:
        $key_0 = "City:" ascii
        $key_1 = "Color LCD:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Debanks:" ascii
        $key_4 = "Graphics/Displays:" ascii
        $key_5 = "Hardware:" ascii
        $key_6 = "Hardware Overview:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "Intel Iris Plus Graphics 640:" ascii
        $key_9 = "MetaMask Info:" ascii
        $key_10 = "Software:" ascii
        $key_11 = "System Software Overview:" ascii
        $key_12 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_c426f34d
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_c426f34d"

    strings:
        $key_0 = "Apple M2:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Color LCD:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Debanks:" ascii
        $key_5 = "Graphics/Displays:" ascii
        $key_6 = "Hardware:" ascii
        $key_7 = "Hardware Overview:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "MetaMask Info:" ascii
        $key_10 = "Software:" ascii
        $key_11 = "System Software Overview:" ascii
        $key_12 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_c632d977
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_c632d977"

    strings:
        $key_0 = "Apple M3:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Color LCD:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Debanks:" ascii
        $key_5 = "Graphics/Displays:" ascii
        $key_6 = "Hardware:" ascii
        $key_7 = "Hardware Overview:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "MetaMask Info:" ascii
        $key_10 = "Software:" ascii
        $key_11 = "System Software Overview:" ascii
        $key_12 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_c94ad68f
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_c94ad68f"

    strings:
        $key_0 = "Apple M4 Max:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Color LCD:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Debanks:" ascii
        $key_5 = "Graphics/Displays:" ascii
        $key_6 = "Hardware:" ascii
        $key_7 = "Hardware Overview:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "MSI MD271UL:" ascii
        $key_10 = "MetaMask Info:" ascii
        $key_11 = "Software:" ascii
        $key_12 = "System Software Overview:" ascii
        $key_13 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_cfb6969f
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_cfb6969f"

    strings:
        $key_0 = "AMD Radeon R9 M370X:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Color LCD:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Debanks:" ascii
        $key_5 = "Graphics/Displays:" ascii
        $key_6 = "Hardware:" ascii
        $key_7 = "Hardware Overview:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "Intel Iris Pro:" ascii
        $key_10 = "MetaMask Info:" ascii
        $key_11 = "Software:" ascii
        $key_12 = "System Software Overview:" ascii
        $key_13 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_e47fc049
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_e47fc049"

    strings:
        $key_0 = "AMD Radeon HD 6770M:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Debanks:" ascii
        $key_4 = "Graphics/Displays:" ascii
        $key_5 = "Hardware:" ascii
        $key_6 = "Hardware Overview:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "MetaMask Info:" ascii
        $key_9 = "Software:" ascii
        $key_10 = "System Software Overview:" ascii
        $key_11 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_e68b8a47
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_e68b8a47"

    strings:
        $key_0 = "Apple M1:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Color LCD:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Debanks:" ascii
        $key_5 = "Graphics/Displays:" ascii
        $key_6 = "Hardware:" ascii
        $key_7 = "Hardware Overview:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "KG273:" ascii
        $key_10 = "MetaMask Info:" ascii
        $key_11 = "Software:" ascii
        $key_12 = "System Software Overview:" ascii
        $key_13 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_ea2e8de7
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_ea2e8de7"

    strings:
        $key_0 = "Apple M4:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Color LCD:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Debanks:" ascii
        $key_5 = "Graphics/Displays:" ascii
        $key_6 = "Hardware:" ascii
        $key_7 = "Hardware Overview:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "MetaMask Info:" ascii
        $key_10 = "Software:" ascii
        $key_11 = "System Software Overview:" ascii
        $key_12 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_ef0f7581
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_ef0f7581"

    strings:
        $key_0 = "City:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Debanks:" ascii
        $key_3 = "Graphics/Displays:" ascii
        $key_4 = "Hardware:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "MetaMask Info:" ascii
        $key_7 = "Software:" ascii
        $key_8 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_f1d98937
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_f1d98937"

    strings:
        $key_0 = "Apple M4 Pro:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Color LCD:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Debanks:" ascii
        $key_5 = "Graphics/Displays:" ascii
        $key_6 = "Hardware:" ascii
        $key_7 = "Hardware Overview:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "MetaMask Info:" ascii
        $key_10 = "Software:" ascii
        $key_11 = "System Software Overview:" ascii
        $key_12 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_f44a21ad
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_f44a21ad"

    strings:
        $key_0 = "Apple M1 Pro:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Color LCD:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Debanks:" ascii
        $key_5 = "Graphics/Displays:" ascii
        $key_6 = "Hardware:" ascii
        $key_7 = "Hardware Overview:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "MetaMask Info:" ascii
        $key_10 = "Software:" ascii
        $key_11 = "System Software Overview:" ascii
        $key_12 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_ff62cc07
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_ff62cc07"

    strings:
        $key_0 = "Apple M1:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Color LCD:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Debanks:" ascii
        $key_5 = "Graphics/Displays:" ascii
        $key_6 = "Hardware:" ascii
        $key_7 = "Hardware Overview:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "MetaMask Info:" ascii
        $key_10 = "Software:" ascii
        $key_11 = "System Software Overview:" ascii
        $key_12 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}
