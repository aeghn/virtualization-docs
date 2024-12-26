#!/usr/bin/env sh

pacman -S dmidecode qemu-full virt-manager libvirt edk2-ovmf virt-manager dnsmasq iptables
sudo usermod -aG libvirt $USER
sudo usermod -aG libvirt-qemu $USER
sudo usermod -aG kvm $USER
sudo usermod -aG input $USER
sudo usermod -aG disk $USER

sudo systemctl enable --now libvirtd
