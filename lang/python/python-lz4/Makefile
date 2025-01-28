include $(TOPDIR)/rules.mk

PKG_NAME:=python-lz4
PKG_VERSION:=4.4.3
PKG_RELEASE:=1

PYPI_NAME:=lz4
PKG_HASH:=91ed5b71f9179bf3dbfe85d92b52d4b53de2e559aa4daa3b7de18e0dd24ad77d

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-pkgconfig/host

PYTHON3_PKG_SETUP_VARS:= \
	PYLZ4_USE_SYSTEM_LZ4="True"

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-lz4
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=LZ4 Bindings for Python
  URL:=https://github.com/python-lz4/python-lz4
  DEPENDS:=+python3 +lz4
endef

define Package/python3-lz4/description
This package provides python bindings for the LZ4 compression library.
endef

$(eval $(call Py3Package,python3-lz4))
$(eval $(call BuildPackage,python3-lz4))
$(eval $(call BuildPackage,python3-lz4-src))
