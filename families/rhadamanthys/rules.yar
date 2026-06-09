// YARA rules for Rhadamanthys.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule Rhadamanthys_cystack_05ddd107
{
    meta:
        family = "Rhadamanthys"
        fingerprint_id = "cystack_05ddd107"

    strings:
        $key_0 = "Computer Name:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Display Resolution:" ascii
        $key_3 = "Domain Name:" ascii
        $key_4 = "HWID:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "Installed RAM:" ascii
        $key_7 = "Keyboard Language:" ascii
        $key_8 = "Log date:" ascii
        $key_9 = "MachineID:" ascii
        $key_10 = "Operation System:" ascii
        $key_11 = "Processor:" ascii
        $key_12 = "System Language:" ascii
        $key_13 = "TimeZone:" ascii
        $key_14 = "Traffic:" ascii
        $key_15 = "User Language:" ascii
        $key_16 = "User Name:" ascii
        $key_17 = "Video card:" ascii
        $key_18 = "Wallpaper Hash:" ascii

    condition:
        all of ($key_*)
}
