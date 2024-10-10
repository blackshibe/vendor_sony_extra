# Sony Xperia Vendor Extra Repository

## DISCLAIMER
- All Dolby & Sony applications and blobs are owned by Dolby™ and Sony™.

## How to Include extra in your DT (Device Tree)?
- Inherit the extras repo (for your specific series) in your device.mk file with as shown:
```
$(call inherit-product, vendor/sony/extra/Series/extra.mk)
```
- Set flags accordingly in order to ship different modules of your choosing. Some flags are not supported for some devices. Check the makefiles to make sure.

|Flag|Description|
|:-:|:-:|
|`TARGET_SHIPS_SONY_FRAMEWORK`|`Ships libraries and permissions, needed for TARGET_SHIPS_SONY_APPS and all other flags/extras to work`|
|`TARGET_SHIPS_SONY_CAMERA`|`Ships the Sony Xperia™ camera apps for taking photos or videos and their related addons`|
|`TARGET_SHIPS_SONY_APPS`|`Ships some miscellaneous Sony apps`|
|`TARGET_SHIPS_SOUND_ENHANCEMENT`|`Ships the needed blobs & apps for Audio Settings (Dolby Sound, 360 Reality Audio Upmix) to work`|
|`TARGET_SUPPORTS_GAME_CONTROLLERS`|`Ships Sony's Game controller app and needed layouts for various controllers`|
|`TARGET_SUPPORTS_XPERIA_STREAM`|`Ships Sony's "Xperia Stream" suite for the Xperia Stream gaming accessory which should work on (Xperia 1 III, IV and V)`|
|`TARGET_SHIPS_XPERIA_LWP`|`Ships the Live Wallpaper from the latest Xperia flagship`|
|`TARGET_SHIPS_XPERIA_LWP_NEWEST`|`Ships all Xperia Live Wallpapers`|