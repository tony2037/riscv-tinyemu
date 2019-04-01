TEMU = temu
activate:
	echo "Press CTRL+A release then X to exit"
	$(TEMU) https://bellard.org/jslinux/buildroot-riscv64.cfg
install:
	sudo apt install libsdl2-dev libssl-dev libcurl4-openssl-dev
	git clone https://github.com/sysprog21/riscv-emu.git
activate-rawimage:
	$(TEMU) diskimage-linux-riscv-2018-09-23/root-riscv64.cfg
diskimage-linux-riscv-2018-09-23:
	wget https://bellard.org/tinyemu/diskimage-linux-riscv-2018-09-23.tar.gz
	tar zxvf diskimage-linux-riscv-2018-09-23.tar.gz
	$(RM) diskimage-linux-riscv-2018-09-23.tar.gz
