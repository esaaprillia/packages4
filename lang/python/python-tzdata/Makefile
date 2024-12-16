include $(TOPDIR)/rules.mk

PKG_NAME:=python-tzdata
PKG_VERSION:=2024.2
PKG_RELEASE:=1

PYPI_NAME:=tzdata
PKG_HASH:=7d85cc416e9382e69095b7bdf4afd9e3880418a2413feec7069d533d6b4e31cc

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-tzdata
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Provider of IANA time zone data
  URL:=https://github.com/python/tzdata
  DEPENDS:=+python3 +python3-attrs
endef

define Package/python3-tzdata/description
  This is a Python package containing zic-compiled binaries for the IANA time zone database.
  It is intended to be a fallback for systems that do not have system time zone data installed (or don’t have it installed in a standard location), as a part of PEP 615
endef

$(eval $(call Py3Package,python3-tzdata))
$(eval $(call BuildPackage,python3-tzdata))
$(eval $(call BuildPackage,python3-tzdata-src))
