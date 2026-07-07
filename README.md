# Device Common — Samsung Exynos 850 (s5e3830)

Common device tree for Samsung devices using the Exynos 850 SoC.

## Devices
- SM-A127F/DS (Galaxy A12s / A12 Nacho) — `a12s`

## Usage
In your device `BoardConfig.mk`:
```makefile
include device/samsung/exynos850-common/BoardConfigCommon.mk
```
In your `device.mk`:
```makefile
$(call inherit-product, device/samsung/exynos850-common/exynos850-common.mk)
```
