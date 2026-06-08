// YARA rules for Bugatti Cloud.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule Bugatti_Cloud_cystack_1aa0f2d0
{
    meta:
        family = "Bugatti Cloud"
        fingerprint_id = "cystack_1aa0f2d0"

    strings:
        $key_0 = "Age of Empires III:" ascii
        $key_1 = "Cores:" ascii
        $key_2 = "Processor:" ascii
        $key_3 = "RAM:" ascii
        $key_4 = "Threads:" ascii
        $key_5 = "VideoCard:" ascii

    condition:
        all of ($key_*)
}

rule Bugatti_Cloud_cystack_4b5f63c8
{
    meta:
        family = "Bugatti Cloud"
        fingerprint_id = "cystack_4b5f63c8"

    strings:
        $key_0 = "Cores:" ascii
        $key_1 = "Processor:" ascii
        $key_2 = "RAM:" ascii
        $key_3 = "Threads:" ascii
        $key_4 = "VideoCard:" ascii

    condition:
        all of ($key_*)
}

rule Bugatti_Cloud_cystack_58e9d59c
{
    meta:
        family = "Bugatti Cloud"
        fingerprint_id = "cystack_58e9d59c"

    strings:
        $key_0 = "Cores:" ascii
        $key_1 = "Evony:" ascii
        $key_2 = "Processor:" ascii
        $key_3 = "RAM:" ascii
        $key_4 = "Threads:" ascii
        $key_5 = "VideoCard:" ascii

    condition:
        all of ($key_*)
}

rule Bugatti_Cloud_cystack_7557887c
{
    meta:
        family = "Bugatti Cloud"
        fingerprint_id = "cystack_7557887c"

    strings:
        $key_0 = "Cores:" ascii
        $key_1 = "PUBG:" ascii
        $key_2 = "Processor:" ascii
        $key_3 = "RAM:" ascii
        $key_4 = "Threads:" ascii
        $key_5 = "VideoCard:" ascii

    condition:
        all of ($key_*)
}

rule Bugatti_Cloud_cystack_7d394cf9
{
    meta:
        family = "Bugatti Cloud"
        fingerprint_id = "cystack_7d394cf9"

    strings:
        $key_0 = "Cores:" ascii
        $key_1 = "Processor:" ascii
        $key_2 = "RAM:" ascii
        $key_3 = "Threads:" ascii
        $key_4 = "Umamusume:" ascii
        $key_5 = "VideoCard:" ascii

    condition:
        all of ($key_*)
}
