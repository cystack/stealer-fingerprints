// YARA rules for AMOS Stealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule AMOS_Stealer_cystack_08f7ef15
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_08f7ef15"

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
        $key_9 = "LG TV:" ascii
        $key_10 = "MetaMask Info:" ascii
        $key_11 = "Software:" ascii
        $key_12 = "System Software Overview:" ascii
        $key_13 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_0cd83a7e
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_0cd83a7e"

    strings:
        $key_0 = "Apple M3 Pro:" ascii
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

rule AMOS_Stealer_cystack_198df320
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_198df320"

    strings:
        $key_0 = "Apple M3 Pro:" ascii
        $key_1 = "BenQ PD3205U:" ascii
        $key_2 = "City:" ascii
        $key_3 = "Color LCD:" ascii
        $key_4 = "Country:" ascii
        $key_5 = "Debanks:" ascii
        $key_6 = "Graphics/Displays:" ascii
        $key_7 = "Hardware:" ascii
        $key_8 = "Hardware Overview:" ascii
        $key_9 = "IP:" ascii
        $key_10 = "MSI MD241P:" ascii
        $key_11 = "MetaMask Info:" ascii
        $key_12 = "Software:" ascii
        $key_13 = "System Software Overview:" ascii
        $key_14 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_1ba7019c
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_1ba7019c"

    strings:
        $key_0 = "City:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Debanks:" ascii
        $key_3 = "Graphics/Displays:" ascii
        $key_4 = "Hardware:" ascii
        $key_5 = "Hardware Overview:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Intel Iris Pro:" ascii
        $key_8 = "MetaMask Info:" ascii
        $key_9 = "Software:" ascii
        $key_10 = "System Software Overview:" ascii
        $key_11 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_1f9547de
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_1f9547de"

    strings:
        $key_0 = "City:" ascii
        $key_1 = "Color LCD:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Debanks:" ascii
        $key_4 = "Graphics/Displays:" ascii
        $key_5 = "Hardware:" ascii
        $key_6 = "Hardware Overview:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "Intel HD Graphics 5000:" ascii
        $key_9 = "MetaMask Info:" ascii
        $key_10 = "Software:" ascii
        $key_11 = "System Software Overview:" ascii
        $key_12 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_2239c625
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_2239c625"

    strings:
        $key_0 = "AMD Radeon Pro 5500M:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Color LCD:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Debanks:" ascii
        $key_5 = "G276HL:" ascii
        $key_6 = "Graphics/Displays:" ascii
        $key_7 = "Hardware:" ascii
        $key_8 = "Hardware Overview:" ascii
        $key_9 = "IP:" ascii
        $key_10 = "Intel UHD Graphics 630:" ascii
        $key_11 = "MetaMask Info:" ascii
        $key_12 = "Software:" ascii
        $key_13 = "System Software Overview:" ascii
        $key_14 = "Userinfo:" ascii

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

rule AMOS_Stealer_cystack_35ac4fd3
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_35ac4fd3"

    strings:
        $key_0 = "City:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Debanks:" ascii
        $key_3 = "Graphics/Displays:" ascii
        $key_4 = "Hardware:" ascii
        $key_5 = "Hardware Overview:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "MetaMask Info:" ascii
        $key_8 = "NVIDIA GeForce GT 755M:" ascii
        $key_9 = "Software:" ascii
        $key_10 = "System Software Overview:" ascii
        $key_11 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_37b8f105
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_37b8f105"

    strings:
        $key_0 = "ASUS VG249:" ascii
        $key_1 = "Apple M1:" ascii
        $key_2 = "City:" ascii
        $key_3 = "Color LCD:" ascii
        $key_4 = "Country:" ascii
        $key_5 = "Debanks:" ascii
        $key_6 = "Graphics/Displays:" ascii
        $key_7 = "Hardware:" ascii
        $key_8 = "Hardware Overview:" ascii
        $key_9 = "IP:" ascii
        $key_10 = "MetaMask Info:" ascii
        $key_11 = "Software:" ascii
        $key_12 = "System Software Overview:" ascii
        $key_13 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_39a9de7a
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_39a9de7a"

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
        $key_10 = "NVIDIA GeForce GT 650M:" ascii
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

rule AMOS_Stealer_cystack_4208527f
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_4208527f"

    strings:
        $key_0 = "AMD Radeon Pro 5300:" ascii
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

rule AMOS_Stealer_cystack_4338b51f
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_4338b51f"

    strings:
        $key_0 = "Apple M2 Pro:" ascii
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
        $key_11 = "T27C350:" ascii
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

rule AMOS_Stealer_cystack_50ea6b3f
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_50ea6b3f"

    strings:
        $key_0 = "Apple M1:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "DENON-AVR:" ascii
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

rule AMOS_Stealer_cystack_63268a10
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_63268a10"

    strings:
        $key_0 = "City:" ascii
        $key_1 = "Color LCD:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Debanks:" ascii
        $key_4 = "Graphics/Displays:" ascii
        $key_5 = "Hardware:" ascii
        $key_6 = "Hardware Overview:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "Intel UHD Graphics 630:" ascii
        $key_9 = "MetaMask Info:" ascii
        $key_10 = "Radeon Pro 560X:" ascii
        $key_11 = "Software:" ascii
        $key_12 = "System Software Overview:" ascii
        $key_13 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_6b704a1d
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_6b704a1d"

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
        $key_10 = "S34J55x:" ascii
        $key_11 = "Software:" ascii
        $key_12 = "System Software Overview:" ascii
        $key_13 = "Userinfo:" ascii

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

rule AMOS_Stealer_cystack_7655c83f
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_7655c83f"

    strings:
        $key_0 = "Apple M3 Max:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Color LCD:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "DELL P2419H:" ascii
        $key_5 = "Debanks:" ascii
        $key_6 = "Graphics/Displays:" ascii
        $key_7 = "Hardware:" ascii
        $key_8 = "Hardware Overview:" ascii
        $key_9 = "IP:" ascii
        $key_10 = "MetaMask Info:" ascii
        $key_11 = "Software:" ascii
        $key_12 = "System Software Overview:" ascii
        $key_13 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_7ac7c01d
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_7ac7c01d"

    strings:
        $key_0 = "City:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Debanks:" ascii
        $key_3 = "Graphics/Displays:" ascii
        $key_4 = "Hardware:" ascii
        $key_5 = "Hardware Overview:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "MetaMask Info:" ascii
        $key_8 = "Radeon Pro 555:" ascii
        $key_9 = "Software:" ascii
        $key_10 = "System Software Overview:" ascii
        $key_11 = "Userinfo:" ascii

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

rule AMOS_Stealer_cystack_80cb47fe
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_80cb47fe"

    strings:
        $key_0 = "AMD FirePro D700:" ascii
        $key_1 = "BenQ EW3270U:" ascii
        $key_2 = "Cinema HD Display:" ascii
        $key_3 = "City:" ascii
        $key_4 = "Country:" ascii
        $key_5 = "Debanks:" ascii
        $key_6 = "Graphics/Displays:" ascii
        $key_7 = "Hardware:" ascii
        $key_8 = "Hardware Overview:" ascii
        $key_9 = "IP:" ascii
        $key_10 = "MetaMask Info:" ascii
        $key_11 = "Software:" ascii
        $key_12 = "System Software Overview:" ascii
        $key_13 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_86e52024
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_86e52024"

    strings:
        $key_0 = "Apple M2 Max:" ascii
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

rule AMOS_Stealer_cystack_887171ab
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_887171ab"

    strings:
        $key_0 = "Apple M1 Ultra:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "DELL U2723QE:" ascii
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

rule AMOS_Stealer_cystack_8c46cd9f
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_8c46cd9f"

    strings:
        $key_0 = "City:" ascii
        $key_1 = "Color LCD:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Debanks:" ascii
        $key_4 = "Graphics/Displays:" ascii
        $key_5 = "Hardware:" ascii
        $key_6 = "Hardware Overview:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "Intel HD Graphics 6000:" ascii
        $key_9 = "MetaMask Info:" ascii
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

rule AMOS_Stealer_cystack_934540d9
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_934540d9"

    strings:
        $key_0 = "BuildVersion:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Debanks:" ascii
        $key_4 = "Graphics/Displays:" ascii
        $key_5 = "Hardware:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "MetaMask Info:" ascii
        $key_8 = "Private Keys:" ascii
        $key_9 = "ProductName:" ascii
        $key_10 = "ProductVersion:" ascii
        $key_11 = "Seeds:" ascii
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

rule AMOS_Stealer_cystack_942d1db9
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_942d1db9"

    strings:
        $key_0 = "City:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Debanks:" ascii
        $key_3 = "Graphics/Displays:" ascii
        $key_4 = "HP ZR2330w:" ascii
        $key_5 = "Hardware:" ascii
        $key_6 = "Hardware Overview:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "MetaMask Info:" ascii
        $key_9 = "NVIDIA GeForce GT 120:" ascii
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

rule AMOS_Stealer_cystack_97abd0d5
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_97abd0d5"

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
        $key_9 = "SAMSUNG:" ascii
        $key_10 = "Software:" ascii
        $key_11 = "System Software Overview:" ascii
        $key_12 = "Userinfo:" ascii

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

rule AMOS_Stealer_cystack_a1b4843d
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_a1b4843d"

    strings:
        $key_0 = "Apple M2 Pro:" ascii
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

rule AMOS_Stealer_cystack_a7264601
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_a7264601"

    strings:
        $key_0 = "AMD Radeon Pro 5300:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Debanks:" ascii
        $key_4 = "Graphics/Displays:" ascii
        $key_5 = "Hardware:" ascii
        $key_6 = "Hardware Overview:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "MetaMask Info:" ascii
        $key_9 = "PHL 221V8:" ascii
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

rule AMOS_Stealer_cystack_ab3c30c5
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_ab3c30c5"

    strings:
        $key_0 = "City:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Debanks:" ascii
        $key_3 = "Graphics/Displays:" ascii
        $key_4 = "IP:" ascii
        $key_5 = "MetaMask Info:" ascii
        $key_6 = "Software:" ascii
        $key_7 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_adc800f0
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_adc800f0"

    strings:
        $key_0 = "Apple M3:" ascii
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

rule AMOS_Stealer_cystack_be75d7c7
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_be75d7c7"

    strings:
        $key_0 = "AMD Radeon R9 M395X:" ascii
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

rule AMOS_Stealer_cystack_d397c379
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_d397c379"

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
        $key_9 = "LC27T55:" ascii
        $key_10 = "MetaMask Info:" ascii
        $key_11 = "Software:" ascii
        $key_12 = "System Software Overview:" ascii
        $key_13 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_d58bf3c7
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_d58bf3c7"

    strings:
        $key_0 = "ATI Radeon HD 5750:" ascii
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

rule AMOS_Stealer_cystack_d600bd49
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_d600bd49"

    strings:
        $key_0 = "City:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Debanks:" ascii
        $key_3 = "Graphics/Displays:" ascii
        $key_4 = "Hardware:" ascii
        $key_5 = "Hardware Overview:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "MetaMask Info:" ascii
        $key_8 = "Radeon Pro 570X:" ascii
        $key_9 = "Software:" ascii
        $key_10 = "System Software Overview:" ascii
        $key_11 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_d6f974f0
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_d6f974f0"

    strings:
        $key_0 = "Apple M2:" ascii
        $key_1 = "BenQ GW2480:" ascii
        $key_2 = "City:" ascii
        $key_3 = "Color LCD:" ascii
        $key_4 = "Country:" ascii
        $key_5 = "Debanks:" ascii
        $key_6 = "Graphics/Displays:" ascii
        $key_7 = "Hardware:" ascii
        $key_8 = "Hardware Overview:" ascii
        $key_9 = "IP:" ascii
        $key_10 = "MetaMask Info:" ascii
        $key_11 = "Software:" ascii
        $key_12 = "System Software Overview:" ascii
        $key_13 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_e075b836
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_e075b836"

    strings:
        $key_0 = "City:" ascii
        $key_1 = "Color LCD:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Debanks:" ascii
        $key_4 = "Graphics/Displays:" ascii
        $key_5 = "Hardware:" ascii
        $key_6 = "Hardware Overview:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "Intel HD Graphics 630:" ascii
        $key_9 = "MetaMask Info:" ascii
        $key_10 = "Radeon Pro 555:" ascii
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

rule AMOS_Stealer_cystack_e4cb30d1
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_e4cb30d1"

    strings:
        $key_0 = "Apple M2:" ascii
        $key_1 = "Beyond TV:" ascii
        $key_2 = "City:" ascii
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

rule AMOS_Stealer_cystack_e7103028
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_e7103028"

    strings:
        $key_0 = "Board-ID:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Debanks:" ascii
        $key_4 = "Graphics/Displays:" ascii
        $key_5 = "Hardware:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "MetaMask Info:" ascii
        $key_8 = "Software:" ascii
        $key_9 = "Userinfo:" ascii

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

rule AMOS_Stealer_cystack_effa0efd
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_effa0efd"

    strings:
        $key_0 = "City:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Debanks:" ascii
        $key_3 = "Graphics/Displays:" ascii
        $key_4 = "Hardware:" ascii
        $key_5 = "Hardware Overview:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "MetaMask Info:" ascii
        $key_8 = "Radeon Pro 580X:" ascii
        $key_9 = "Software:" ascii
        $key_10 = "System Software Overview:" ascii
        $key_11 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_efff7d73
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_efff7d73"

    strings:
        $key_0 = "City:" ascii
        $key_1 = "Color LCD:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Debanks:" ascii
        $key_4 = "Graphics/Displays:" ascii
        $key_5 = "Hardware:" ascii
        $key_6 = "Hardware Overview:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "Intel Iris Plus Graphics 645:" ascii
        $key_9 = "MetaMask Info:" ascii
        $key_10 = "Software:" ascii
        $key_11 = "System Software Overview:" ascii
        $key_12 = "Userinfo:" ascii

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

rule AMOS_Stealer_cystack_f622df52
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_f622df52"

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
        $key_13 = "Virtual Display:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_f62fce78
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_f62fce78"

    strings:
        $key_0 = "Apple M1:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Debanks:" ascii
        $key_4 = "Display:" ascii
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

rule AMOS_Stealer_cystack_f9a7b8dd
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_f9a7b8dd"

    strings:
        $key_0 = "Apple M4 Pro:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Debanks:" ascii
        $key_4 = "Graphics/Displays:" ascii
        $key_5 = "Hardware:" ascii
        $key_6 = "Hardware Overview:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "MetaMask Info:" ascii
        $key_9 = "Software:" ascii
        $key_10 = "Studio Display:" ascii
        $key_11 = "System Software Overview:" ascii
        $key_12 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule AMOS_Stealer_cystack_fbebf84e
{
    meta:
        family = "AMOS Stealer"
        fingerprint_id = "cystack_fbebf84e"

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
        $key_10 = "NVIDIA GeForce GT 750M:" ascii
        $key_11 = "Software:" ascii
        $key_12 = "System Software Overview:" ascii
        $key_13 = "Userinfo:" ascii

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
