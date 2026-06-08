// YARA rules for CSSoftwareTailStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSSoftwareTailStealer_bradmax
{
    meta:
        family = "CSSoftwareTailStealer"
        fingerprint_id = "bradmax"

    strings:
        $key_0 = "All Users:" ascii
        $key_1 = "CPU:" ascii
        $key_2 = "Chrome Version:" ascii
        $key_3 = "Color Depth:" ascii
        $key_4 = "Computer Name:" ascii
        $key_5 = "ComputerName:" ascii
        $key_6 = "Country:" ascii
        $key_7 = "DateTime:" ascii
        $key_8 = "Device Name:" ascii
        $key_9 = "Device String:" ascii
        $key_10 = "Disk:" ascii
        $key_11 = "Display Name:" ascii
        $key_12 = "Display Resolution:" ascii
        $key_13 = "Domain Name:" ascii
        $key_14 = "Edge Version:" ascii
        $key_15 = "GPU:" ascii
        $key_16 = "HWID:" ascii
        $key_17 = "IP:" ascii
        $key_18 = "Install Date:" ascii
        $key_19 = "Install Source:" ascii
        $key_20 = "Installed Apps:" ascii
        $key_21 = "Installed RAM:" ascii
        $key_22 = "Installed software:" ascii
        $key_23 = "KOPLAYER Pro version:" ascii
        $key_24 = "Keyboard Language:" ascii
        $key_25 = "Keyboard Languages:" ascii
        $key_26 = "MachineID:" ascii
        $key_27 = "Network Info:" ascii
        $key_28 = "OS:" ascii
        $key_29 = "Process:" ascii
        $key_30 = "Process List:" ascii
        $key_31 = "Process count:" ascii
        $key_32 = "Processor:" ascii
        $key_33 = "Publisher:" ascii
        $key_34 = "RAM:" ascii
        $key_35 = "Resolution:" ascii
        $key_36 = "System Language:" ascii
        $key_37 = "Time Zone:" ascii
        $key_38 = "Traffic Name:" ascii
        $key_39 = "UID:" ascii
        $key_40 = "Unknown Version:" ascii
        $key_41 = "User Language:" ascii
        $key_42 = "User Name:" ascii
        $key_43 = "UserName:" ascii
        $key_44 = "Version:" ascii
        $key_45 = "Video card:" ascii
        $key_46 = "WallPaper Hash:" ascii

    condition:
        all of ($key_*)
}
