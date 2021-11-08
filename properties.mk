# Audio
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    aaudio.mmap_exclusive_policy=2 \
    aaudio.mmap_policy=2 \
    ro.vendor.mtk_audio_alac_support=1 \
    ro.vendor.mtk_audio_ape_support=1 \
    ro.vendor.mtk_audio_tuning_tool_ver=V2.2 \
    ro.vendor.mtk_besloudness_support=1 \
    ro.vendor.mtk_hifiaudio_support=1

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

# Dex2oat
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    dalvik.vm.dex2oat64.enabled=true \
    dalvik.vm.image-dex2oat-filter=quicken \
    dalvik.vm.image-dex2oat-threads=8 \
    dalvik.vm.image-dex2oat-cpu-set=0,1,2,3,4,5,6,7 \
    dalvik.vm.dex2oat-filter=quicken \
    dalvik.vm.dex2oat-threads=8 \
    dalvik.vm.dex2oat-cpu-set=0,1,2,3,4,5,6,7 \
    dalvik.vm.boot-dex2oat-threads=8 \
    dalvik.vm.boot-dex2oat-cpu-set=0,1,2,3,4,5,6,7

# Display
PRODUCT_PRODUCT_PROPERTIES += \
    ro.sf.lcd_density=420

# DRM
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    drm.service.enabled=true \
    ro.vendor.mtk_widevine_drm_l1_support=1

# IMS
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1 \
    persist.vendor.ims_support=1 \
    persist.vendor.mims_support=2 \
    persist.vendor.mtk_ct_volte_support=3 \
    persist.vendor.mtk_dynamic_ims_switch=1 \
    persist.vendor.mtk_wfc_support=1 \
    persist.vendor.mtk.volte.enable=1 \
    persist.vendor.volte_support=1 \
    persist.vendor.vilte_support=1 \
    persist.vendor.viwifi_support=1 \
    ro.vendor.md_auto_setup_ims=1

# LMKD
PRODUCT_PRODUCT_PROPERTIES += \
    ro.lmk.kill_timeout_ms=100 \
    ro.lmk.psi_complete_stall_ms=150 \
    ro.lmk.swap_free_low_percentage=20

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    debug.stagefright.ccodec=0 \
    debug.stagefright.omx_default_rank.sw-audio=1 \
    debug.stagefright.omx_default_rank=0 \
    ro.vendor.jpeg_decode_sw_opt=1 \
    ro.vendor.mtk_hdr_video_support=1 \
    ro.vendor.mtk_sec_video_path_support=1 \
    vendor.mtk.vdec.waitkeyframeforplay=7

# Mediatek (Misc)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.hardware.egl=mali \
    ro.opengles.version=196610 \
    ro.vendor.mtk_agps_app=1 \
    ro.vendor.mtk_gps_support=1 \
    ro.vendor.mtk_log_hide_gps=0 \
    ro.vendor.smvr.p2batch.vga=16 \
    ro.vendor.smvr.p2batch.hd=8 \
    ro.vendor.smvr.p2batch.fhd=4 \
    ro.vendor.mtk_aal_support=1 \
    ro.vendor.mtk_blulight_def_support=1 \
    ro.vendor.mtk_pq_support=2 \
    debug.mediatek.disp_decompress=1 \
    debug.sf.disable_backpressure=1 \
    ro.vendor.mtk_pq_color_mode=1 \
    ro.vendor.mtk_config_max_dram_size=0x800000000

# Netflix
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.netflix.bsp_rev=MTK6785-18787-1

# NFC
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.sys.nfc.disPowerSave=1 \
    persist.sys.nfc.default=on \
    persist.sys.nfc.aid_overflow=true \
    ro.product.cuptsm=OPPO|ESE|01|02 \
    persist.sys.nfc.antenna_area=bottom

# Performance
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.mtk_perf_simple_start_win=1 \
    ro.mtk_perf_fast_start_win=1 \
    ro.mtk_perf_response_time=1

# Surfaceflinger
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    debug.sf.latch_unsignaled=1 \
    ro.surface_flinger.has_HDR_display=true \
    ro.surface_flinger.has_wide_color_display=true \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
    ro.surface_flinger.primary_display_orientation=0 \
    ro.surface_flinger.running_without_sync_framework=true \
    ro.surface_flinger.vsync_event_phase_offset_ns=2000000 \
    ro.surface_flinger.vsync_sf_event_phase_offset_ns=6000000

# ZRAM
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.zram.mark_idle_delay_mins=60 \
    ro.zram.first_wb_delay_mins=1440 \
    ro.zram.periodic_wb_delay_hours=24

# Zygote
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.device_config.runtime_native.usap_pool_enabled=true
