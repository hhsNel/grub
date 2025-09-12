install:
	mkdir -p /etc/default
	cp /etc/default/grub grub.old
	cp grub /etc/default/grub
	mkdir -p /etc/grub.d
	cp /etc/grub.d/40_custom 40_custom.old
	cp 40_custom /etc/grub.d/40_custom
	grub-mkconfig -o /boot/grub/grub.cfg

.PHONY: install

