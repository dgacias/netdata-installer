#Enable KSM
echo 1 >/sys/kernel/mm/ksm/run
echo 1000 >/sys/kernel/mm/ksm/sleep_millisecs

#install prerequisites
curl -Ss 'https://raw.githubusercontent.com/firehol/netdata-demo-site/master/install-required-packages.sh' >/tmp/kickstart.sh
bash /tmp/kickstart.sh -i netdata-all --dont-wait --non-interactive

#clone the repo
git clone https://github.com/firehol/netdata.git --depth=1
cd netdata

#launch installer
./netdata-installer.sh --dont-wait
