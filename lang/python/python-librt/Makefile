include $(TOPDIR)/rules.mk

PKG_NAME:=python-librt
PKG_VERSION:=0.13.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=librt
PKG_HASH:=skip

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-librt
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Mypyc runtime library
  URL:=https://github.com/mypyc/librt
  DEPENDS:= \
	+python3-light
endef

define Package/python3-librt/description
This library contains efficient C implementations of various Python standard library classes and functions.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-librt))
$(eval $(call BuildPackage,python3-librt))
$(eval $(call BuildPackage,python3-librt-src))
