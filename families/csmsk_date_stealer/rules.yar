// YARA rules for CSMSKDateStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSMSKDateStealer_cystack_79d81103
{
    meta:
        family = "CSMSKDateStealer"
        fingerprint_id = "cystack_79d81103"

    strings:
        $key_0 = "City:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "CountryCode:" ascii
        $key_3 = "Date:" ascii
        $key_4 = "GPU:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "IP Timezone:" ascii
        $key_7 = "Local Time:" ascii
        $key_8 = "MAC:" ascii
        $key_9 = "Machine:" ascii
        $key_10 = "Machine UUID:" ascii
        $key_11 = "Processor:" ascii
        $key_12 = "RAM:" ascii
        $key_13 = "Region Name:" ascii
        $key_14 = "Windows:" ascii
        $key_15 = "ZIP:" ascii

    condition:
        all of ($key_*)
}
