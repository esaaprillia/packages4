include $(TOPDIR)/rules.mk

PKG_NAME:=bsd-compat-headers
PKG_VERSION:=0.7.2
PKG_RELEASE:=1

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause AND BSD-3-Clause
PKG_LICENSE_FILES:=

include $(INCLUDE_DIR)/package.mk

define Package/bsd-compat-headers
  SECTION:=utils
  CATEGORY:=Base system
  URL:=https://gitlab.alpinelinux.org/alpine/aports
  TITLE:=BSD compatibility headers (cdefs, queue, tree)
endef

define Package/bsd-compat-headers/description
 BSD compatibility headers (cdefs, queue, tree)
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include/sys
	$(CP) ./files/{cdefs.h,queue.h,tree.h} $(1)/usr/include/sys/
endef

$(eval $(call BuildPackage,bsd-compat-headers))
