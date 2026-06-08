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
        $key_6 = "Cores:" ascii
        $key_7 = "Country:" ascii
        $key_8 = "Date:" ascii
        $key_9 = "DateTime:" ascii
        $key_10 = "Device Name:" ascii
        $key_11 = "Device String:" ascii
        $key_12 = "Disk:" ascii
        $key_13 = "Display Name:" ascii
        $key_14 = "Display Resolution:" ascii
        $key_15 = "Domain Name:" ascii
        $key_16 = "Edge Version:" ascii
        $key_17 = "GPU:" ascii
        $key_18 = "GUID:" ascii
        $key_19 = "HWID:" ascii
        $key_20 = "IP:" ascii
        $key_21 = "Install Date:" ascii
        $key_22 = "Install Source:" ascii
        $key_23 = "Installed Apps:" ascii
        $key_24 = "Installed RAM:" ascii
        $key_25 = "Installed software:" ascii
        $key_26 = "KOPLAYER Pro version:" ascii
        $key_27 = "Keyboard Language:" ascii
        $key_28 = "Keyboard Languages:" ascii
        $key_29 = "MachineID:" ascii
        $key_30 = "Network Info:" ascii
        $key_31 = "OS:" ascii
        $key_32 = "Path:" ascii
        $key_33 = "Process:" ascii
        $key_34 = "Process List:" ascii
        $key_35 = "Process count:" ascii
        $key_36 = "Processor:" ascii
        $key_37 = "Publisher:" ascii
        $key_38 = "RAM:" ascii
        $key_39 = "Resolution:" ascii
        $key_40 = "System Language:" ascii
        $key_41 = "Threads:" ascii
        $key_42 = "Time Zone:" ascii
        $key_43 = "Traffic Name:" ascii
        $key_44 = "UID:" ascii
        $key_45 = "Unknown Version:" ascii
        $key_46 = "User Language:" ascii
        $key_47 = "User Name:" ascii
        $key_48 = "UserName:" ascii
        $key_49 = "Version:" ascii
        $key_50 = "Video card:" ascii
        $key_51 = "VideoCard:" ascii
        $key_52 = "WallPaper Hash:" ascii

    condition:
        all of ($key_*)
}
