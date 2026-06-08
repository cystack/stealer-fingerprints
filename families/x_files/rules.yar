// YARA rules for XFiles.
// Each rule fires on either a unique banner string or the full
// observed field-key set. Tune false-positive thresholds at use
// site, especially for variants relying on field combinations.

rule XFiles_cystack_0f754c78
{
    meta:
        family = "XFiles"
        fingerprint_id = "cystack_0f754c78"

    strings:
        $key_0 = "Computer Name:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Desktop Screenshot Taken:" ascii
        $key_3 = "GPU (Display Devices):" ascii
        $key_4 = "Hardware ID:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "Operating System:" ascii
        $key_7 = "RAM (Memory):" ascii
        $key_8 = "Screens:" ascii
        $key_9 = "Username:" ascii

    condition:
        all of ($key_*)
}

rule XFiles_cystack_1a8fdd10
{
    meta:
        family = "XFiles"
        fingerprint_id = "cystack_1a8fdd10"

    strings:
        $key_0 = "CPU (Processor):" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Desktop Screenshot Taken:" ascii
        $key_3 = "GPU (Display Devices):" ascii
        $key_4 = "Hardware ID:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "Operating System:" ascii
        $key_7 = "Operation ID:" ascii
        $key_8 = "RAM (Memory):" ascii
        $key_9 = "Screens:" ascii
        $key_10 = "Username:" ascii

    condition:
        all of ($key_*)
}

rule XFiles_cystack_4007d694
{
    meta:
        family = "XFiles"
        fingerprint_id = "cystack_4007d694"

    strings:
        $key_0 = "CPU (Processor):" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Desktop Screenshot Taken:" ascii
        $key_4 = "GPU (Display Devices):" ascii
        $key_5 = "Hardware ID:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Operating System:" ascii
        $key_8 = "RAM (Memory):" ascii
        $key_9 = "Screens:" ascii
        $key_10 = "Username:" ascii

    condition:
        all of ($key_*)
}

rule XFiles_cystack_534fb995
{
    meta:
        family = "XFiles"
        fingerprint_id = "cystack_534fb995"

    strings:
        $key_0 = "CPU (Processor):" ascii
        $key_1 = "Channel with contacts:" ascii
        $key_2 = "Computer Name:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Desktop Screenshot Taken:" ascii
        $key_5 = "GPU (Display Devices):" ascii
        $key_6 = "Hardware ID:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "Operating System:" ascii
        $key_9 = "Operation ID:" ascii
        $key_10 = "Processed parts:" ascii
        $key_11 = "RAM (Memory):" ascii
        $key_12 = "Screens:" ascii
        $key_13 = "Telegram:" ascii
        $key_14 = "Username:" ascii

    condition:
        all of ($key_*)
}

rule XFiles_cystack_7098e015
{
    meta:
        family = "XFiles"
        fingerprint_id = "cystack_7098e015"

    strings:
        $key_0 = "CPU (Processor):" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Desktop Screenshot Taken:" ascii
        $key_4 = "GPU (Display Devices):" ascii
        $key_5 = "Hardware ID:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Operating System:" ascii
        $key_8 = "Processed parts:" ascii
        $key_9 = "RAM (Memory):" ascii
        $key_10 = "Screens:" ascii
        $key_11 = "Username:" ascii

    condition:
        all of ($key_*)
}

rule XFiles_cystack_779697d2
{
    meta:
        family = "XFiles"
        fingerprint_id = "cystack_779697d2"

    strings:
        $key_0 = "CPU (Processor):" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Desktop Screenshot Taken:" ascii
        $key_4 = "GPU (Display Devices):" ascii
        $key_5 = "Hardware ID:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Operating System:" ascii
        $key_8 = "Operation ID:" ascii
        $key_9 = "RAM (Memory):" ascii
        $key_10 = "Screens:" ascii
        $key_11 = "Username:" ascii

    condition:
        all of ($key_*)
}

rule XFiles_cystack_9b8ee162
{
    meta:
        family = "XFiles"
        fingerprint_id = "cystack_9b8ee162"

    strings:
        $key_0 = "CPU (Processor):" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Desktop Screenshot Taken:" ascii
        $key_4 = "GPU (Display Devices):" ascii
        $key_5 = "Hardware ID:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Jabber:" ascii
        $key_8 = "Operating System:" ascii
        $key_9 = "Operation ID:" ascii
        $key_10 = "RAM (Memory):" ascii
        $key_11 = "Screens:" ascii
        $key_12 = "Telegram:" ascii
        $key_13 = "Username:" ascii

    condition:
        all of ($key_*)
}

rule XFiles_cystack_a4048dad
{
    meta:
        family = "XFiles"
        fingerprint_id = "cystack_a4048dad"

    strings:
        $key_0 = "CPU (Processor):" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Desktop Screenshot Taken:" ascii
        $key_3 = "GPU (Display Devices):" ascii
        $key_4 = "Hardware ID:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "Operating System:" ascii
        $key_7 = "Operation ID:" ascii
        $key_8 = "Processed parts:" ascii
        $key_9 = "RAM (Memory):" ascii
        $key_10 = "Screens:" ascii
        $key_11 = "Username:" ascii

    condition:
        all of ($key_*)
}

rule XFiles_cystack_c10789f1
{
    meta:
        family = "XFiles"
        fingerprint_id = "cystack_c10789f1"

    strings:
        $key_0 = "CPU (Processor):" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Desktop Screenshot Taken:" ascii
        $key_4 = "GPU (Display Devices):" ascii
        $key_5 = "Hardware ID:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Operating System:" ascii
        $key_8 = "Operation ID:" ascii
        $key_9 = "Processed parts:" ascii
        $key_10 = "RAM (Memory):" ascii
        $key_11 = "Screens:" ascii
        $key_12 = "Username:" ascii

    condition:
        all of ($key_*)
}

rule XFiles_cystack_f0d30fc2
{
    meta:
        family = "XFiles"
        fingerprint_id = "cystack_f0d30fc2"

    strings:
        $key_0 = "CPU (Processor):" ascii
        $key_1 = "Computer Name:" ascii
        $key_2 = "Country:" ascii
        $key_3 = "Desktop Screenshot Taken:" ascii
        $key_4 = "GPU (Display Devices):" ascii
        $key_5 = "Hardware ID:" ascii
        $key_6 = "IP:" ascii
        $key_7 = "Jabber:" ascii
        $key_8 = "Operating System:" ascii
        $key_9 = "Operation ID:" ascii
        $key_10 = "Processed parts:" ascii
        $key_11 = "RAM (Memory):" ascii
        $key_12 = "Screens:" ascii
        $key_13 = "Telegram:" ascii
        $key_14 = "Username:" ascii

    condition:
        all of ($key_*)
}

rule XFiles_cystack_fc2b93d4
{
    meta:
        family = "XFiles"
        fingerprint_id = "cystack_fc2b93d4"

    strings:
        $key_0 = "CPU (Processor):" ascii
        $key_1 = "Channel with contacts:" ascii
        $key_2 = "Computer Name:" ascii
        $key_3 = "Country:" ascii
        $key_4 = "Desktop Screenshot Taken:" ascii
        $key_5 = "GPU (Display Devices):" ascii
        $key_6 = "Hardware ID:" ascii
        $key_7 = "IP:" ascii
        $key_8 = "Operating System:" ascii
        $key_9 = "Operation ID:" ascii
        $key_10 = "RAM (Memory):" ascii
        $key_11 = "Screens:" ascii
        $key_12 = "Telegram:" ascii
        $key_13 = "Username:" ascii

    condition:
        all of ($key_*)
}

rule XFiles_cystack_fda4f08d
{
    meta:
        family = "XFiles"
        fingerprint_id = "cystack_fda4f08d"

    strings:
        $key_0 = "Computer Name:" ascii
        $key_1 = "Country:" ascii
        $key_2 = "Desktop Screenshot Taken:" ascii
        $key_3 = "GPU (Display Devices):" ascii
        $key_4 = "Hardware ID:" ascii
        $key_5 = "IP:" ascii
        $key_6 = "Operating System:" ascii
        $key_7 = "Processed parts:" ascii
        $key_8 = "RAM (Memory):" ascii
        $key_9 = "Screens:" ascii
        $key_10 = "Username:" ascii

    condition:
        all of ($key_*)
}
