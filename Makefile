install:
	mkdir -p /etc/default
	cp /etc/default/grub grub.old
	cp grub /etc/default/grub
	mkdir -p /etc/grub.d
	cp /etc/grub.d/40_custom 40_custom.old
	cp 40_custom /etc/grub.d/40_custom
	mkdir -p /boot/grub/themes
	cp -r spo-theme /boot/grub/themes/spo-theme
	grub-mkconfig -o /boot/grub/grub.cfg
clean:
	rm -rf /boot/grub/themes/spo-theme

.PHONY: install clean

