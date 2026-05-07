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
