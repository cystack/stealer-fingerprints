// YARA rules for Nexus.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule Nexus_cystack_abc79f27
{
    meta:
        family = "Nexus"
        fingerprint_id = "cystack_abc79f27"

    strings:
        $key_0 = "CPU name:" ascii
        $key_1 = "CPU vendor:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "GPU:" ascii
        $key_4 = "HWID:" ascii
        $key_5 = "Hostname:" ascii
        $key_6 = "IP Address:" ascii
        $key_7 = "JABBER:" ascii
        $key_8 = "Language:" ascii
        $key_9 = "NetBIOS:" ascii
        $key_10 = "OS Version:" ascii
        $key_11 = "PC:" ascii
        $key_12 = "RAM size:" ascii
        $key_13 = "Screen resolution:" ascii
        $key_14 = "TOX:" ascii
        $key_15 = "User:" ascii

    condition:
        all of ($key_*)
}
