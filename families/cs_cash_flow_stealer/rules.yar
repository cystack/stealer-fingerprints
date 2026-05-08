// YARA rules for CSCashFlowStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSCashFlowStealer_cystack_18ae3e96
{
    meta:
        family = "CSCashFlowStealer"
        fingerprint_id = "cystack_18ae3e96"

    strings:
        $key_0 = "Country:" ascii
        $key_1 = "Operating System:" ascii
        $key_2 = "Username:" ascii

    condition:
        all of ($key_*)
}

rule CSCashFlowStealer_cystack_4afc8936
{
    meta:
        family = "CSCashFlowStealer"
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

rule CSCashFlowStealer_cystack_530b5636
{
    meta:
        family = "CSCashFlowStealer"
        fingerprint_id = "cystack_530b5636"

    strings:
        $key_0 = "Chipset Model:" ascii
        $key_1 = "Memory:" ascii
        $key_2 = "Model Name:" ascii
        $key_3 = "Resolution:" ascii
        $key_4 = "User Name:" ascii
        $key_5 = "Username:" ascii

    condition:
        all of ($key_*)
}

rule CSCashFlowStealer_cystack_604764a3
{
    meta:
        family = "CSCashFlowStealer"
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

rule CSCashFlowStealer_cystack_7043df8f
{
    meta:
        family = "CSCashFlowStealer"
        fingerprint_id = "cystack_7043df8f"

    strings:
        $key_0 = "Operating System:" ascii
        $key_1 = "Username:" ascii

    condition:
        all of ($key_*)
}

rule CSCashFlowStealer_cystack_931e4ef2
{
    meta:
        family = "CSCashFlowStealer"
        fingerprint_id = "cystack_931e4ef2"

    strings:
        $key_0 = "Country:" ascii
        $key_1 = "IP:" ascii
        $key_2 = "Operating System:" ascii
        $key_3 = "Username:" ascii

    condition:
        all of ($key_*)
}

rule CSCashFlowStealer_cystack_a5b1cb3f
{
    meta:
        family = "CSCashFlowStealer"
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
