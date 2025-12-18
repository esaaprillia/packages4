include $(TOPDIR)/rules.mk

PKG_NAME:=python-aioice
PKG_VERSION:=0.10.2
PKG_RELEASE:=1

PYPI_NAME:=aioice
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-aioice
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=An implementation of Interactive Connectivity Establishment (RFC 5245)
  URL:=https://aioice.readthedocs.io/
  DEPENDS:= \
	+python3-light \
	+python3-dnspython \
	+python3-ifaddr
endef

define Package/python3-aioice/description
aioice is a library for Interactive Connectivity Establishment (RFC 5245) in Python.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-aioice))
$(eval $(call BuildPackage,python3-aioice))
$(eval $(call BuildPackage,python3-aioice-src))
