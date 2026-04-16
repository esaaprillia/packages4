include $(TOPDIR)/rules.mk

PKG_NAME:=python-zstandard
PKG_VERSION:=0.25.0
PKG_RELEASE:=1

PYPI_NAME:=zstandard
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:= LICENSE

PKG_BUILD_DEPENDS:=python-cffi/host python-packaging/host
HOST_BUILD_DEPENDS:=python-cffi/host python-packaging/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-zstandard
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Zstandard bindings for Python
  URL:=https://github.com/indygreg/python-zstandard
  DEPENDS:=+python3-light +python3-cffi
endef

define Package/python3-zstandard/description
This project provides Python bindings for interfacing with the Zstandard compression library. A C extension and CFFI interface are provided.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-zstandard))
$(eval $(call BuildPackage,python3-zstandard))
$(eval $(call BuildPackage,python3-zstandard-src))
