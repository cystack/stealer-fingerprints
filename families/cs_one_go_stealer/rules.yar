// YARA rules for CSOneGoStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSOneGoStealer_one_go
{
    meta:
        family = "CSOneGoStealer"
        fingerprint_id = "one_go"

    strings:
        $key_0 = "Build Name:" ascii
        $key_1 = "CPU:" ascii
        $key_2 = "Computer Name:" ascii
        $key_3 = "Country ISO2:" ascii
        $key_4 = "Date:" ascii
        $key_5 = "Elevated:" ascii
        $key_6 = "Enviromental Variables:" ascii
        $key_7 = "Execute Path:" ascii
        $key_8 = "GPU:" ascii
        $key_9 = "HWID:" ascii
        $key_10 = "IP:" ascii
        $key_11 = "Operation System:" ascii
        $key_12 = "Screen Resolution:" ascii
        $key_13 = "User Name:" ascii

    condition:
        all of ($key_*)
}
