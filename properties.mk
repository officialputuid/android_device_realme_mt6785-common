# Bionic
PRODUCT_PRODUCT_PROPERTIES += \
    ro.bionic.cpu_variant=cortex-a76 \
    ro.bionic.2nd_cpu_variant=cortex-a76

# Blurs
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.sf.blurs_are_expensive=1 \
    ro.surface_flinger.supports_background_blur=1

# Dalvik
PRODUCT_PRODUCT_PROPERTIES += \
    dalvik.vm.isa.arm.variant=cortex-a76 \
    dalvik.vm.isa.arm64.variant=cortex-a76

# Display
PRODUCT_PRODUCT_PROPERTIES += \
    ro.sf.lcd_density=420

# DRM
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    drm.service.enabled=true \
    ro.vendor.mtk_widevine_drm_l1_support=1

# Fingerprint
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    fingerprint.nocleanup=true

# IMS
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1

# LMKD
PRODUCT_PRODUCT_PROPERTIES += \
    ro.lmk.kill_timeout_ms=100 \
    ro.lmk.psi_complete_stall_ms=150 \
    ro.lmk.swap_free_low_percentage=20

# NFC
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.sys.nfc.aid_overflow=true \
    persist.sys.nfc.antenna_area=bottom \
    persist.sys.nfc.default=on \
    persist.sys.nfc.disPowerSave=1 \
    ro.product.cuptsm=OPPO|ESE|01|02

# Netflix
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.netflix.bsp_rev=MTK6785-18787-1

# OMX
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    debug.stagefright.ccodec=0 \
    debug.stagefright.omx_default_rank=0 \
    debug.stagefright.omx_default_rank.sw-audio=1

# Performance
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.mtk_perf_fast_start_win=1 \
    ro.mtk_perf_response_time=1 \
    ro.mtk_perf_simple_start_win=1

# Privapp permissions whitelisting
PRODUCT_PRODUCT_PROPERTIES += \
    ro.control_privapp_permissions=log

# SoC
PRODUCT_PROPERTY_OVERRIDES += \
    ro.soc.manufacturer=MediaTek \
    ro.soc.model=MT6785

# Supported AOSP Feature
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.support_one_handed_mode=true

# Surfaceflinger
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    debug.sf.latch_unsignaled=1 \
    ro.surface_flinger.has_HDR_display=true \
    ro.surface_flinger.has_wide_color_display=true \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
    ro.surface_flinger.running_without_sync_framework=true \
    ro.surface_flinger.vsync_event_phase_offset_ns=2000000 \
    ro.surface_flinger.vsync_sf_event_phase_offset_ns=6000000

# ZRAM
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.zram.first_wb_delay_mins=1440 \
    ro.zram.mark_idle_delay_mins=60 \
    ro.zram.periodic_wb_delay_hours=24

# Zygote
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.device_config.runtime_native.usap_pool_enabled=true
