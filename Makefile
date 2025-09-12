install:
	mkdir -p /etc/default
	cp /etc/default/grub grub.old
	cp grub /etc/default/grub
	grub-mkconfig -o /boot/grub/grub.cfg

.PHONY: install

