# cs2-config
## My hardware
- CPU: AMD Ryzen 7 7800X3D
- Motherboard: ASUS ROG Strix X670E-I
- Memory: Corsair Vengeance 6000MHz CL30 DDR5 2x16GB
- GPU: NVIDIA RTX 3070 Ti Founders Edition

## Reset steam cloud configuration
Before completing your configuration, reset steam cloud to remove any residual configuration from CS:GO/CS2 being automatically applied and reset everything to complete default.

1. Disable steam cloud for CS2
    1. Right click CS2 in your library and click properties
    1. Under "Steam Cloud", deselect "Keep game saves in the Steam Cloud for Counter-Strike 2"
1. Go to your user data folder for CS2 at `C:\Program Files (x86)\Steam\userdata\<account>\730` and delete the contents
1. Launch and then close CS2
1. Re-enable steam cloud for CS2
1. Go to CS2 in your steam library and click the "File conflict" button under "cloud status"
1. Select "Local Save" and then click "Continue"

## Autoexec location
Download `autoexec.cfg`, modify values to your preference, then copy it to either of the following directories:

- `<steamlibrary>\steamapps\common\Counter-Strike Global Offensive\game\core\cfg`
- `<steamlibrary>\steamapps\common\Counter-Strike Global Offensive\game\csgo\cfg`

If you don't know the location of your steam library, it is installed to `C:\Program Files (x86)\Steam` by default.

## Launch options
`-threads 8 -high`

## In-game video settings
Resolution: 1280x960 (stretched)

Starting from the "low" preset:

| Setting                          | Value                      |
|----------------------------------|----------------------------|
| Boost Player Contrast            | Disabled                   |
| Wait for Vertical Sync           | Disabled                   |
| Multisampling Anti-Aliasing Mode | 4X MSAA                    |
| Global Shadow Quality            | Low                        |
| Model / Texture Detail           | Medium                     |
| Texture Filtering Mode           | Bilinear                   |
| Shader Detail                    | Low                        |
| Particle Detail                  | Low                        |
| Ambient Occlusion                | Disabled                   |
| High Dynamic Range               | Quality                    |
| FidelityFX Super Resolution      | Disabled (Highest Quality) |
| NVIDIA Reflex Low Latency        | Enabled                    |

## Shadow distance
To get shadows to render at distance when set to low, open your `cs2_video.txt` file in `C:\Program Files (x86)\Steam\userdata\<account>\730\local\cfg` and find the following lines:

```
	"setting.csm_viewmodel_shadows"		"0"
	"setting.csm_max_shadow_dist_override"		"240"
```

Change them to:

```
	"setting.csm_viewmodel_shadows"		"1"
	"setting.csm_max_shadow_dist_override"		"720"
```

> [!WARNING]  
> Changing any video settings in game will reset these values.

## NVIDIA Image Sharpening
Download `nvcpl_sharpening.reg` and merge it. This unlocks a setting in NVIDIA Control Panel 3D settings to enable the old sharpening filter through drivers.

| Setting                          | Value                      |
|----------------------------------|----------------------------|
| Sharpen                          | 0.50                       |
| Ignore film grain                | 0.17                       |

## NVIDIA Profile Inspector ([website](https://nvidiaprofileinspector.com))
Editing the "Counter-strike 2" profile, starting from default settings:

| Setting                          | Value                      |
|----------------------------------|----------------------------|
| Maximum Pre-Rendered Frames      | 1                          |
| Ultra Low Latency - CPL State    | Ultra                      |
| Ultra Low Latency - Enabled      | On                         |
| Vertical Sync                    | Force off                  |
| Anisotropic Filter - Sample Optimization | On                 |
| Texture Filtering - Quality      | High performance           |
| Texture Filtering - Trilinear Optimization | On               |
| Ansel - Enabled                  | Off                        |
| CUDA - Force P2 State            | Off                        |
| Power Management - Mode          | Prefer maximum performance |
| rBAR - Feature                   | Enabled                    |
| rBAR - Options                   | `0x00000001` (Battlefield V, ...) |
| rBAR - Size Limit                | `0x0000000040000000` (Battlefield V, ...) |
| Shadercache - Cachesize          | Unlimited                  |
| Threaded Optimization            | Off                        |
| Memory Allocation Policy         | `0x00000001` (...MODERATE_PRE_ALLOCATION) |

Don't forget to click "Apply changes".
