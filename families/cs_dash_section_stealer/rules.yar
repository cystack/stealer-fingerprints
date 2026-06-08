// YARA rules for CSDashSectionStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSDashSectionStealer_system_info_5_dash_sections
{
    meta:
        family = "CSDashSectionStealer"
        fingerprint_id = "system_info_5_dash_sections"

    strings:
        $key_0 = "Arch:" ascii
        $key_1 = "CPU:" ascii
        $key_2 = "Cat Purrtrol:" ascii
        $key_3 = "Cats and Seek:" ascii
        $key_4 = "City:" ascii
        $key_5 = "Counter-Strike:" ascii
        $key_6 = "Country:" ascii
        $key_7 = "Deep Rock Galactic:" ascii
        $key_8 = "Eronoctosis:" ascii
        $key_9 = "GPU:" ascii
        $key_10 = "Gas Station Simulator:" ascii
        $key_11 = "HWID:" ascii
        $key_12 = "HerrAnwalt:" ascii
        $key_13 = "IP:" ascii
        $key_14 = "Liftoff:" ascii
        $key_15 = "Locale:" ascii
        $key_16 = "OS:" ascii
        $key_17 = "PUBG:" ascii
        $key_18 = "Quarantine Zone:" ascii
        $key_19 = "RAM:" ascii
        $key_20 = "RE:" ascii
        $key_21 = "RISK:" ascii
        $key_22 = "Region:" ascii
        $key_23 = "STALCRAFT:" ascii
        $key_24 = "Schedule I:" ascii
        $key_25 = "Serious Sam Classic:" ascii
        $key_26 = "Serious Sam Classics:" ascii
        $key_27 = "Size:" ascii
        $key_28 = "Sky:" ascii
        $key_29 = "Sonic Racing:" ascii
        $key_30 = "Supermarket Simulator:" ascii
        $key_31 = "The Elder Scrolls V:" ascii
        $key_32 = "Timezone:" ascii
        $key_33 = "Uncrashed:" ascii
        $key_34 = "Username:" ascii
        $key_35 = "Watch Dogs:" ascii
        $key_36 = "Zombie Army 4:" ascii
        $key_37 = "Zoo 2:" ascii

    condition:
        all of ($key_*)
}
