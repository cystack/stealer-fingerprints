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

rule Arcane_cystack_0449c360
{
    meta:
        family = "Arcane"
        fingerprint_id = "cystack_0449c360"

    strings:
        $key_0 = "AdapterRAM:" ascii
        $key_1 = "Capacity:" ascii
        $key_2 = "Caption:" ascii
        $key_3 = "ChassisTypes:" ascii
        $key_4 = "Clipboard:" ascii
        $key_5 = "Default:" ascii
        $key_6 = "Description:" ascii
        $key_7 = "DeviceID:" ascii
        $key_8 = "External IP:" ascii
        $key_9 = "FileSystem:" ascii
        $key_10 = "FreeSpace:" ascii
        $key_11 = "FullName:" ascii
        $key_12 = "Gateway IP:" ascii
        $key_13 = "IPEnabled:" ascii
        $key_14 = "ISO Key:" ascii
        $key_15 = "Internal IP:" ascii
        $key_16 = "MACAddress:" ascii
        $key_17 = "Manufacturer:" ascii
        $key_18 = "MaxClockSpeed:" ascii
        $key_19 = "Model:" ascii
        $key_20 = "Name:" ascii
        $key_21 = "NumberOfCores:" ascii
        $key_22 = "OSArchitecture:" ascii
        $key_23 = "Product:" ascii
        $key_24 = "ReleaseDate:" ascii
        $key_25 = "SMBIOSBIOSVersion:" ascii
        $key_26 = "SerialNumber:" ascii
        $key_27 = "Size:" ascii
        $key_28 = "Speed:" ascii
        $key_29 = "Version:" ascii
        $key_30 = "Worker:" ascii

    condition:
        all of ($key_*)
}

rule Arcane_cystack_15636cf8
{
    meta:
        family = "Arcane"
        fingerprint_id = "cystack_15636cf8"

    strings:
        $key_0 = "AdapterRAM:" ascii
        $key_1 = "BatteryStatus:" ascii
        $key_2 = "Capacity:" ascii
        $key_3 = "Caption:" ascii
        $key_4 = "ChassisTypes:" ascii
        $key_5 = "Date Install:" ascii
        $key_6 = "Default:" ascii
        $key_7 = "Description:" ascii
        $key_8 = "DeviceID:" ascii
        $key_9 = "EstimatedChargeRemaining:" ascii
        $key_10 = "FileSystem:" ascii
        $key_11 = "FreeSpace:" ascii
        $key_12 = "FullName:" ascii
        $key_13 = "Gateway IP:" ascii
        $key_14 = "IPEnabled:" ascii
        $key_15 = "MACAddress:" ascii
        $key_16 = "Manufacturer:" ascii
        $key_17 = "MaxClockSpeed:" ascii
        $key_18 = "Model:" ascii
        $key_19 = "Name:" ascii
        $key_20 = "NumberOfCores:" ascii
        $key_21 = "OSArchitecture:" ascii
        $key_22 = "Product:" ascii
        $key_23 = "ReleaseDate:" ascii
        $key_24 = "SMBIOSBIOSVersion:" ascii
        $key_25 = "SerialNumber:" ascii
        $key_26 = "Size:" ascii
        $key_27 = "Speed:" ascii
        $key_28 = "Version:" ascii
        $key_29 = "Worker:" ascii

    condition:
        all of ($key_*)
}

rule Arcane_cystack_3bd693b6
{
    meta:
        family = "Arcane"
        fingerprint_id = "cystack_3bd693b6"

    strings:
        $key_0 = "AdapterRAM:" ascii
        $key_1 = "Capacity:" ascii
        $key_2 = "Caption:" ascii
        $key_3 = "ChassisTypes:" ascii
        $key_4 = "Date Install:" ascii
        $key_5 = "Default:" ascii
        $key_6 = "Description:" ascii
        $key_7 = "DeviceID:" ascii
        $key_8 = "FileSystem:" ascii
        $key_9 = "FreeSpace:" ascii
        $key_10 = "FullName:" ascii
        $key_11 = "IPEnabled:" ascii
        $key_12 = "MACAddress:" ascii
        $key_13 = "Manufacturer:" ascii
        $key_14 = "MaxClockSpeed:" ascii
        $key_15 = "Model:" ascii
        $key_16 = "Name:" ascii
        $key_17 = "NumberOfCores:" ascii
        $key_18 = "OSArchitecture:" ascii
        $key_19 = "Product:" ascii
        $key_20 = "ReleaseDate:" ascii
        $key_21 = "SMBIOSBIOSVersion:" ascii
        $key_22 = "SerialNumber:" ascii
        $key_23 = "Size:" ascii
        $key_24 = "Speed:" ascii
        $key_25 = "Version:" ascii
        $key_26 = "Worker:" ascii

    condition:
        all of ($key_*)
}

rule Arcane_cystack_5914a963
{
    meta:
        family = "Arcane"
        fingerprint_id = "cystack_5914a963"

    strings:
        $key_0 = "AdapterRAM:" ascii
        $key_1 = "BatteryStatus:" ascii
        $key_2 = "Capacity:" ascii
        $key_3 = "Caption:" ascii
        $key_4 = "ChassisTypes:" ascii
        $key_5 = "Clipboard:" ascii
        $key_6 = "Default:" ascii
        $key_7 = "Description:" ascii
        $key_8 = "DeviceID:" ascii
        $key_9 = "EstimatedChargeRemaining:" ascii
        $key_10 = "External IP:" ascii
        $key_11 = "FileSystem:" ascii
        $key_12 = "FreeSpace:" ascii
        $key_13 = "FullName:" ascii
        $key_14 = "Gateway IP:" ascii
        $key_15 = "IPEnabled:" ascii
        $key_16 = "ISO Key:" ascii
        $key_17 = "Internal IP:" ascii
        $key_18 = "MACAddress:" ascii
        $key_19 = "Manufacturer:" ascii
        $key_20 = "MaxClockSpeed:" ascii
        $key_21 = "Model:" ascii
        $key_22 = "Name:" ascii
        $key_23 = "NumberOfCores:" ascii
        $key_24 = "OSArchitecture:" ascii
        $key_25 = "Product:" ascii
        $key_26 = "ReleaseDate:" ascii
        $key_27 = "SMBIOSBIOSVersion:" ascii
        $key_28 = "SerialNumber:" ascii
        $key_29 = "Size:" ascii
        $key_30 = "Speed:" ascii
        $key_31 = "Version:" ascii
        $key_32 = "Worker:" ascii

    condition:
        all of ($key_*)
}

rule Arcane_cystack_6d23dc0d
{
    meta:
        family = "Arcane"
        fingerprint_id = "cystack_6d23dc0d"

    strings:
        $key_0 = "AdapterRAM:" ascii
        $key_1 = "Capacity:" ascii
        $key_2 = "Caption:" ascii
        $key_3 = "ChassisTypes:" ascii
        $key_4 = "Clipboard:" ascii
        $key_5 = "Data Check-in:" ascii
        $key_6 = "Data Check-out:" ascii
        $key_7 = "Date Install:" ascii
        $key_8 = "Default:" ascii
        $key_9 = "Description:" ascii
        $key_10 = "DeviceID:" ascii
        $key_11 = "External IP:" ascii
        $key_12 = "FileSystem:" ascii
        $key_13 = "FreeSpace:" ascii
        $key_14 = "FullName:" ascii
        $key_15 = "Gateway IP:" ascii
        $key_16 = "IPEnabled:" ascii
        $key_17 = "Internal IP:" ascii
        $key_18 = "MACAddress:" ascii
        $key_19 = "Manufacturer:" ascii
        $key_20 = "MaxClockSpeed:" ascii
        $key_21 = "Model:" ascii
        $key_22 = "Name:" ascii
        $key_23 = "NumberOfCores:" ascii
        $key_24 = "OSArchitecture:" ascii
        $key_25 = "Product:" ascii
        $key_26 = "Quarto individual 1:" ascii
        $key_27 = "Quarto individual 2:" ascii
        $key_28 = "Quarto individual 3:" ascii
        $key_29 = "ReleaseDate:" ascii
        $key_30 = "SMBIOSBIOSVersion:" ascii
        $key_31 = "SerialNumber:" ascii
        $key_32 = "Size:" ascii
        $key_33 = "Speed:" ascii
        $key_34 = "Version:" ascii
        $key_35 = "Worker:" ascii

    condition:
        all of ($key_*)
}

rule Arcane_cystack_77a73812
{
    meta:
        family = "Arcane"
        fingerprint_id = "cystack_77a73812"

    strings:
        $key_0 = "AdapterRAM:" ascii
        $key_1 = "BatteryStatus:" ascii
        $key_2 = "Capacity:" ascii
        $key_3 = "Caption:" ascii
        $key_4 = "ChassisTypes:" ascii
        $key_5 = "Clipboard:" ascii
        $key_6 = "Description:" ascii
        $key_7 = "DeviceID:" ascii
        $key_8 = "EstimatedChargeRemaining:" ascii
        $key_9 = "External IP:" ascii
        $key_10 = "FileSystem:" ascii
        $key_11 = "FreeSpace:" ascii
        $key_12 = "FullName:" ascii
        $key_13 = "Gateway IP:" ascii
        $key_14 = "IPEnabled:" ascii
        $key_15 = "ISO Key:" ascii
        $key_16 = "Internal IP:" ascii
        $key_17 = "MACAddress:" ascii
        $key_18 = "Manufacturer:" ascii
        $key_19 = "MaxClockSpeed:" ascii
        $key_20 = "Model:" ascii
        $key_21 = "Name:" ascii
        $key_22 = "NumberOfCores:" ascii
        $key_23 = "OSArchitecture:" ascii
        $key_24 = "Product:" ascii
        $key_25 = "ReleaseDate:" ascii
        $key_26 = "SMBIOSBIOSVersion:" ascii
        $key_27 = "SerialNumber:" ascii
        $key_28 = "Size:" ascii
        $key_29 = "Speed:" ascii
        $key_30 = "Version:" ascii
        $key_31 = "Worker:" ascii

    condition:
        all of ($key_*)
}

rule Arcane_cystack_8ef32c6e
{
    meta:
        family = "Arcane"
        fingerprint_id = "cystack_8ef32c6e"

    strings:
        $key_0 = "AdapterRAM:" ascii
        $key_1 = "Capacity:" ascii
        $key_2 = "Caption:" ascii
        $key_3 = "ChassisTypes:" ascii
        $key_4 = "Default:" ascii
        $key_5 = "Description:" ascii
        $key_6 = "DeviceID:" ascii
        $key_7 = "External IP:" ascii
        $key_8 = "FileSystem:" ascii
        $key_9 = "FreeSpace:" ascii
        $key_10 = "FullName:" ascii
        $key_11 = "Gateway IP:" ascii
        $key_12 = "IPEnabled:" ascii
        $key_13 = "MACAddress:" ascii
        $key_14 = "Manufacturer:" ascii
        $key_15 = "MaxClockSpeed:" ascii
        $key_16 = "Model:" ascii
        $key_17 = "Name:" ascii
        $key_18 = "NumberOfCores:" ascii
        $key_19 = "OSArchitecture:" ascii
        $key_20 = "Product:" ascii
        $key_21 = "ReleaseDate:" ascii
        $key_22 = "SMBIOSBIOSVersion:" ascii
        $key_23 = "SerialNumber:" ascii
        $key_24 = "Size:" ascii
        $key_25 = "Speed:" ascii
        $key_26 = "Version:" ascii

    condition:
        all of ($key_*)
}

rule Arcane_cystack_a4de6217
{
    meta:
        family = "Arcane"
        fingerprint_id = "cystack_a4de6217"

    strings:
        $key_0 = "AdapterRAM:" ascii
        $key_1 = "Capacity:" ascii
        $key_2 = "Caption:" ascii
        $key_3 = "ChassisTypes:" ascii
        $key_4 = "Clipboard:" ascii
        $key_5 = "Description:" ascii
        $key_6 = "DeviceID:" ascii
        $key_7 = "External IP:" ascii
        $key_8 = "FileSystem:" ascii
        $key_9 = "FreeSpace:" ascii
        $key_10 = "FullName:" ascii
        $key_11 = "Gateway IP:" ascii
        $key_12 = "IPEnabled:" ascii
        $key_13 = "ISO Key:" ascii
        $key_14 = "Internal IP:" ascii
        $key_15 = "MACAddress:" ascii
        $key_16 = "Manufacturer:" ascii
        $key_17 = "MaxClockSpeed:" ascii
        $key_18 = "Model:" ascii
        $key_19 = "Name:" ascii
        $key_20 = "NumberOfCores:" ascii
        $key_21 = "OSArchitecture:" ascii
        $key_22 = "Product:" ascii
        $key_23 = "ReleaseDate:" ascii
        $key_24 = "SMBIOSBIOSVersion:" ascii
        $key_25 = "SerialNumber:" ascii
        $key_26 = "Size:" ascii
        $key_27 = "Speed:" ascii
        $key_28 = "Version:" ascii
        $key_29 = "Worker:" ascii

    condition:
        all of ($key_*)
}

rule Arcane_cystack_ac63f435
{
    meta:
        family = "Arcane"
        fingerprint_id = "cystack_ac63f435"

    strings:
        $key_0 = "AdapterRAM:" ascii
        $key_1 = "Capacity:" ascii
        $key_2 = "Caption:" ascii
        $key_3 = "ChassisTypes:" ascii
        $key_4 = "Default:" ascii
        $key_5 = "Description:" ascii
        $key_6 = "DeviceID:" ascii
        $key_7 = "FileSystem:" ascii
        $key_8 = "FreeSpace:" ascii
        $key_9 = "FullName:" ascii
        $key_10 = "IPEnabled:" ascii
        $key_11 = "Internal IP:" ascii
        $key_12 = "MACAddress:" ascii
        $key_13 = "Manufacturer:" ascii
        $key_14 = "MaxClockSpeed:" ascii
        $key_15 = "Model:" ascii
        $key_16 = "Name:" ascii
        $key_17 = "NumberOfCores:" ascii
        $key_18 = "OSArchitecture:" ascii
        $key_19 = "Product:" ascii
        $key_20 = "ReleaseDate:" ascii
        $key_21 = "SMBIOSBIOSVersion:" ascii
        $key_22 = "SerialNumber:" ascii
        $key_23 = "Size:" ascii
        $key_24 = "Speed:" ascii
        $key_25 = "Version:" ascii

    condition:
        all of ($key_*)
}

rule Arcane_cystack_b4076b3a
{
    meta:
        family = "Arcane"
        fingerprint_id = "cystack_b4076b3a"

    strings:
        $key_0 = "AdapterRAM:" ascii
        $key_1 = "Capacity:" ascii
        $key_2 = "Caption:" ascii
        $key_3 = "ChassisTypes:" ascii
        $key_4 = "Clipboard:" ascii
        $key_5 = "Date Install:" ascii
        $key_6 = "Description:" ascii
        $key_7 = "DeviceID:" ascii
        $key_8 = "External IP:" ascii
        $key_9 = "FileSystem:" ascii
        $key_10 = "FreeSpace:" ascii
        $key_11 = "FullName:" ascii
        $key_12 = "Gateway IP:" ascii
        $key_13 = "IPEnabled:" ascii
        $key_14 = "Internal IP:" ascii
        $key_15 = "MACAddress:" ascii
        $key_16 = "Manufacturer:" ascii
        $key_17 = "MaxClockSpeed:" ascii
        $key_18 = "Model:" ascii
        $key_19 = "Name:" ascii
        $key_20 = "NumberOfCores:" ascii
        $key_21 = "OSArchitecture:" ascii
        $key_22 = "Product:" ascii
        $key_23 = "ReleaseDate:" ascii
        $key_24 = "SMBIOSBIOSVersion:" ascii
        $key_25 = "SerialNumber:" ascii
        $key_26 = "Size:" ascii
        $key_27 = "Speed:" ascii
        $key_28 = "Version:" ascii
        $key_29 = "Worker:" ascii

    condition:
        all of ($key_*)
}

rule Arcane_cystack_bcbae85e
{
    meta:
        family = "Arcane"
        fingerprint_id = "cystack_bcbae85e"

    strings:
        $key_0 = "AdapterRAM:" ascii
        $key_1 = "Capacity:" ascii
        $key_2 = "Caption:" ascii
        $key_3 = "ChassisTypes:" ascii
        $key_4 = "Date Install:" ascii
        $key_5 = "Default:" ascii
        $key_6 = "Description:" ascii
        $key_7 = "DeviceID:" ascii
        $key_8 = "FileSystem:" ascii
        $key_9 = "FreeSpace:" ascii
        $key_10 = "FullName:" ascii
        $key_11 = "Gateway IP:" ascii
        $key_12 = "IPEnabled:" ascii
        $key_13 = "Internal IP:" ascii
        $key_14 = "MACAddress:" ascii
        $key_15 = "Manufacturer:" ascii
        $key_16 = "MaxClockSpeed:" ascii
        $key_17 = "Model:" ascii
        $key_18 = "Name:" ascii
        $key_19 = "NumberOfCores:" ascii
        $key_20 = "OSArchitecture:" ascii
        $key_21 = "Product:" ascii
        $key_22 = "ReleaseDate:" ascii
        $key_23 = "SMBIOSBIOSVersion:" ascii
        $key_24 = "SerialNumber:" ascii
        $key_25 = "Size:" ascii
        $key_26 = "Speed:" ascii
        $key_27 = "Version:" ascii
        $key_28 = "Worker:" ascii

    condition:
        all of ($key_*)
}

rule Arcane_cystack_bdbe703a
{
    meta:
        family = "Arcane"
        fingerprint_id = "cystack_bdbe703a"

    strings:
        $key_0 = "AdapterRAM:" ascii
        $key_1 = "Annex 2a:" ascii
        $key_2 = "BatteryStatus:" ascii
        $key_3 = "Capacity:" ascii
        $key_4 = "Caption:" ascii
        $key_5 = "ChassisTypes:" ascii
        $key_6 = "Clipboard:" ascii
        $key_7 = "Date Install:" ascii
        $key_8 = "Default:" ascii
        $key_9 = "Description:" ascii
        $key_10 = "DeviceID:" ascii
        $key_11 = "EstimatedChargeRemaining:" ascii
        $key_12 = "External IP:" ascii
        $key_13 = "FileSystem:" ascii
        $key_14 = "FreeSpace:" ascii
        $key_15 = "FullName:" ascii
        $key_16 = "Gateway IP:" ascii
        $key_17 = "IPEnabled:" ascii
        $key_18 = "Internal IP:" ascii
        $key_19 = "MACAddress:" ascii
        $key_20 = "Manufacturer:" ascii
        $key_21 = "MaxClockSpeed:" ascii
        $key_22 = "Model:" ascii
        $key_23 = "Name:" ascii
        $key_24 = "NumberOfCores:" ascii
        $key_25 = "OSArchitecture:" ascii
        $key_26 = "Product:" ascii
        $key_27 = "ReleaseDate:" ascii
        $key_28 = "SMBIOSBIOSVersion:" ascii
        $key_29 = "SerialNumber:" ascii
        $key_30 = "Size:" ascii
        $key_31 = "Speed:" ascii
        $key_32 = "Version:" ascii
        $key_33 = "Worker:" ascii

    condition:
        all of ($key_*)
}

rule Arcane_cystack_c003336d
{
    meta:
        family = "Arcane"
        fingerprint_id = "cystack_c003336d"

    strings:
        $key_0 = "AdapterRAM:" ascii
        $key_1 = "Capacity:" ascii
        $key_2 = "Caption:" ascii
        $key_3 = "ChassisTypes:" ascii
        $key_4 = "Description:" ascii
        $key_5 = "DeviceID:" ascii
        $key_6 = "FileSystem:" ascii
        $key_7 = "FreeSpace:" ascii
        $key_8 = "FullName:" ascii
        $key_9 = "IPEnabled:" ascii
        $key_10 = "Internal IP:" ascii
        $key_11 = "MACAddress:" ascii
        $key_12 = "Manufacturer:" ascii
        $key_13 = "MaxClockSpeed:" ascii
        $key_14 = "Model:" ascii
        $key_15 = "Name:" ascii
        $key_16 = "NumberOfCores:" ascii
        $key_17 = "OSArchitecture:" ascii
        $key_18 = "Product:" ascii
        $key_19 = "ReleaseDate:" ascii
        $key_20 = "SMBIOSBIOSVersion:" ascii
        $key_21 = "SerialNumber:" ascii
        $key_22 = "Size:" ascii
        $key_23 = "Speed:" ascii
        $key_24 = "Version:" ascii

    condition:
        all of ($key_*)
}

rule Arcane_cystack_d061dd05
{
    meta:
        family = "Arcane"
        fingerprint_id = "cystack_d061dd05"

    strings:
        $key_0 = "AdapterRAM:" ascii
        $key_1 = "Capacity:" ascii
        $key_2 = "Caption:" ascii
        $key_3 = "ChassisTypes:" ascii
        $key_4 = "Clipboard:" ascii
        $key_5 = "Date Install:" ascii
        $key_6 = "Default:" ascii
        $key_7 = "Description:" ascii
        $key_8 = "DeviceID:" ascii
        $key_9 = "External IP:" ascii
        $key_10 = "FileSystem:" ascii
        $key_11 = "FreeSpace:" ascii
        $key_12 = "FullName:" ascii
        $key_13 = "Gateway IP:" ascii
        $key_14 = "IPEnabled:" ascii
        $key_15 = "ISO Key:" ascii
        $key_16 = "Internal IP:" ascii
        $key_17 = "MACAddress:" ascii
        $key_18 = "Manufacturer:" ascii
        $key_19 = "MaxClockSpeed:" ascii
        $key_20 = "Model:" ascii
        $key_21 = "Name:" ascii
        $key_22 = "NumberOfCores:" ascii
        $key_23 = "OSArchitecture:" ascii
        $key_24 = "Product:" ascii
        $key_25 = "ReleaseDate:" ascii
        $key_26 = "SMBIOSBIOSVersion:" ascii
        $key_27 = "SerialNumber:" ascii
        $key_28 = "Size:" ascii
        $key_29 = "Speed:" ascii
        $key_30 = "Version:" ascii

    condition:
        all of ($key_*)
}

rule Arcane_cystack_daec173d
{
    meta:
        family = "Arcane"
        fingerprint_id = "cystack_daec173d"

    strings:
        $key_0 = "AdapterRAM:" ascii
        $key_1 = "Capacity:" ascii
        $key_2 = "Caption:" ascii
        $key_3 = "ChassisTypes:" ascii
        $key_4 = "Clipboard:" ascii
        $key_5 = "Date Install:" ascii
        $key_6 = "Default:" ascii
        $key_7 = "Description:" ascii
        $key_8 = "DeviceID:" ascii
        $key_9 = "External IP:" ascii
        $key_10 = "FileSystem:" ascii
        $key_11 = "FreeSpace:" ascii
        $key_12 = "FullName:" ascii
        $key_13 = "Gateway IP:" ascii
        $key_14 = "IPEnabled:" ascii
        $key_15 = "Internal IP:" ascii
        $key_16 = "MACAddress:" ascii
        $key_17 = "Manufacturer:" ascii
        $key_18 = "MaxClockSpeed:" ascii
        $key_19 = "Model:" ascii
        $key_20 = "Name:" ascii
        $key_21 = "NumberOfCores:" ascii
        $key_22 = "OSArchitecture:" ascii
        $key_23 = "Product:" ascii
        $key_24 = "ReleaseDate:" ascii
        $key_25 = "SMBIOSBIOSVersion:" ascii
        $key_26 = "SerialNumber:" ascii
        $key_27 = "Size:" ascii
        $key_28 = "Speed:" ascii
        $key_29 = "Version:" ascii
        $key_30 = "Worker:" ascii

    condition:
        all of ($key_*)
}

rule Arcane_cystack_ddbcb63f
{
    meta:
        family = "Arcane"
        fingerprint_id = "cystack_ddbcb63f"

    strings:
        $key_0 = "AdapterRAM:" ascii
        $key_1 = "BatteryStatus:" ascii
        $key_2 = "Capacity:" ascii
        $key_3 = "Caption:" ascii
        $key_4 = "ChassisTypes:" ascii
        $key_5 = "Clipboard:" ascii
        $key_6 = "Date Install:" ascii
        $key_7 = "Description:" ascii
        $key_8 = "DeviceID:" ascii
        $key_9 = "EstimatedChargeRemaining:" ascii
        $key_10 = "External IP:" ascii
        $key_11 = "FileSystem:" ascii
        $key_12 = "FreeSpace:" ascii
        $key_13 = "FullName:" ascii
        $key_14 = "Gateway IP:" ascii
        $key_15 = "IPEnabled:" ascii
        $key_16 = "Internal IP:" ascii
        $key_17 = "MACAddress:" ascii
        $key_18 = "Manufacturer:" ascii
        $key_19 = "MaxClockSpeed:" ascii
        $key_20 = "Model:" ascii
        $key_21 = "Name:" ascii
        $key_22 = "NumberOfCores:" ascii
        $key_23 = "OSArchitecture:" ascii
        $key_24 = "Product:" ascii
        $key_25 = "ReleaseDate:" ascii
        $key_26 = "SMBIOSBIOSVersion:" ascii
        $key_27 = "SerialNumber:" ascii
        $key_28 = "Size:" ascii
        $key_29 = "Speed:" ascii
        $key_30 = "Version:" ascii
        $key_31 = "Worker:" ascii

    condition:
        all of ($key_*)
}

rule Arcane_cystack_e1e902cd
{
    meta:
        family = "Arcane"
        fingerprint_id = "cystack_e1e902cd"

    strings:
        $key_0 = "AdapterRAM:" ascii
        $key_1 = "BatteryStatus:" ascii
        $key_2 = "Capacity:" ascii
        $key_3 = "Caption:" ascii
        $key_4 = "ChassisTypes:" ascii
        $key_5 = "Clipboard:" ascii
        $key_6 = "Date Install:" ascii
        $key_7 = "Default:" ascii
        $key_8 = "Description:" ascii
        $key_9 = "DeviceID:" ascii
        $key_10 = "EstimatedChargeRemaining:" ascii
        $key_11 = "External IP:" ascii
        $key_12 = "FileSystem:" ascii
        $key_13 = "FreeSpace:" ascii
        $key_14 = "FullName:" ascii
        $key_15 = "Gateway IP:" ascii
        $key_16 = "IPEnabled:" ascii
        $key_17 = "Internal IP:" ascii
        $key_18 = "MACAddress:" ascii
        $key_19 = "Manufacturer:" ascii
        $key_20 = "MaxClockSpeed:" ascii
        $key_21 = "Model:" ascii
        $key_22 = "Name:" ascii
        $key_23 = "NumberOfCores:" ascii
        $key_24 = "OSArchitecture:" ascii
        $key_25 = "Product:" ascii
        $key_26 = "ReleaseDate:" ascii
        $key_27 = "SMBIOSBIOSVersion:" ascii
        $key_28 = "SerialNumber:" ascii
        $key_29 = "Size:" ascii
        $key_30 = "Speed:" ascii
        $key_31 = "Version:" ascii
        $key_32 = "Worker:" ascii

    condition:
        all of ($key_*)
}
