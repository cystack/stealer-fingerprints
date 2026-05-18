// YARA rules for Cthulhu Stealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule Cthulhu_Stealer_cystack_000c0121
{
    meta:
        family = "Cthulhu Stealer"
        fingerprint_id = "cystack_000c0121"

    strings:
        $key_0 = "AMD Radeon RX 5500 XT:" ascii
        $key_1 = "BenQ GW2270:" ascii
        $key_2 = "BuildID:" ascii
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

rule Cthulhu_Stealer_cystack_0ac18884
{
    meta:
        family = "Cthulhu Stealer"
        fingerprint_id = "cystack_0ac18884"

    strings:
        $key_0 = "BuildID:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Color LCD:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Debanks:" ascii
        $key_5 = "Graphics/Displays:" ascii
        $key_6 = "Hardware:" ascii
        $key_7 = "Hardware Overview:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "Intel HD Graphics 5000:" ascii
        $key_10 = "MetaMask Info:" ascii
        $key_11 = "Software:" ascii
        $key_12 = "System Software Overview:" ascii
        $key_13 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule Cthulhu_Stealer_cystack_161680a5
{
    meta:
        family = "Cthulhu Stealer"
        fingerprint_id = "cystack_161680a5"

    strings:
        $key_0 = "Apple M3:" ascii
        $key_1 = "BuildID:" ascii
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

rule Cthulhu_Stealer_cystack_2a8c0f89
{
    meta:
        family = "Cthulhu Stealer"
        fingerprint_id = "cystack_2a8c0f89"

    strings:
        $key_0 = "BuildID:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Color LCD:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Debanks:" ascii
        $key_5 = "Graphics/Displays:" ascii
        $key_6 = "Hardware:" ascii
        $key_7 = "Hardware Overview:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "Intel UHD Graphics 617:" ascii
        $key_10 = "MetaMask Info:" ascii
        $key_11 = "Software:" ascii
        $key_12 = "System Software Overview:" ascii
        $key_13 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule Cthulhu_Stealer_cystack_32f80447
{
    meta:
        family = "Cthulhu Stealer"
        fingerprint_id = "cystack_32f80447"

    strings:
        $key_0 = "Apple M2:" ascii
        $key_1 = "BuildID:" ascii
        $key_2 = "City:" ascii
        $key_3 = "Color LCD:" ascii
        $key_4 = "Country:" ascii
        $key_5 = "Debanks:" ascii
        $key_6 = "Graphics/Displays:" ascii
        $key_7 = "Hardware:" ascii
        $key_8 = "Hardware Overview:" ascii
        $key_9 = "IP:" ascii
        $key_10 = "LEN P27h-10:" ascii
        $key_11 = "MetaMask Info:" ascii
        $key_12 = "Software:" ascii
        $key_13 = "System Software Overview:" ascii
        $key_14 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule Cthulhu_Stealer_cystack_40506711
{
    meta:
        family = "Cthulhu Stealer"
        fingerprint_id = "cystack_40506711"

    strings:
        $key_0 = "BuildID:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Color LCD:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Debanks:" ascii
        $key_5 = "Graphics/Displays:" ascii
        $key_6 = "Hardware:" ascii
        $key_7 = "Hardware Overview:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "Intel HD Graphics 6000:" ascii
        $key_10 = "MetaMask Info:" ascii
        $key_11 = "Software:" ascii
        $key_12 = "System Software Overview:" ascii
        $key_13 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule Cthulhu_Stealer_cystack_5bdc5a4e
{
    meta:
        family = "Cthulhu Stealer"
        fingerprint_id = "cystack_5bdc5a4e"

    strings:
        $key_0 = "AMD Radeon Pro 5300M:" ascii
        $key_1 = "BuildID:" ascii
        $key_2 = "City:" ascii
        $key_3 = "Color LCD:" ascii
        $key_4 = "Country:" ascii
        $key_5 = "Debanks:" ascii
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

rule Cthulhu_Stealer_cystack_6238b4e0
{
    meta:
        family = "Cthulhu Stealer"
        fingerprint_id = "cystack_6238b4e0"

    strings:
        $key_0 = "Apple M2:" ascii
        $key_1 = "BuildID:" ascii
        $key_2 = "City:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Debanks:" ascii
        $key_5 = "Graphics/Displays:" ascii
        $key_6 = "Hardware:" ascii
        $key_7 = "Hardware Overview:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "MetaMask Info:" ascii
        $key_10 = "Software:" ascii
        $key_11 = "SwitchResX4 - Color LCD:" ascii
        $key_12 = "System Software Overview:" ascii
        $key_13 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule Cthulhu_Stealer_cystack_62f9b2c7
{
    meta:
        family = "Cthulhu Stealer"
        fingerprint_id = "cystack_62f9b2c7"

    strings:
        $key_0 = "Apple M1 Max:" ascii
        $key_1 = "BuildID:" ascii
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

rule Cthulhu_Stealer_cystack_65967d4c
{
    meta:
        family = "Cthulhu Stealer"
        fingerprint_id = "cystack_65967d4c"

    strings:
        $key_0 = "Apple M4:" ascii
        $key_1 = "BuildID:" ascii
        $key_2 = "City:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Debanks:" ascii
        $key_5 = "Graphics/Displays:" ascii
        $key_6 = "Hardware:" ascii
        $key_7 = "Hardware Overview:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "LS27D300G:" ascii
        $key_10 = "MetaMask Info:" ascii
        $key_11 = "Software:" ascii
        $key_12 = "System Software Overview:" ascii
        $key_13 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule Cthulhu_Stealer_cystack_6b6e6129
{
    meta:
        family = "Cthulhu Stealer"
        fingerprint_id = "cystack_6b6e6129"

    strings:
        $key_0 = "Apple M4 Max:" ascii
        $key_1 = "BuildID:" ascii
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

rule Cthulhu_Stealer_cystack_72d91b19
{
    meta:
        family = "Cthulhu Stealer"
        fingerprint_id = "cystack_72d91b19"

    strings:
        $key_0 = "BuildID:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Graphics/Displays:" ascii
        $key_4 = "Hardware:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "MetaMask Info:" ascii
        $key_7 = "Software:" ascii
        $key_8 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule Cthulhu_Stealer_cystack_7afe11aa
{
    meta:
        family = "Cthulhu Stealer"
        fingerprint_id = "cystack_7afe11aa"

    strings:
        $key_0 = "Apple M2:" ascii
        $key_1 = "BuildID:" ascii
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

rule Cthulhu_Stealer_cystack_92b81443
{
    meta:
        family = "Cthulhu Stealer"
        fingerprint_id = "cystack_92b81443"

    strings:
        $key_0 = "BuildID:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Color LCD:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Debanks:" ascii
        $key_5 = "Graphics/Displays:" ascii
        $key_6 = "Hardware:" ascii
        $key_7 = "Hardware Overview:" ascii
        $key_8 = "IP:" ascii
        $key_9 = "Intel Iris Plus Graphics 650:" ascii
        $key_10 = "MetaMask Info:" ascii
        $key_11 = "Software:" ascii
        $key_12 = "System Software Overview:" ascii
        $key_13 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule Cthulhu_Stealer_cystack_9fb6f3f1
{
    meta:
        family = "Cthulhu Stealer"
        fingerprint_id = "cystack_9fb6f3f1"

    strings:
        $key_0 = "BuildID:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Debanks:" ascii
        $key_4 = "Graphics/Displays:" ascii
        $key_5 = "Hardware:" ascii
        $key_6 = "Hardware Overview:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "MetaMask Info:" ascii
        $key_9 = "Radeon Pro 570:" ascii
        $key_10 = "Software:" ascii
        $key_11 = "System Software Overview:" ascii
        $key_12 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule Cthulhu_Stealer_cystack_c6bf81f0
{
    meta:
        family = "Cthulhu Stealer"
        fingerprint_id = "cystack_c6bf81f0"

    strings:
        $key_0 = "Apple M1 Pro:" ascii
        $key_1 = "BuildID:" ascii
        $key_2 = "City:" ascii
        $key_3 = "Color LCD:" ascii
        $key_4 = "Country:" ascii
        $key_5 = "Debanks:" ascii
        $key_6 = "G274F:" ascii
        $key_7 = "Graphics/Displays:" ascii
        $key_8 = "Hardware:" ascii
        $key_9 = "Hardware Overview:" ascii
        $key_10 = "IP:" ascii
        $key_11 = "MetaMask Info:" ascii
        $key_12 = "Software:" ascii
        $key_13 = "System Software Overview:" ascii
        $key_14 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule Cthulhu_Stealer_cystack_cd0458aa
{
    meta:
        family = "Cthulhu Stealer"
        fingerprint_id = "cystack_cd0458aa"

    strings:
        $key_0 = "BuildID:" ascii
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

rule Cthulhu_Stealer_cystack_d48169df
{
    meta:
        family = "Cthulhu Stealer"
        fingerprint_id = "cystack_d48169df"

    strings:
        $key_0 = "BuildID:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Hardware:" ascii
        $key_4 = "IP:" ascii
        $key_5 = "MetaMask Info:" ascii
        $key_6 = "Software:" ascii
        $key_7 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule Cthulhu_Stealer_cystack_d883046a
{
    meta:
        family = "Cthulhu Stealer"
        fingerprint_id = "cystack_d883046a"

    strings:
        $key_0 = "Apple M1 Pro:" ascii
        $key_1 = "BuildID:" ascii
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

rule Cthulhu_Stealer_cystack_dd4f9b5b
{
    meta:
        family = "Cthulhu Stealer"
        fingerprint_id = "cystack_dd4f9b5b"

    strings:
        $key_0 = "BuildID:" ascii
        $key_1 = "City:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Debanks:" ascii
        $key_4 = "Graphics/Displays:" ascii
        $key_5 = "Hardware:" ascii
        $key_6 = "Hardware Overview:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "MetaMask Info:" ascii
        $key_9 = "Radeon Pro 580:" ascii
        $key_10 = "Software:" ascii
        $key_11 = "System Software Overview:" ascii
        $key_12 = "Userinfo:" ascii

    condition:
        all of ($key_*)
}

rule Cthulhu_Stealer_cystack_e8263afb
{
    meta:
        family = "Cthulhu Stealer"
        fingerprint_id = "cystack_e8263afb"

    strings:
        $key_0 = "Apple M1:" ascii
        $key_1 = "BuildID:" ascii
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

rule Cthulhu_Stealer_cystack_f6f1b312
{
    meta:
        family = "Cthulhu Stealer"
        fingerprint_id = "cystack_f6f1b312"

    strings:
        $key_0 = "Apple M4:" ascii
        $key_1 = "BuildID:" ascii
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
