include $(TOPDIR)/rules.mk

PKG_NAME:=python-libpass
PKG_VERSION:=1.9.3
PKG_RELEASE:=1

PYPI_NAME:=libpass
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-libpass
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Fork of passlib, a comprehensive password hashing framework supporting over 30 schemes
  URL:=https://github.com/notypecheck/passlib
  DEPENDS:= \
	+python3
endef

define Package/python3-libpass/description
This is a fork of https://foss.heptapod.net/python-libs/passlib
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-libpass))
$(eval $(call BuildPackage,python3-libpass))
$(eval $(call BuildPackage,python3-libpass-src))
