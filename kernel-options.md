# Extrana:
mitigations=off clocksource=tsc tsc=reliable

# https://github.com/theyareonit/linux-gaming-optimization#2-kernel-parameters
nowatchdog nosoftlockup audit=0 ubscore.autosuspend=60 workqueue.power_efficient=false skew_tick=1 threadirqs preempt=full nohz_full=all cpufreq.default_governor=performance

