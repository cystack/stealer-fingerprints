// YARA rules for Ailurophile.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule Ailurophile_horus_b13
{
    meta:
        family = "Ailurophile"
        fingerprint_id = "horus_b13"

    strings:
        $key_0 = "Allowed Extensions:" ascii
        $key_1 = "Architecture:" ascii
        $key_2 = "Browsers:" ascii
        $key_3 = "Chrome Default - version:" ascii
        $key_4 = "Country:" ascii
        $key_5 = "File Path:" ascii
        $key_6 = "Files:" ascii
        $key_7 = "Folders to Search:" ascii
        $key_8 = "HORUS B13:" ascii
        $key_9 = "Hostname:" ascii
        $key_10 = "IP:" ascii
        $key_11 = "MAC Address:" ascii
        $key_12 = "Main Path:" ascii
        $key_13 = "PC Type:" ascii
        $key_14 = "Screen Resolution:" ascii

    condition:
        all of ($key_*)
}
