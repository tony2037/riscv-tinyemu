KILO_VERSION = 62b099af00b542bdb08471058d527af258a349cf
# KILO_SOURCE = git://github.com/antirez/kilo.git
# FOO_SITE = $(call github,<user>,<package>,$(FOO_VERSION))
# KILO_SITE = $(call github, antirez, kilo,$(FOO_VERSION))
KILO_SITE = git://github.com/antirez/kilo.git
# KILO_SOURCE = 
KILO_SITE_METHOD = git

# $(@D): the path to the build directory
define KILO_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef

# See https://stackoverflow.com/questions/8014991/how-do-i-add-a-a-package-to-buildroot-which-is-available-in-a-git-repository
# See 
define KILO_INSTALL_TARGET_CMDS
        $(INSTALL) -D -m 0755 $(@D)/kilo $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
