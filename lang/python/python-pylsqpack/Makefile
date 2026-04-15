include $(TOPDIR)/rules.mk

PKG_NAME:=python-pylsqpack
PKG_VERSION:=0.3.24
PKG_RELEASE:=1

PYPI_NAME:=pylsqpack
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pylsqpack
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python wrapper for the ls-qpack QPACK library
  URL:=https://github.com/aiortc/pylsqpack
  DEPENDS:=+python3 +libstdcpp
endef

define Package/python3-pylsqpack/description
  pylsqpack is a wrapper around the ls-qpack library. It provides Python Decoder and Encoder objects to read or write HTTP/3 headers compressed with QPACK.
endef

$(eval $(call Py3Package,python3-pylsqpack))
$(eval $(call BuildPackage,python3-pylsqpack))
$(eval $(call BuildPackage,python3-pylsqpack-src))
