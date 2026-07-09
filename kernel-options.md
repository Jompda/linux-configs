# disabloi tietyt prosessorin turvatoimet.. riskialtis, mutta vähän tehii lisää
mitigations=off

# aikalähde nopeimpaan mahdolliseen (polling aika), mutta kello tulee heittämään ajansaatossa
clocksource=tsc tsc=reliable

# https://github.com/theyareonit/linux-gaming-optimization#2-kernel-parameters
nowatchdog nosoftlockup audit=0 ubscore.autosuspend=60 workqueue.power_efficient=false skew_tick=1 threadirqs preempt=full nohz_full=all cpufreq.default_governor=performance

# lopullinen
mitigations=off clocksource=tsc tsc=reliable nowatchdog nosoftlockup audit=0 ubscore.autosuspend=60 workqueue.power_efficient=false skew_tick=1 threadirqs preempt=full nohz_full=all cpufreq.default_governor=performance

