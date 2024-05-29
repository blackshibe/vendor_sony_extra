# Sony Extra Vendor Repository (Dolby Sound, 360 Reality Audio Upmix, Apps, Framework Libraries, etc.)

## DISCLAIMER
- All Dolby & Sony applications and blobs are owned by Dolby™ and Sony™.

## How to Include extra in your DT (Device Tree)?
- Inherit the extras repo (for your specific series) from your device.mk as shown
```
include vendor/sony/extra/Series/extra.mk
```

- Set Flags Accordingly in order to ship different modules of your choosing

|Flag|Description|
|:-:|:-:|
|`TARGET_SHIPS_SONY_FRAMEWORK `|`Ships libraries and permissions, needed for TARGET_SHIPS_SONY_APPS and all other flags/extras to work.`|
|`TARGET_SHIPS_SONY_CAMERA`|`Ships Sony's Camera Apps.`|
|`TARGET_SHIPS_SONY_APPS`|`Ships misc Sony Apps e.g. Music Pro etc.`|
|`TARGET_SHIPS_SOUND_ENHANCEMENT `|`Ships the needed blobs & apps for Audio Settings (Dolby Sound, 360 Reality Audio Upmix) to work.`|
|`TARGET_SUPPORTS_GAME_CONTROLLERS`|`Ships Sony's Game controller app and needed layouts for various controllers.`|
|`TARGET_SUPPORTS_XPERIA_STREAM `|`Ships Sony's "Xperia Stream" suite for the Xperia Stream gaming accessory which should work even on older Xperia 1's.`|