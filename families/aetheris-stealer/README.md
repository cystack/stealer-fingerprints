# Aetheris Stealer

Aetheris Stealer is a Telegram-distributed info-stealer observed
inside `@BRADMAX`-style aggregator packs. Its `Information.txt`
opens with an ASCII-art banner spelling AETHERIS, then a
`Developer @sexyweekly` watermark, then five bracket-titled
sections.

**Also known as:** `Aetheris Stealer`

## Targets

- Browser saved credentials and cookies
- Crypto wallet extensions and clients
- System hardware and locale inventory

## Variants

### `cystack_026d1c92`

**Field keys:**
`Clipboard`, `Hwid`, `Input ISO`, `Machine`, `Now`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```

                                          
 __  __           _                 
 \ \/ /___  _ __ (_)_   _ _ __ ___  
  \  // _ \| '__|| | | | | '_ ` _ \ 
  /  \ (_) | |   | | |_| | | | | | |
 /_/\_\___/|_|   |_|\__,_|_| |_| |_|
                                     
                               Developer @aesxor
[User Info]
User: Keith
Machine: DESKTOP-4ILVQFF
Now: 2026-03-15 <ip>
Input ISO: en
Hwid: <redacted>
Clipboard: Config.Consumables = {
    eat = {
        ['sandwich'] = math.random(35, 54),
        ['tosti'] = math.random(40, 50),
        ['twerks_candy'] = math.random(35, 54),
        ['snikkel_candy'] = math.random(40, 50),
        ['bs_bleeder'] = math.random(60, 80),
        ['bs_chickenwrap'] = math.random(60, 80),
        ['bs_creampie'] = math.random(25, 50),
        ['bs_fries'] = math.random(50, 70),
        ['bs_heartstopper'] = math.random(90, 100),
        ['bs_meatfree'] = math.random(50, 70),
        ['bs_moneyshot'] = math.random(60, 80),
        ['bs_nuggets'] = math.random(60, 80),
        ['bs_onionrings'] = math.random(50, 70),
        ['bs_rimjob'] = math.random(25, 50),
        ['bs_torpedo'] = math.random(60, 80),
        ['bs_chocolateshake'] = math.random(5, 15),
        ['bs_cookiesncreamshake'] = math.random(5, 15),
        ['bs_strawberryshake'] = math.random(5, 15),
        ['bs_vanillashake'] = math.random(5, 15),
        
        -- Advanced food items
        chocpudding = { emote = "burger", canRun = false, time = {5000, 6000}, stress = {2,4}, heal = 0, armor = 0, type = "food", stats = { hunger = {20,30} } },
        popdonut = { emote = "donut", canRun = false, time = {5000, 6000}, stress = {2,4}, heal = 0, armor = 0, type = "food", stats = { hunger = {20,30} } },
        popicecream = { emote = "burger", canRun = false, time = {5000, 6000}, stress = {2,4}, heal = 0, armor = 0, type = "food", stats = { hunger = {20,30} } },
        chocolate = { emote = "burger", canRun = false, time = {5000, 6000}, stress = {2,4}, heal = 0, armor = 0, type = "food", stats = { hunger = {20,30} } },
        baconeggs = { emote = "burger", canRun = false, time = {5000, 6000}, stress = {2,4}, heal = 0, armor = 0, type = "food", stats = { hunger = {20,30} } },
        bltsandwich = { emote = "sandwich", canRun = false, time = {5000,6000}, stress = {2,4}, heal = 0, armor = 0, type = "food", stats = { hunger = {20,30} } },

        food = {
            ad_cheesepepperonipizza = {
                Hunger = 35, Thirst = 0, Stress = -5,
                Log = "You ate a Cheese Pepperoni Pizza",
                Remove = true, RemoveItems = {{item = "ad_cheesepepperonipizza", count = 1}},
                Add = false, AddItems = {},
                ProgressBar = "Eating Cheese Pepperoni Pizza...",
                duration = 5000,
                animation = {
                    emote = {
                        enabled = true,
                        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
                        prop = { model = 'prop_pizza_slice_01', bone = 18905, pos = vec3(0.13,0.05,0.02), rot = vec3(-50.0,16.0,60.0) }
                    }
                }
            },
            ad_cheesymexicanpizza = {
                Hunger = 35, Thirst = 0, Stress = -5,
                Log = "You ate a Cheesy Mexican Pizza",
                Remove = true, RemoveItems = {{item = "ad_cheesymexicanpizza", count = 1}},
                Add = false, AddItems = {},
                ProgressBar = "Eating Cheesy Mexican Pizza...",
                duration = 5000,
                animation = {
                    emote = {
                        enabled = true,
                        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
                        prop = { model = 'prop_pizza_slice_01', bone = 18905, pos = vec3(0.13,0.05,0.02), rot = vec3(-50.0,16.0,60.0) }
                    }
                }
            },
            ["beef-taco"] = math.random(25, 35),
            ["chicken-burrito"] = math.random(25, 35),
            ["quesadilla"] = math.random(25, 35),
            ["nachos"] = math.random(25, 35)
        }
    },

    drink = {
        ['water_bottle'] = math.random(35,54),
        ['kurkakola'] = math.random(35,54),
        ['bs_coffee'] = math.random(50,70),
        ['bs_ecola'] = math.random(60,80),
        ['bs_ecola1'] = math.random(60,80),
        ['bs_sprunk'] = math.random(60,80),
        ['bs_orangotang'] = math.random(60,80),
        ['bs_chocolateshake'] = math.random(25,50),

        ecola = { emote = "ecola", canRun = false, time = {5000,6000}, stress = {2,4}, heal = 0, armor = 0, type = "drink", stats = { thirst = {20,30} } },
        sprunk = { emote = "sprunk", canRun = false, time = {5000,6000}, stress = {2,4}, heal = 0, armor = 0, type = "drink", stats = { thirst = {20,30} } },
        coffee = { emote = "coffee", canRun = false, time = {5000,6000}, stress = 0, heal = 0, armor = 0, type = "drink", stats = { time = 10000, thirst = {10,15} } },
        ad_coke = { emote = "ecola", canRun = false, time = {5000,6000}, stress = {2,4}, heal = 0, armor = 0, type = "drink", stats = { thirst = {30,35} } },
        ad_fanta = { emote = "sprunk", canRun = false, time = {5000,6000}, stress = {2,4}, heal = 0, armor = 0, type = "drink", stats = { thirst = {30,35} } },

        ['coke-soda'] = math.random(20,30),
        ['fanta'] = math.random(20,30),
    },

    alcohol = {
        ['whiskey'] = math.random(20, 30),
        ['beer'] = math.random(30, 40),
        ['vodka'] = math.random(20, 40),
    }
}

[Network]
External IP: <redacted>
Internal IP: <ip>
Default Gateway: <ip>

[System]
OS Product: Windows 10 Pro 2009
OS Build: 19045
OS Arch: x64
CPU Name: Intel(R) Xeon(R) CPU E3-1230 v5 @ 3.40GHz
Logical Cores: 8
RAM Total (MB): 16313
RAM Available (MB): 8985

[Drives]
C: Fixed FS:NTFS Size:930GB Free:39GB
E: Fixed FS:exFAT Size:3906GB Free:3454GB

[GPU]
NVIDIA GeForce GTX 1050 Ti

[Basic]
User Domain: DESKTOP-4ILVQFF
CLR Version: 4.0.30319.42000
```

### `cystack_2052a4d3`

**Field keys:**
`CLR Version`, `CPU Name`, `Clipboard`, `Default Gateway`, `External IP`, `Hwid`, `Input ISO`, `Internal IP`, `Logical Cores`, `Machine`, `Now`, `OS Arch`, `OS Build`, `OS Product`, `RAM Available (MB)`, `RAM Total (MB)`, `User`, `User Domain`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```

                                          
 __  __           _                 
 \ \/ /___  _ __ (_)_   _ _ __ ___  
  \  // _ \| '__|| | | | | '_ ` _ \ 
  /  \ (_) | |   | | |_| | | | | | |
 /_/\_\___/|_|   |_|\__,_|_| |_| |_|
                                     
                               Developer @aesxor
[User Info]
User: lEvi_WiNdows10
Machine: DESKTOP-A1L4J9S
Now: 2026-03-17 <ip>
Input ISO: en
Hwid: <redacted>
Clipboard: adb shell locksettings clear --old <current_credential>

[Network]
External IP: <redacted>
Internal IP: <ip>
Default Gateway: <ip>

[System]
OS Product: Windows 10 Pro 2009
OS Build: 19045
OS Arch: x64
CPU Name: Intel(R) Core(TM) i7-4870HQ CPU @ 2.50GHz
Logical Cores: 8
RAM Total (MB): 16260
RAM Available (MB): 9121

[Drives]
C: Fixed FS:NTFS Size:327GB Free:68GB

[GPU]
AMD Radeon R9 M370X

[Basic]
User Domain: DESKTOP-A1L4J9S
CLR Version: 4.0.30319.42000
```

### `cystack_30092aaa`

**Field keys:**
`CLR Version`, `User Domain`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
[GPU]
Intel(R) UHD Graphics 630

[Basic]
User Domain: DESHAWNSPC
CLR Version: 4.0.30319.42000
```

### `cystack_f9f01b3a`

**Field keys:**
`CPU Name`, `Hwid`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
***********************************************
*                                             *
*   ____  _____ ____  _     ___ _   _ _____   *
*  |  _ \| ____|  _ \| |   |_ _| \ | | ____|  *
*  | |_) |  _| | | | | |    | ||  \| |  _|    *
*  |  _ <| |___| |_| | |___ | || |\  | |___   *
*  |_| \_|_____|____/|_____|___|_| \_|_____|  *
*                                             *
*                                             *
***********************************************
*          New subscribers here:              *
*          <url>               *
*          <url>               *
*          <url>               *
***********************************************

Hwid: <redacted>
CPU Name: Intel(R) Core(TM) i7-14700K
```

## Detection

The AETHERIS ASCII-art banner combined with the
`Developer @sexyweekly` watermark is the cleanest fingerprint.
Either alone is enough to claim, but presence of both gives
highest confidence.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## References

- @sexyweekly
