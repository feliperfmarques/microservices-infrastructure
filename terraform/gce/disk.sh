# resizes the gce boot disk to the specified *_volume_size
sudo yum -y install epel-release
sudo yum -y install cloud-init cloud-initramfs-tools dracut-modules-growroot cloud-utils-growpart
sudo rpm -qa kernel | sed -e 's/^kernel-//' | xargs -I {} dracut -f /boot/initramfs-{}.img {}
sudo reboot
