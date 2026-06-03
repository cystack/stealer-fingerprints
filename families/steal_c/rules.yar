// YARA rules for StealC.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule StealC_cystack_0092c07b
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_0092c07b"

    strings:
        $key_0 = "All Users:" ascii
        $key_1 = "Color Depth:" ascii
        $key_2 = "Current User:" ascii
        $key_3 = "Device Name:" ascii
        $key_4 = "Device String:" ascii
        $key_5 = "Installed Apps:" ascii
        $key_6 = "MTA:" ascii
        $key_7 = "Network Info:" ascii
        $key_8 = "Process List:" ascii
        $key_9 = "Process count:" ascii
        $key_10 = "Resolution:" ascii
        $key_11 = "System Summary:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_1f8e4d74
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_1f8e4d74"

    strings:
        $key_0 = "All Users:" ascii
        $key_1 = "Installed Apps:" ascii
        $key_2 = "Network Info:" ascii
        $key_3 = "System Summary:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_2301cf8a
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_2301cf8a"

    strings:
        $key_0 = "All Users:" ascii
        $key_1 = "Color Depth:" ascii
        $key_2 = "Device Name:" ascii
        $key_3 = "Device String:" ascii
        $key_4 = "Installed Apps:" ascii
        $key_5 = "Network Info:" ascii
        $key_6 = "Process List:" ascii
        $key_7 = "Process count:" ascii
        $key_8 = "Resolution:" ascii
        $key_9 = "System Summary:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_27cecfc2
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_27cecfc2"

    strings:
        $key_0 = "All Users:" ascii
        $key_1 = "Channel with contacts:" ascii
        $key_2 = "Commission split:" ascii
        $key_3 = "Current User:" ascii
        $key_4 = "Installed Apps:" ascii
        $key_5 = "Network Info:" ascii
        $key_6 = "System Summary:" ascii
        $key_7 = "Telegram:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_2eb9685e
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_2eb9685e"

    strings:
        $key_0 = "Installed Apps:" ascii
        $key_1 = "Network Info:" ascii
        $key_2 = "Process List:" ascii
        $key_3 = "Process count:" ascii
        $key_4 = "System Summary:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_2f35dc10
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_2f35dc10"

    strings:
        $key_0 = "All Users:" ascii
        $key_1 = "Installed Apps:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_3028b0ca
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_3028b0ca"

    strings:
        $key_0 = "All Users:" ascii
        $key_1 = "Installed Apps:" ascii
        $key_2 = "Process List:" ascii
        $key_3 = "Process count:" ascii
        $key_4 = "System Summary:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_4b30cd7a
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_4b30cd7a"

    strings:
        $key_0 = "All Users:" ascii
        $key_1 = "Color Depth:" ascii
        $key_2 = "Device Name:" ascii
        $key_3 = "Device String:" ascii
        $key_4 = "Installed Apps:" ascii
        $key_5 = "MTA:" ascii
        $key_6 = "Network Info:" ascii
        $key_7 = "Process List:" ascii
        $key_8 = "Process count:" ascii
        $key_9 = "Resolution:" ascii
        $key_10 = "System Summary:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_51a2d2fa
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_51a2d2fa"

    strings:
        $key_0 = "All Users:" ascii
        $key_1 = "Color Depth:" ascii
        $key_2 = "Device Name:" ascii
        $key_3 = "Device String:" ascii
        $key_4 = "Imperator:" ascii
        $key_5 = "Installed Apps:" ascii
        $key_6 = "Network Info:" ascii
        $key_7 = "Process List:" ascii
        $key_8 = "Process count:" ascii
        $key_9 = "Resolution:" ascii
        $key_10 = "System Summary:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_678bd448
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_678bd448"

    strings:
        $key_0 = "All Users:" ascii
        $key_1 = "Channel with contacts:" ascii
        $key_2 = "Commission split:" ascii
        $key_3 = "Current User:" ascii
        $key_4 = "Installed Apps:" ascii
        $key_5 = "Network Info:" ascii
        $key_6 = "Process List:" ascii
        $key_7 = "System Summary:" ascii
        $key_8 = "Telegram:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_68dce857
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_68dce857"

    strings:
        $key_0 = "Process List:" ascii
        $key_1 = "Process count:" ascii
        $key_2 = "System Summary:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_6afce0a1
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_6afce0a1"

    strings:
        $key_0 = "All Users:" ascii
        $key_1 = "Current User:" ascii
        $key_2 = "Installed Apps:" ascii
        $key_3 = "Network Info:" ascii
        $key_4 = "Process List:" ascii
        $key_5 = "System Summary:" ascii
        $key_6 = "User Agents:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_771cd779
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_771cd779"

    strings:
        $key_0 = "All Users:" ascii
        $key_1 = "Installed Apps:" ascii
        $key_2 = "Network Info:" ascii
        $key_3 = "Process Count:" ascii
        $key_4 = "Process List:" ascii
        $key_5 = "System Summary:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_7a8ccb6e
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_7a8ccb6e"

    strings:
        $key_0 = "Network Info:" ascii
        $key_1 = "Process List:" ascii
        $key_2 = "Process count:" ascii
        $key_3 = "System Summary:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_7a949b1d
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_7a949b1d"

    strings:
        $key_0 = "All Users:" ascii
        $key_1 = "Installed Apps:" ascii
        $key_2 = "Network Info:" ascii
        $key_3 = "Process List:" ascii
        $key_4 = "Process count:" ascii
        $key_5 = "System Summary:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_7ecc3719
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_7ecc3719"

    strings:
        $key_0 = "All Users:" ascii
        $key_1 = "Channel with contacts:" ascii
        $key_2 = "Commission split:" ascii
        $key_3 = "Current User:" ascii
        $key_4 = "Installed Apps:" ascii
        $key_5 = "Network Info:" ascii
        $key_6 = "Process List:" ascii
        $key_7 = "System Summary:" ascii
        $key_8 = "Telegram:" ascii
        $key_9 = "User Agents:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_8a9e646a
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_8a9e646a"

    strings:
        $key_0 = "All Users:" ascii
        $key_1 = "Call of Duty:" ascii
        $key_2 = "Color Depth:" ascii
        $key_3 = "Device Name:" ascii
        $key_4 = "Device String:" ascii
        $key_5 = "Installed Apps:" ascii
        $key_6 = "Network Info:" ascii
        $key_7 = "Process List:" ascii
        $key_8 = "Process count:" ascii
        $key_9 = "Resolution:" ascii
        $key_10 = "System Summary:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_9adca1a9
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_9adca1a9"

    strings:
        $key_0 = "Color Depth:" ascii
        $key_1 = "Device Name:" ascii
        $key_2 = "Device String:" ascii
        $key_3 = "Installed Apps:" ascii
        $key_4 = "Network Info:" ascii
        $key_5 = "Process List:" ascii
        $key_6 = "Process count:" ascii
        $key_7 = "Resolution:" ascii
        $key_8 = "System Summary:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_a52d3ec9
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_a52d3ec9"

    strings:
        $key_0 = "All Users:" ascii
        $key_1 = "Channel with contacts:" ascii
        $key_2 = "Commission split:" ascii
        $key_3 = "Installed Apps:" ascii
        $key_4 = "Network Info:" ascii
        $key_5 = "System Summary:" ascii
        $key_6 = "Telegram:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_a7a7748a
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_a7a7748a"

    strings:
        $key_0 = "All Users:" ascii
        $key_1 = "Channel with contacts:" ascii
        $key_2 = "Commission split:" ascii
        $key_3 = "Installed Apps:" ascii
        $key_4 = "MTA:" ascii
        $key_5 = "Network Info:" ascii
        $key_6 = "System Summary:" ascii
        $key_7 = "Telegram:" ascii
        $key_8 = "User Agents:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_a7c37e02
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_a7c37e02"

    strings:
        $key_0 = "All Users:" ascii
        $key_1 = "Color Depth:" ascii
        $key_2 = "Detroit:" ascii
        $key_3 = "Device Name:" ascii
        $key_4 = "Device String:" ascii
        $key_5 = "Installed Apps:" ascii
        $key_6 = "Network Info:" ascii
        $key_7 = "Process List:" ascii
        $key_8 = "Process count:" ascii
        $key_9 = "Resolution:" ascii
        $key_10 = "System Summary:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_a867f3f5
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_a867f3f5"

    strings:
        $key_0 = "All Users:" ascii
        $key_1 = "Current User:" ascii
        $key_2 = "Installed Apps:" ascii
        $key_3 = "Network Info:" ascii
        $key_4 = "Process List:" ascii
        $key_5 = "Process count:" ascii
        $key_6 = "System Summary:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_aac2df00
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_aac2df00"

    strings:
        $key_0 = "All Users:" ascii
        $key_1 = "Color Depth:" ascii
        $key_2 = "Current User:" ascii
        $key_3 = "Device Name:" ascii
        $key_4 = "Device String:" ascii
        $key_5 = "Installed Apps:" ascii
        $key_6 = "Network Info:" ascii
        $key_7 = "Process List:" ascii
        $key_8 = "Process count:" ascii
        $key_9 = "Resolution:" ascii
        $key_10 = "System Summary:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_b76da4f7
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_b76da4f7"

    strings:
        $key_0 = "All Users:" ascii
        $key_1 = "Current User:" ascii
        $key_2 = "Installed Apps:" ascii
        $key_3 = "Network Info:" ascii
        $key_4 = "System Summary:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_b7b299ef
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_b7b299ef"

    strings:
        $key_0 = "All Users:" ascii
        $key_1 = "Current User:" ascii
        $key_2 = "Installed Apps:" ascii
        $key_3 = "Process List:" ascii
        $key_4 = "Process count:" ascii
        $key_5 = "System Summary:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_b8ed4e31
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_b8ed4e31"

    strings:
        $key_0 = "All Users:" ascii
        $key_1 = "Current User:" ascii
        $key_2 = "Installed Apps:" ascii
        $key_3 = "Network Info:" ascii
        $key_4 = "Process List:" ascii
        $key_5 = "System Summary:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_c06bf4de
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_c06bf4de"

    strings:
        $key_0 = "All Users:" ascii
        $key_1 = "Channel with contacts:" ascii
        $key_2 = "Commission split:" ascii
        $key_3 = "Installed Apps:" ascii
        $key_4 = "Network Info:" ascii
        $key_5 = "System Summary:" ascii
        $key_6 = "Telegram:" ascii
        $key_7 = "User Agents:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_d8d785c2
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_d8d785c2"

    strings:
        $key_0 = "Color Depth:" ascii
        $key_1 = "Device Name:" ascii
        $key_2 = "Device String:" ascii
        $key_3 = "Network Info:" ascii
        $key_4 = "Process List:" ascii
        $key_5 = "Process count:" ascii
        $key_6 = "Resolution:" ascii
        $key_7 = "System Summary:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_da422d08
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_da422d08"

    strings:
        $key_0 = "All Users:" ascii
        $key_1 = "Installed Apps:" ascii
        $key_2 = "Network Info:" ascii
        $key_3 = "System Summary:" ascii
        $key_4 = "User Agents:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_e1caec1c
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_e1caec1c"

    strings:
        $key_0 = "All Users:" ascii
        $key_1 = "Current User:" ascii
        $key_2 = "Installed Apps:" ascii
        $key_3 = "Network Info:" ascii
        $key_4 = "System Summary:" ascii
        $key_5 = "User Agents:" ascii

    condition:
        all of ($key_*)
}

rule StealC_cystack_e460e932
{
    meta:
        family = "StealC"
        fingerprint_id = "cystack_e460e932"

    strings:
        $key_0 = "Installed Apps:" ascii
        $key_1 = "Process List:" ascii
        $key_2 = "Process count:" ascii
        $key_3 = "System Summary:" ascii

    condition:
        all of ($key_*)
}
