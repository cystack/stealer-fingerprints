// GENERATED FILE. Experimental detection of exported stealer-log formats.
// These rules do not identify executable malware and require analyst validation.
// Weak fingerprints are omitted; 1 high-specificity rules emitted.

rule experimental_log_unattributed_58d1d7e3d4348cb9a01ee1ec2cde70b8_2e114b8662fb
{
    meta:
        scope = "exported_log_text_only"
        catalog_family = "Unattributed cluster 58d1d7e3d4348cb9a01ee1ec2cde70b8"
        family_classification = "provisional_cluster"
        confidence = "unknown"
        fingerprint_id = "fp_2e114b8662fbd7d9d37691ec3efa1e6e"
        description = "Experimental exported-log format classifier for Unattributed cluster 58d1d7e3d4348cb9a01ee1ec2cde70b8"
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
