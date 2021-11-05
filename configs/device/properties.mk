# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.audio_hal.dsp_bit_width_enforce_mode=24 \
    persist.vendor.audio.voicecall.speaker.stereo=true

PRODUCT_SYSTEM_PROPERTIES += \
    ro.config.media_vol_default=8 \
    ro.config.media_vol_steps=25 \
    ro.config.vc_call_vol_default=5 \
    ro.config.vc_call_vol_steps=6

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.bluetooth.modem_nv_support=true \
    persist.vendor.qcom.bluetooth.a2dp_offload_cap=sbc-aptx-aptxtws-aptxhd-aac-ldac-aptxadaptive \
    persist.vendor.qcom.bluetooth.aac_frm_ctl.enabled=true \
    persist.vendor.qcom.bluetooth.aac_vbr_ctl.enabled=false \
    persist.vendor.qcom.bluetooth.enable.splita2dp=true \
    persist.vendor.qcom.bluetooth.scram.enabled=true \
    persist.vendor.qcom.bluetooth.soc=cherokee \
    persist.vendor.qcom.bluetooth.twsp_state.enabled=false \
    ro.vendor.bluetooth.wipower=false \
    vendor.qcom.bluetooth.soc=cherokee

PRODUCT_SYSTEM_PROPERTIES += \
    persist.vendor.bt.a2dp.aac_whitelist=false \
    persist.vendor.btstack.enable.lpa=true \
    persist.vendor.btstack.enable.twsplus=true \
    persist.vendor.btstack.enable.twsplussho=true \
    vendor.bluetooth.soc=cherokee

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    camera.disable_zsl_mode=1 \
    persist.vendor.camera.privapp.list=org.codeaurora.snapcam,com.android.camera

PRODUCT_SYSTEM_PROPERTIES += \
    vendor.camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera,org.pixelexperience.faceunlock

# Charger
PRODUCT_PRODUCT_PROPERTIES += \
    ro.charger.enable_suspend=true

# Chipset
PRODUCT_PROPERTY_OVERRIDES += \
    ro.soc.model=SM7150 \
    ro.soc.manufacturer=QTI

# Dalvik
PRODUCT_SYSTEM_PROPERTIES += \
     dalvik.vm.dex2oat64.enabled=true

# Dexopt
PRODUCT_SYSTEM_PROPERTIES += \
     pm.dexopt.first-boot=quicken
     pm.dexopt.bg-dexopt=everything

# Device Settings
PRODUCT_PROPERTY_OVERRIDES += \
    ro.audio.soundfx.dirac=true \
    persist.audio.dirac.speaker=true \
    persist.dirac.acs.controller=qem \
    persist.dirac.acs.storeSettings=1 \
    persist.dirac.acs.ignore_error=1

PRODUCT_SYSTEM_PROPERTIES += \
    persist.lcd.hbm_mode=0 \
    persist.lcd.cabc_mode=0

# Display
PRODUCT_PROPERTY_OVERRIDES += \
   debug.hwui.renderer=skiagl \
   debug.sf.enable_hwc_vds=0 \
   debug.sf.latch_unsignaled=0 \
   debug.sf.disable_client_composition_cache=1 \
   ro.gfx.driver.1=com.qualcomm.qti.gpudrivers.sm6150.api30 \
   ro.vendor.display.ad=1 \
   ro.vendor.display.ad.sdr_calib_data=/vendor/etc/sdr_config.cfg \
   ro.vendor.display.ad.hdr_calib_data=/vendor/etc/hdr_config.cfg \
   ro.vendor.display.sensortype=2 \
   vendor.display.disable_idle_time_hdr=1 \
   vendor.display.disable_idle_time_video=1 \
   vendor.display.disable_rotator_downscale=1

PRODUCT_PRODUCT_PROPERTIES += \
    ro.surface_flinger.has_wide_color_display=false

# Disable vsync for cpu rendered apps
PRODUCT_SYSTEM_PROPERTIES += \
   debug.cpurend.vsync=false

# DPM
PRODUCT_PROPERTY_OVERRIDES += \
   persist.vendor.dpmhalservice.enable=1 \
   persist.vendor.dpm.idletimer.mode=default \
   persist.vendor.dpm.nsrm.bkg.evt=3955 \
   persist.vendor.dpmhalservice.enable=1

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# FRP
PRODUCT_PROPERTY_OVERRIDES += \
    ro.frp.pst=/dev/block/bootdevice/by-name/frp

# HVDCP
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.cp.fcc_main_ua=400000 \
    persist.vendor.cp.taper_term_mv=6500 \
    persist.vendor.cp.vbus_offset_mv=1040

# IMS
PRODUCT_PROPERTY_OVERRIDES += \
   persist.dbg.volte_avail_ovr=1 \
   persist.dbg.vt_avail_ovr=1 \
   persist.dbg.wfc_avail_ovr=1

# Incremental FS
PRODUCT_PROPERTY_OVERRIDES += \
   ro.incremental.enable=1

# IORap
PRODUCT_PRODUCT_PROPERTIES += \
   persist.device_config.runtime_native_boot.iorap_readahead_enable=true

# IWLAN
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.data.iwlan.enable=true \
    ro.telephony.iwlan_operation_mode=legacy

# Keystore
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore_desede=true \
    ro.crypto.volume.filenames_mode=aes-256-cts

# Netflix
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.netflix.bsp_rev=Q6150-17263-1

# NFC
PRODUCT_SYSTEM_PROPERTIES += \
    ro.nfc.port=I2C

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.radio.add_power_save=1 \
    persist.vendor.radio.atfwd.start=true \
    persist.vendor.radio.data_con_rprt=1 \
    persist.vendor.radio.force_on_dc=true \
    persist.vendor.radio.manual_nw_rej_ct=1 \
    persist.vendor.radio.mt_sms_ack=30 \
    persist.vendor.radio.process_sups_ind=1 \
    persist.vendor.radio.redir_party_num=1 \
    persist.vendor.radio.report_codec=1 \
    ro.telephony.default_network=22,20

# Qcom
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.qcomsysd.enabled=1

# Sensors
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.sensors.enable.mag_filter=true
    debug.sensors.diag_buffer_log=false

# Thermal
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.sys.thermal.data.path=/data/vendor/thermal/

# Zygote
PRODUCT_SYSTEM_PROPERTIES += \
    persist.device_config.runtime_native.usap_pool_enabled=true

# Touch Hax
PRODUCT_PROPERTY_OVERRIDES += \
    touch.size.scale=1 \
    touch.size.bias=0 \
    touch.size.isSummed=0 \
    touch.pressure.scale=0.001 \
    touch.distance.calibration=none \
    touch.distance.scale=0 \
    touch.coverage.calibration=box \
    touch.gestureMode=spots \
    MultitouchSettleInterval=1ms \
    MultitouchMinDistance=1px \
    TapInterval=1ms \
    TapSlop=1px

# Memory
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.sys.fw.bservice_enable=true \
    ro.sys.fw.bservice_limit=5 \
    ro.sys.fw.bservice_age=5000 \
    ro.am.reschedule_service=true \
    ro.sys.fw.bg_apps_limit=32 \
    ro.config.fha_enable=true \
    ro.config.dha_cached_max=16 \
    ro.config.dha_empty_max=42 \
    ro.config.dha_empty_init=32 \
    ro.config.dha_lmk_scale=0.545 \
    ro.config.dha_th_rate=2.3 \
    ro.config.sdha_apps_bg_max=64 \
    ro.config.sdha_apps_bg_min=8 \
    ro.lmk.filecache_min_kb=153600
