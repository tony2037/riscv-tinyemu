This archive contains a boot loader (riscv-pk), Linux kernels and root
filesystems for the TinyEMU project. The required patches to build
riscv-pk and the Linux kernel are in the 'patches' directory.

Usage:

- 32 bit RISCV emulation:

temu root-riscv32.cfg

- 64 bit RISCV emulation:

temu root-riscv64.cfg

- 128 bit RISCV emulation (the boot loader switches XLEN to 64 bits
  but the emulator still emulates a 128 bit CPU):

temu root-riscv128.cfg

- 128 bit RISCV emulation test with XLEN change

temu rv128test/rv128test.cfg

Notes:

- TinyEMU only supports raw boot loader and kernel images. So after
  building riscv-pk or the Linux kernel, you must convert the ELF
  image to a raw image with:

  riscv64-unknown-linux-gnu-objcopy -O binary bbl bbl.bin
  
  riscv64-unknown-linux-gnu-objcopy -O binary vmlinux kernel.bin

- The configuration files buildroot-riscv32.cfg and
  buildroot-riscv64.cfg are provided to test the images generated by
  the Buildroot archive provided at
  https://bellard.org/tinyemu/buildroot.html .
