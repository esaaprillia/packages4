include $(TOPDIR)/rules.mk

PKG_NAME:=python-uvloop
PKG_VERSION:=0.22.1
PKG_RELEASE:=1

PYPI_NAME:=uvloop
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=APACHE MIT
PKG_LICENSE_FILES:=LICENSE-MIT LICENSE-APACHE

PKG_BUILD_DEPENDS:=python-cython/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-uvloop
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Fast implementation of asyncio event loop on top of libuv
  URL:=https://github.com/MagicStack/uvloop
  DEPENDS:= \
	+python3 \
	+libuv
endef

define Package/python3-uvloop/description
uvloop is a fast, drop-in replacement of the built-in asyncio event loop.
endef

PYTHON3_PKG_BUILD_CONFIG_SETTINGS += \
	--build-option=build_ext \
	--build-option=--use-system-libuv

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-uvloop))
$(eval $(call BuildPackage,python3-uvloop))
$(eval $(call BuildPackage,python3-uvloop-src))
