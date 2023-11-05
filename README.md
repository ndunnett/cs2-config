# cs2-config
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
Copy `autoexec.cfg` to either of the following directories:

- `<steamlibrary>\steamapps\common\Counter-Strike Global Offensive\game\core\cfg`
- `<steamlibrary>\steamapps\common\Counter-Strike Global Offensive\game\csgo\cfg`

If you don't know the location of your steam library, it is installed to `C:\Program Files (x86)\Steam` by default.

## Launch options
No launch options set.

## In-game video settings
Starting from the "low" preset:

| Setting                          | Value                      |
|----------------------------------|----------------------------|
| Boost Player Contrast            | Enabled                   |
| Wait for Vertical Sync           | Disabled                   |
| Multisampling Anti-Aliasing Mode | 2X MSAA                    |
| Global Shadow Quality            | High                       |
| Model / Texture Detail           | Low                        |
| Texture Filtering Mode           | Bilinear                   |
| Shader Detail                    | Low                        |
| Particle Detail                  | Low                        |
| Ambient Occlusion                | Disabled                   |
| High Dynamic Range               | Performance                |
| FidelityFX Super Resolution      | Disabled (Highest Quality) |
| NVIDIA Reflex Low Latency        | Enabled                    |
