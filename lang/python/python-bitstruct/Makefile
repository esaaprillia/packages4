include $(TOPDIR)/rules.mk

PKG_NAME:=python-bitstruct
PKG_VERSION:=8.22.1
PKG_RELEASE:=1

PYPI_NAME:=bitstruct
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-bitstruct
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=This module performs conversions between Python values and C bit field structs represented as Python byte strings.
  URL:=https://bitstruct.readthedocs.io/
  DEPENDS:=+python3
endef

define Package/python3-bitstruct/description
This module is intended to have a similar interface as the python struct module, but working on bits instead of primitive data types (char, int, …).
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-bitstruct))
$(eval $(call BuildPackage,python3-bitstruct))
$(eval $(call BuildPackage,python3-bitstruct-src))
