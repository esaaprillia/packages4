include $(TOPDIR)/rules.mk

PKG_NAME:=python-xknx
PKG_VERSION:=3.12.0
PKG_RELEASE:=1

PYPI_NAME:=xknx
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-xknx
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=XKNX - A KNX library written in Python
  URL:=https://xknx.io/
  DEPENDS:=+python3 +python3-cryptography +python3-ifaddr
endef

define Package/python3-xknx/description
XKNX - An asynchronous KNX library written in Python
endef

$(eval $(call Py3Package,python3-xknx))
$(eval $(call BuildPackage,python3-xknx))
$(eval $(call BuildPackage,python3-xknx-src))
