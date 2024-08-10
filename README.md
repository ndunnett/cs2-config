# cs2-config
## My hardware
- CPU: AMD Ryzen 7 7800X3D
- Motherboard: ASUS ROG Strix X670E-I
- Memory: Corsair Vengeance 6000MHz CL30 DDR5 2x16GB
- GPU: ASUS TUF RTX 4080 SUPER OC Edition
- NVIDIA Driver: 560.81 DCH (installed using [NVCleanstall](https://www.techpowerup.com/nvcleanstall/))

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
Download [autoexec.cfg](/autoexec.cfg), modify values to your preference, then copy it to either of the following directories:

- `<steamlibrary>\steamapps\common\Counter-Strike Global Offensive\game\core\cfg`
- `<steamlibrary>\steamapps\common\Counter-Strike Global Offensive\game\csgo\cfg`

If you don't know the location of your steam library, it is installed to `C:\Program Files (x86)\Steam` by default.

## Launch options
`-threads 8 -high`

## In-game video settings
Resolution: 1440x1080 (stretched)

Starting from the "low" preset:

| Setting                          | Value                      |
|----------------------------------|----------------------------|
| Boost Player Contrast            | Disabled                   |
| V-Sync                           | Enabled                    |
| NVIDIA G-Sync                    | Enabled                    |
| NVIDIA Reflex Low Latency        | Enabled                    |
| Multisampling Anti-Aliasing Mode | 2X MSAA                    |
| Global Shadow Quality            | Medium                     |
| Dynamic Shadows                  | Sun only                   |
| Model / Texture Detail           | Medium                     |
| Texture Filtering Mode           | Bilinear                   |
| Shader Detail                    | Low                        |
| Particle Detail                  | Low                        |
| Ambient Occlusion                | Disabled                   |
| High Dynamic Range               | Quality                    |
| FidelityFX Super Resolution      | Disabled (Highest Quality) |

## Shadow distance
The method to change shadow rendering by modifying `cs2_video.txt` no longer works.

## NVIDIA Image Sharpening
This registry change replaces the "Image Scaling" setting in NVIDIA Control Panel 3D settings with "Image Sharpening" which applies the legacy sharpening filter that was available in old drivers with little to no performace cost. This removes blurriness and makes textures look more crisp, click on the images in the table below for comparison screenshots.

| Sharpening Off           |  Sharpening On          |
|:------------------------:|:-----------------------:|
| ![](/sharpening_off.png) | ![](/sharpening_on.png) |

1. Download [nvcpl_sharpening.reg](/nvcpl_sharpening.reg) and merge it
1. Enable it in NVIDIA Control Panel under "Image Sharpening" in "Manage 3D settings" or by applying the values through NVIDIA Profile Inspector in the next section of this page

> [!NOTE]
> If you have CS2 open you will need to restart it for this change to apply.

## NVIDIA Profile Inspector ([website](https://nvidiaprofileinspector.com))
Profile Inspector is an alternative to the "Manage 3D Settings" page in NVIDIA Control Panel for changing game profile settings. Once set, you can export/import profiles to make configuration from a clean install quicker and easier.

Editing the "Counter-strike 2" profile, starting from default settings:

| Setting                          | Value                      |
|----------------------------------|----------------------------|
| <div align="center">**2 - Sync and Refresh**</div> |          |
| Frame Rate Limiter V3            | 600 FPS                    |
| Maximum Pre-Rendered Frames      | 1                          |
| Ultra Low Latency - CPL State    | Ultra                      |
| Ultra Low Latency - Enabled      | On                         |
| <div align="center">**4 - Texture Filtering**</div> |         |
| Anisotropic Filter - Sample Optimization | On                 |
| Texture Filtering - Quality      | High performance           |
| <div align="center">**5 - Common**</div> |                    |
| Ansel - Enabled                  | Off                        |
| CUDA - Force P2 State            | Off                        |
| Power Management - Mode          | Prefer maximum performance |
| rBAR - Feature                   | Enabled                    |
| rBAR - Options                   | `0x00000001`               |
| rBAR - Size Limit                | `0x0000000040000000`       |
| Shadercache - Cachesize          | Unlimited                  |
| <div align="center">**Other**</div> |                         |
| Memory Allocation Policy         | `0x00000001` (...MODERATE_PRE_ALLOCATION) |
| <div align="center">**Unknown**</div> |                       |
| `0x002ED8CD` (Image Sharpening - sharpen) | `0x00000032`      |
| `0x002ED8CE` (Image Sharpening - ignore film grain) | `0x00000011` |
| `0x00598928` (Image Sharpening - enabled) | `0x00000001`      |
| `0x00598949` (Image Sharpening - enabled) | `0x0000000F`      |

Don't forget to click "Apply changes".
