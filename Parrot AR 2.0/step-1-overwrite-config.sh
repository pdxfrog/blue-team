telnet 192.168.1.1 <<EOF
if [! -f /data/config.bak ]; then
	cp /data/config.ini /data/config.bak
fi

echo "[general]
flying_time                    = 57
num_version_config             = 1
num_version_mb                 = 34
num_version_soft               = 2.4.8
drone_serial                   = PS721801BJ5K113199
soft_build_date                = 2013-09-16 14:49
motor1_soft                    = 0.0
motor1_hard                    = 0.0
motor1_supplier                = 0.0
motor2_soft                    = 0.0
motor2_hard                    = 0.0
motor2_supplier                = 0.0
motor3_soft                    = 0.0
motor3_hard                    = 0.0
motor3_supplier                = 0.0
motor4_soft                    = 0.0
motor4_hard                    = 0.0
motor4_supplier                = 0.0
ardrone_name                   = My ARDrone
navdata_demo                   = FALSE
com_watchdog                   = 2
video_enable                   = TRUE
vision_enable                  = TRUE
vbat_min                       = 9000
gps_soft                       = 0.0
gps_hard                       = 0.0
timezone                       = +0000
battery_type                   = 0
gps_soft_update                = 4.1.2-P6

[network]
ssid_single_player             = MobileBeacon
ssid_multi_player              = MobileBeacon
wifi_mode                      = 0
owner_mac                      = 00:00:00:00:00:00

[control]
accs_offset                    = { -4.4146367e+03 3.9941775e+03 3.8131077e+03 }
accs_gains                     = {  2.0359869e+00 3.5999637e-02 3.0376000e-02  1.8440634e-02 -1.9701849e+00 -4.8104156e-02  3.4135620e-03 3.8328546e-03 -1.9135318e+00 }
gyros_offset                   = { -1.9087501e+00 -1.8456249e+01 -1.5843750e+01 }
gyros_gains                    = { 1.0686162e-03 -1.0660707e-03 -1.0776335e-03 }
gyros110_offset                = { 1.6625000e+03 1.6625000e+03 }
gyros110_gains                 = { 1.5271631e-03 -1.5271631e-03 }
magneto_offset                 = { 0.0000000e+00 0.0000000e+00 0.0000000e+00 }
magneto_radius                 = 0.0000000e+00
gyro_offset_thr_x              = 4.0000000e+00
gyro_offset_thr_y              = 4.0000000e+00
gyro_offset_thr_z              = 5.0000000e-01
pwm_ref_gyros                  = 500
osctun_value                   = 0
osctun_test                    = TRUE
altitude_max                   = 3000
altitude_min                   = 50
outdoor                        = FALSE
flight_without_shell           = FALSE
autonomous_flight              = FALSE
control_level                  = 0
euler_angle_max                = 2.0943952e-01
control_iphone_tilt            = 3.4906584e-01
control_vz_max                 = 7.0000000e+02
control_yaw                    = 1.7453293e+00
manual_trim                    = FALSE
indoor_euler_angle_max         = 2.0943952e-01
indoor_control_vz_max          = 7.0000000e+02
indoor_control_yaw             = 1.7453293e+00
outdoor_euler_angle_max        = 3.4906584e-01
outdoor_control_vz_max         = 1.0000000e+03
outdoor_control_yaw            = 3.4906585e+00

[pic]
ultrasound_freq                = 8
ultrasound_watchdog            = 3
pic_version                    = 184877090

[video]
camif_fps                      = 30
camif_buffers                  = 2
num_trackers                   = 12
video_on_usb                   = TRUE
video_file_index               = 1
codec_fps                      = 30
exposure_mode                  = 0,0,0,0
saturation_mode                = 0
whitebalance_mode              = 0,0

[leds]

[detect]
enemy_colors                   = 1
enemy_without_shell            = 0
groundstripe_colors            = 16
detect_type                    = 3
detections_select_h            = 0
detections_select_v_hsync      = 0
detections_select_v            = 0

[syslog]
output                         = 7
max_size                       = 102400
nb_files                       = 5

[gps]
latitude                       = 5.0000000000000000e+02
longitude                      = 5.0000000000000000e+02
altitude                       = 0.0000000000000000e+00
accuracy                       = 0.0000000000000000e+00

[flightplan]
default_validation_radius      = 3.0000000e+00
default_validation_time        = 1.0000000e-03
max_distance_from_takeoff      = 1000
gcs_ip                         = 3
video_stop_delay               = 10
low_battery_go_home            = FALSE
automatic_heading              = TRUE
com_lost_action_delay          = 0
altitude_go_home               = 0.0000000e+00
mavlink_js_roll_left           = x-
mavlink_js_roll_right          = x+
mavlink_js_pitch_front         = y+
mavlink_js_pitch_back          = y-
mavlink_js_yaw_left            = 4
mavlink_js_yaw_right           = 5
mavlink_js_go_up               = 0
mavlink_js_go_down             = 1
mavlink_js_inc_gains           = 6
mavlink_js_dec_gains           = 7
mavlink_js_select              = 8
mavlink_js_start               = 9

[custom]
application_desc               = Default application configuration
profile_desc                   = Default profile configuration
session_desc                   = Default session configuration

[userbox]

[rescue]" > /data/config.ini

reboot
EOF



