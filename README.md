# 安装软件
```shell
# pacman -S dmidecode qemu-full virt-manager libvirt edk2-ovmf virt-manager dnsmasq iptables
$ sudo usermod -aG libvirt $USER
$ sudo usermod -aG libvirt-qemu $USER
$ sudo usermod -aG kvm $USER
$ sudo usermod -aG input $USER
$ sudo usermod -aG disk $USER

$ sudo systemctl enable --now libvirtd
```

# 安装过程
## 在内核启动中添加如下的参数

```
amd_iommu=on iommu=pt
```

## 安装虚拟机系统
- 安装前需要将系统设置为 uefi 方式启动
- 安装前需要将网卡驱动改为 virtio
- 如果是直接在虚拟文件上安装，那么需要安装时加一张 virtio-win.iso 的镜像。[[https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/stable-virtio/virtio-win.iso][virtio-drivers.iso]]
- 设置显卡直通
- 将usb 设备设置为 virtio 驱动
- 设置 hook

## 参考文档 

https://leduccc.medium.com/improving-the-performance-of-a-windows-10-guest-on-qemu-a5b3f54d9cf5
https://h1zardian.hashnode.dev/kvm-windows-optimization 写的很全面，还有截图
