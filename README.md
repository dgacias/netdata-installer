# netdata-installer
This is my script to automatically install and run the last version of netdata (https://github.com/firehol/netdata).

Beware that this scripts activates KSM feature (http://www.linux-kvm.org/page/KSM) to save memory, so first of all check if that won't mess with your machine.
If you don't want KSM feel free to comment or delete those lines of the script. It's desirable but not mandatory.
