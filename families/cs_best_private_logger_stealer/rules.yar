// YARA rules for CSBestPrivateLoggerStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSBestPrivateLoggerStealer_best_private_logger
{
    meta:
        family = "CSBestPrivateLoggerStealer"
        fingerprint_id = "best_private_logger"

    strings:
        $banner_0 = "==========PC INFO==========" ascii nocase
        $key_0 = "Application:" ascii
        $key_1 = "Client Name:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "FullDate:" ascii
        $key_4 = "IP:" ascii
        $key_5 = "Password:" ascii
        $key_6 = "URL:" ascii
        $key_7 = "Username:" ascii

    condition:
        any of ($banner_*) or all of ($key_*)
}
