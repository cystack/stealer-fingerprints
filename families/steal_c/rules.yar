// YARA rules for StealC.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

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
