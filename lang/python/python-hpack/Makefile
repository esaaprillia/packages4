include $(TOPDIR)/rules.mk

PKG_NAME:=python-hpack
PKG_VERSION:=4.0.0
PKG_RELEASE:=1

PYPI_NAME:=hpack
PKG_HASH:=fc41de0c63e687ebffde81187a948221294896f6bdc0ae2312708df339430095

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-hpack
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Pure-Python HPACK header compression
  URL:=https://github.com/python-hyper/hpack
  DEPENDS:=+python3-light
endef

define Package/python3-hpack/description
This module contains a pure-Python HTTP/2 header encoding (HPACK) logic for use in Python programs that implement HTTP/2.
endef

$(eval $(call Py3Package,python3-hpack))
$(eval $(call BuildPackage,python3-hpack))
$(eval $(call BuildPackage,python3-hpack-src))
