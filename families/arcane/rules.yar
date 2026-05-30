// YARA rules for Arcane.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule Arcane_bradlogs_bradmax
{
    meta:
        family = "Arcane"
        fingerprint_id = "bradlogs_bradmax"

    strings:
        $key_0 = "ADMH:" ascii
        $key_1 = "Anime Eyes:" ascii
        $key_2 = "Broken Glasses:" ascii
        $key_3 = "CEP:" ascii
        $key_4 = "CNPJ:" ascii
        $key_5 = "Cidade:" ascii
        $key_6 = "Dados para faturamento:" ascii
        $key_7 = "Disguise:" ascii
        $key_8 = "Eye Patch:" ascii
        $key_9 = "FUNDO:" ascii
        $key_10 = "HITS:" ascii
        $key_11 = "Inverted Eyes:" ascii
        $key_12 = "Realistic Eyes:" ascii
        $key_13 = "Ribbon Bow:" ascii
        $key_14 = "Stuck Out Tongue:" ascii
        $key_15 = "Unhandled Exception:" ascii
        $key_16 = "Vampire Fangs:" ascii

    condition:
        all of ($key_*)
}
