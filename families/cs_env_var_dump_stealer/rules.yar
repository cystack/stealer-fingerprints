// YARA rules for CSEnvVarDumpStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSEnvVarDumpStealer_cystack_6d185ced
{
    meta:
        family = "CSEnvVarDumpStealer"
        fingerprint_id = "cystack_6d185ced"

    strings:
        $key_0 = "Antivirus:" ascii
        $key_1 = "CLR Version:" ascii
        $key_2 = "CPU:" ascii
        $key_3 = "Computer Name:" ascii
        $key_4 = "Default Gateway:" ascii
        $key_5 = "GPU:" ascii
        $key_6 = "Local IP:" ascii
        $key_7 = "OS Version:" ascii
        $key_8 = "Processor Count:" ascii
        $key_9 = "RAM:" ascii
        $key_10 = "SCREEN:" ascii
        $key_11 = "System Directory:" ascii
        $key_12 = "System Version:" ascii
        $key_13 = "Timestamp:" ascii
        $key_14 = "User Name:" ascii

    condition:
        all of ($key_*)
}
