TEMU = temu
activate:
	echo "Press CTRL+A release then X to exit"
	$(TEMU) https://bellard.org/jslinux/buildroot-riscv64.cfg
install:
	sudo apt install libsdl2-dev libssl-dev libcurl4-openssl-dev
	git clone https://github.com/sysprog21/riscv-emu.git
