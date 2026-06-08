// YARA rules for CSAntiSandboxStealer.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule CSAntiSandboxStealer_cystack_a027ae7a
{
    meta:
        family = "CSAntiSandboxStealer"
        fingerprint_id = "cystack_a027ae7a"

    strings:
        $key_0 = "Anti-Sandbox:" ascii
        $key_1 = "Architecture:" ascii
        $key_2 = "Available RAM:" ascii
        $key_3 = "CPU Cores:" ascii
        $key_4 = "Disk Size:" ascii
        $key_5 = "Hostname:" ascii
        $key_6 = "Hypervisor Bit (CPUID):" ascii
        $key_7 = "IsDebuggerPresent:" ascii
        $key_8 = "Mode:" ascii
        $key_9 = "OS:" ascii
        $key_10 = "Process Count:" ascii
        $key_11 = "Processors:" ascii
        $key_12 = "RAM:" ascii
        $key_13 = "Recent Files:" ascii
        $key_14 = "Screen Resolution:" ascii
        $key_15 = "Sleep(100ms) actual:" ascii
        $key_16 = "System Uptime:" ascii
        $key_17 = "Total RAM:" ascii
        $key_18 = "Username:" ascii
        $key_19 = "Visible Windows:" ascii

    condition:
        all of ($key_*)
}
