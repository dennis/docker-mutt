#!/bin/sh

set -x

DEBIAN_FRONTEND=noninteractive

apt-get -qy --force-yes update
apt-get -qy --force-yes dist-upgrade
apt-get -qy --force-yes upgrade
apt-get -qy --force-yes install mutt-patched vim
apt-get -qy autoremove

rm -rf /tmp/* /var/tmp/*
apt-get -qy clean
rm -rf /var/lib/apt/lists/*

adduser mutt --home /mutt --no-create-home --disabled-password --gecos ''
mkdir /mutt
chown mutt:mutt /mutt
