#!/system/bin/sh

## Common-default settings
# GED modules
echo 0 > /sys/module/ged/parameters/gx_game_mode
echo 0 > /sys/module/ged/parameters/gx_force_cpu_boost

# PPM
echo 1 > /proc/ppm/enabled

# PPM_POLICY_SYS_BOOST
echo 9 1 > /proc/ppm/policy_status

# cpufreq modes
echo 0 > /proc/cpufreq/cpufreq_cci_mode
echo 0 > /proc/cpufreq/cpufreq_power_mode

# limit cpu freq
echo 0 -1 > /proc/ppm/policy/hard_userlimit_max_cpu_freq # big cluster
echo 1 -1 > /proc/ppm/policy/hard_userlimit_max_cpu_freq # LITTLE cluster
# echo 0 -1 > /proc/ppm/policy/hard_userlimit_min_cpu_freq # big
# echo 1 -1 > /proc/ppm/policy/hard_userlimit_min_cpu_freq # LITTLE

# lock gpu freq
echo 0 > /proc/gpufreq/gpufreq_opp_freq

# set sched to hybrid (HMP,EAS)
echo 2 > /sys/devices/system/cpu/eas/enable

# schedutil rate-limit
echo 10000 > /sys/devices/system/cpu/cpufreq/schedutil/down_rate_limit_us
echo 10000 > /sys/devices/system/cpu/cpufreq/schedutil/up_rate_limit_us

# cpusets
echo 0-3 > /dev/cpuset/background/cpus
echo 0-5 > /dev/cpuset/system-background/cpus
echo 0-7 > /dev/cpuset/restricted/cpus

# oppo touchpanel
echo 1 > /proc/touchpanel/oppo_tp_limit_enable
echo 0 > /proc/touchpanel/oppo_tp_direction
echo 0 > /proc/touchpanel/game_switch_enable

case $1 in
0)
	## Balanced profile(use all default settings)
	;;
1)
	## Power saving profile
	echo 1 > /proc/cpufreq/cpufreq_power_mode

	echo 0 > /sys/devices/system/cpu/cpufreq/schedutil/down_rate_limit_us
	echo 0 > /sys/devices/system/cpu/cpufreq/schedutil/up_rate_limit_us

	echo 1 1923000 > /proc/ppm/policy/hard_userlimit_max_cpu_freq
	echo 0 1733000 > /proc/ppm/policy/hard_userlimit_max_cpu_freq

	echo 9 0 > /proc/ppm/policy_status
	;;
2)
	## Performance profile
	echo 1 > /sys/module/ged/parameters/gx_game_mode
	echo 1 > /sys/module/ged/parameters/gx_force_cpu_boost

	echo 3 > /proc/cpufreq/cpufreq_power_mode
	echo 1 > /proc/cpufreq/cpufreq_cci_mode

	# force sched to EAS
	echo 1 > /sys/devices/system/cpu/eas/enable

	echo 50000 > /sys/devices/system/cpu/cpufreq/schedutil/down_rate_limit_us
	echo 0 > /sys/devices/system/cpu/cpufreq/schedutil/up_rate_limit_us

	echo 0 > /dev/cpuset/background/cpus
	echo 0-3 > /dev/cpuset/system-background/cpus
	echo 0-3 > /dev/cpuset/restricted/cpus

	echo 806000 > /proc/gpufreq/gpufreq_opp_freq

	echo 0 > /proc/ppm/enabled

	# echo 1 1923000 > /proc/ppm/policy/hard_userlimit_min_cpu_freq
	# echo 0 1733000 > /proc/ppm/policy/hard_userlimit_min_cpu_freq

	echo 0 > /proc/touchpanel/oppo_tp_limit_enable
	echo 1 > /proc/touchpanel/oppo_tp_direction
	echo 1 > /proc/touchpanel/game_switch_enable
	;;
esac
