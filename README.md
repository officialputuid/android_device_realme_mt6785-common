Common tree for the Realme 6 (RMX2001, RMX2002 and RMX2003) - Realme 6S / Realme 6i India / Realme Narzo (RMX2002)
=================================================

The Realme 6 (codenamed _"RMX2001, RMX2002 and RMX2003"_) - Realme 6S / Realme 6i India / Realme Narzo (codenamed _"RMX2002"_) are mid-range smartphones from Realme.
They was released in March, June and July 2020.

This device tree commonize them as Realme G90T series (codenamed _"Realme G90T Series"_)

| Basic                   | Spec Sheet                                                                                                                     |
| -----------------------:|:------------------------------------------------------------------------------------------------------------------------------ |
| CPU                     | Octa-core                                                                                                                      |
| Chipset                 | Mediatek Helio G90T                                                                                                            |
| GPU                     | Mali-G76 MC4                                                                                                                   |
| Memory                  | 4/6/8 GB RAM                                                                                                                   |
| Shipped Android Version | 10.0                                                                                                                           |
| Storage                 | 64/128 GB                                                                                                                      |
| Battery                 | Non-removable Li-Po 4300 mAh battery                                                                                           |
| Display                 | 1080 x 2400 pixels, 20:9 ratio (~405 ppi density)                                                                              |
| Camera (Back)(Main)     | 64 MP, f/1.8, 26mm (wide), 1/1.72", 0.8µm, PDAF or 48 MP, f/2.0, 26mm (wide), 1/1.72", 0.8µm, PDAF                                                                                |
| Camera (Front)          | 16 MP, f/2.0, 26mm (wide), 1/3.06", 1.0µm                                                                                      |

## Device picture
![wasabi](https://cdn-files.kimovil.com/default/0004/34/thumb_333349_default_big.jpeg)

## Device Tree?
* https://github.com/officialputuid/android_device_realme_RMX2001
* https://github.com/officialputuid/android_device_realme_RMX2151

## Patch require for BOOT:
* https://github.com/SamarV-121/android_vendor_extra/blob/lineage-18.1/patches/external/selinux/0001-Revert-libsepol-Make-an-unknown-permission-an-error-.patch

## Patches require for IMS:
* https://github.com/SamarV-121/android_vendor_extra/blob/lineage-18.1/patches/frameworks/opt/net/wifi/0001-wifi-Add-StaState-API.patch
* https://github.com/SamarV-121/android_vendor_extra/blob/lineage-18.1/patches/frameworks/base/0008-WifiManager-Add-StaState-API.patch
* https://github.com/SamarV-121/android_vendor_extra/blob/lineage-18.1/patches/frameworks/opt/net/ims/0001-Partially-Revert-Remove-references-to-deprecated-dev.patch

## Maybe this is necessary?
* git clone https://github.com/PixelExperience/vendor_mediatek_ims.git -b [branch] vendor/mediatek/ims
* git clone https://github.com/PixelExperience/vendor_mediatek_interfaces.git -b [branch] vendor/mediatek/interfaces
* git clone https://github.com/officialputuid/android_packages_apps_RealmeParts.git -b [branch] packages/apps/RealmeParts
* git clone https://github.com/SamarV-121/android_kernel_realme_mt6785 -b [branch] kernel/realme/mt6785

## How to Patch?
* patch -p1 <*.patch

## Special Thanks to
* [@SamarV-121](https://github.com/SamarV-121/) - [@ashuk1109](https://github.com/ashuk1109) - [@ManshuTyagi](https://github.com/ManshuTyagi) - [@Uptownboys32](https://github.com/Uptownboys32)
* Realme 6/6i/6s/Narzo Community [@RM6Official](https://t.me/RM6Official) - [@realme6id](https://t.me/realme6id) - [@Realme-G90T-Series](https://github.com/Realme-G90T-Series)
