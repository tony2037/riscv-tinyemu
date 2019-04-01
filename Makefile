TEMU = temu
activate:
	echo "Press CTRL+A release then X to exit"
	$(TEMU) https://bellard.org/jslinux/buildroot-riscv64.cfg
install:
	sudo apt install libsdl2-dev libssl-dev libcurl4-openssl-dev
	git clone https://github.com/sysprog21/riscv-emu.git
activate-rawimage:
	$(TEMU) diskimage-linux-riscv-2018-09-23/root-riscv64.cfg
activate-customize:
	echo "The password is root"
	$(TEMU) diskimage-linux-riscv-2018-09-23/test64.cfg


diskimage: diskimage-linux-riscv-2018-09-23
diskimage-linux-riscv-2018-09-23:
	wget https://bellard.org/tinyemu/diskimage-linux-riscv-2018-09-23.tar.gz
	tar zxvf diskimage-linux-riscv-2018-09-23.tar.gz
	$(RM) diskimage-linux-riscv-2018-09-23.tar.gz

buildroot: buildroot-riscv-2018-10-20
	cd buildroot-riscv-2018-10-20; $(MAKE) menuconfig
buildroot-riscv-2018-10-20: buildroot-riscv-2018-10-20.tar.gz
	tar zxvf buildroot-riscv-2018-10-20.tar.gz
	$(RM) buildroot-riscv-2018-10-20.tar.gz
	$(CD) buildroot-riscv-2018-10-20
	cp configs/riscv64_defconfig .config
buildroot-riscv-2018-10-20.tar.gz:
	wget https://bellard.org/tinyemu/buildroot-riscv-2018-10-20.tar.gz
