include $(TOPDIR)/rules.mk

PKG_NAME:=bsd-compat-headers
PKG_VERSION:=0.7.2
PKG_RELEASE:=1

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause AND BSD-3-Clause
PKG_LICENSE_FILES:=

PKG_BUILD_DIR:=$(BUILD_DIR)/bsd-compat-headers-$(PKG_VERSION)

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk

define Package/bsd-compat-headers
	SECTION:=devel
	CATEGORY:=Development
	TITLE:=BSD compatibility headers
	DEPENDS:=
	URL:=https://gitlab.alpinelinux.org/alpine/aports
endef

define Package/bsd-compat-headers/description
	BSD compatibility headers (cdefs, queue, tree)
endef

define Build/Compile
	true
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) ./files/sys $(1)/usr/include/
endef

$(eval $(call BuildPackage,bsd-compat-headers))
