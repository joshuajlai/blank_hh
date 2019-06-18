## Notes
### Ubuntu 16
Instructions here for configuring apt: https://docs.hhvm.com/hhvm/installation/linux
```
apt-get update
apt-get install software-properties-common apt-transport-https
apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xB4112585D386EB94

add-apt-repository https://dl.hhvm.com/ubuntu
apt-get update
```
Then edit the `/etc/apt/sources.list` file and change:
```
deb https://dl.hhvm.com/ubuntu xenial main
```
to
```
deb https://dl.hhvm.com/ubuntu xenial-lts-3.30 main
```
This will allow APT to see the 3.30 version. Then run:
```
apt-get update
apt-get install hhvm
```
