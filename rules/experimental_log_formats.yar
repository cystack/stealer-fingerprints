// GENERATED FILE. Experimental detection of exported stealer-log formats.
// These rules do not identify executable malware and require analyst validation.
// Weak fingerprints are omitted; 5 high-specificity rules emitted.

rule experimental_log_mac_sync_52c2a7fe7537
{
    meta:
        scope = "exported_log_text_only"
        catalog_family = "MacSync"
        family_classification = "known_family"
        confidence = "high"
        fingerprint_id = "fp_52c2a7fe75372374992c61619f5d9f4d"
        description = "Experimental exported-log format classifier for MacSync"
        author = "CyStack"
        license = "Apache-2.0"
        tlp = "CLEAR"
        reference = "https://github.com/cystack/stealer-fingerprints"
        experimental = "true"

    strings:
        $marker_0 = "MacSync Stealer" ascii wide
        $field_0 = "build tag:" ascii wide nocase
        $field_1 = "graphics/displays:" ascii wide nocase
        $field_2 = "hardware:" ascii wide nocase
        $field_3 = "password:" ascii wide nocase
        $field_4 = "software:" ascii wide nocase

    condition:
        filesize < 2MB and (
            any of ($marker_*) and 3 of ($field_*)
        )
}

rule experimental_log_s_hub_stealer_3c9de3aed18e
{
    meta:
        scope = "exported_log_text_only"
        catalog_family = "SHub Stealer"
        family_classification = "known_family"
        confidence = "high"
        fingerprint_id = "fp_3c9de3aed18ee8c9eea55db6117edbc8"
        description = "Experimental exported-log format classifier for SHub Stealer"
        author = "CyStack"
        license = "Apache-2.0"
        tlp = "CLEAR"
        reference = "https://github.com/cystack/stealer-fingerprints"
        experimental = "true"

    strings:
        $marker_0 = "SHub Stealer" ascii wide
        $field_0 = "build tag:" ascii wide nocase
        $field_1 = "external ip:" ascii wide nocase
        $field_2 = "graphics/displays:" ascii wide nocase
        $field_3 = "hardware:" ascii wide nocase
        $field_4 = "password:" ascii wide nocase
        $field_5 = "software:" ascii wide nocase

    condition:
        filesize < 2MB and (
            any of ($marker_*) and 3 of ($field_*)
        )
}

rule experimental_log_unattributed_399cadd08cc80bc4b435e9bd83bdce1c_ca614eed9b76
{
    meta:
        scope = "exported_log_text_only"
        catalog_family = "Unattributed cluster 399cadd08cc80bc4b435e9bd83bdce1c"
        family_classification = "provisional_cluster"
        confidence = "low"
        fingerprint_id = "fp_ca614eed9b76eaac71a0120f4a37f4af"
        description = "Experimental exported-log format classifier for Unattributed cluster 399cadd08cc80bc4b435e9bd83bdce1c"
        author = "CyStack"
        license = "Apache-2.0"
        tlp = "CLEAR"
        reference = "https://github.com/cystack/stealer-fingerprints"
        experimental = "true"

    strings:
        $marker_0 = "@stealerboss - Buy daily fresh logs: no_wallpaper" ascii wide
        $field_0 = "ip address:" ascii wide nocase
        $field_1 = "keyboard language:" ascii wide nocase
        $field_2 = "postal code:" ascii wide nocase
        $field_3 = "city:" ascii wide nocase
        $field_4 = "country:" ascii wide nocase
        $field_5 = "display resolution:" ascii wide nocase
        $field_6 = "region:" ascii wide nocase
        $field_7 = "timezone:" ascii wide nocase

    condition:
        filesize < 2MB and (
            any of ($marker_*) and 3 of ($field_*)
        )
}

rule experimental_log_unattributed_756c7ed9353989051536b9c2ebb385b5_48283e026bab
{
    meta:
        scope = "exported_log_text_only"
        catalog_family = "Unattributed cluster 756c7ed9353989051536b9c2ebb385b5"
        family_classification = "provisional_cluster"
        confidence = "unknown"
        fingerprint_id = "fp_48283e026babed4df2fa0d2f1d90c60a"
        description = "Experimental exported-log format classifier for Unattributed cluster 756c7ed9353989051536b9c2ebb385b5"
        author = "CyStack"
        license = "Apache-2.0"
        tlp = "CLEAR"
        reference = "https://github.com/cystack/stealer-fingerprints"
        experimental = "true"

    strings:
        $marker_0 = "Build Comment: Xeno" ascii wide
        $field_0 = "admin rights:" ascii wide nocase
        $field_1 = "build comment:" ascii wide nocase
        $field_2 = "build id:" ascii wide nocase
        $field_3 = "build path:" ascii wide nocase
        $field_4 = "build version:" ascii wide nocase
        $field_5 = "memory:" ascii wide nocase
        $field_6 = "pc name:" ascii wide nocase
        $field_7 = "user time:" ascii wide nocase

    condition:
        filesize < 2MB and (
            any of ($marker_*) and 3 of ($field_*)
        )
}

rule experimental_log_unattributed_e1f953de8ad63d7d4bea246d9eafedcf_f5a28e8e67c5
{
    meta:
        scope = "exported_log_text_only"
        catalog_family = "Unattributed cluster e1f953de8ad63d7d4bea246d9eafedcf"
        family_classification = "provisional_cluster"
        confidence = "unknown"
        fingerprint_id = "fp_f5a28e8e67c516eaf71ad0aa767a7e68"
        description = "Experimental exported-log format classifier for Unattributed cluster e1f953de8ad63d7d4bea246d9eafedcf"
        author = "CyStack"
        license = "Apache-2.0"
        tlp = "CLEAR"
        reference = "https://github.com/cystack/stealer-fingerprints"
        experimental = "true"

    strings:
        $marker_0 = "==========PC INFO==========" ascii wide
        $field_0 = "application:" ascii wide nocase
        $field_1 = "client name:" ascii wide nocase
        $field_2 = "password:" ascii wide nocase
        $field_3 = "country:" ascii wide nocase

    condition:
        filesize < 2MB and (
            any of ($marker_*) and 3 of ($field_*)
        )
}
