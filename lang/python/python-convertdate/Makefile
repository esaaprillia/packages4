include $(TOPDIR)/rules.mk

PKG_NAME:=python-convertdate
PKG_VERSION:=2.4.0
PKG_RELEASE:=1

PYPI_NAME:=convertdate
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-convertdate
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Converts between Gregorian dates and other calendar systems
  URL:=https://github.com/fitnr/convertdate
  DEPENDS:=+python3 +python3-pymeeus
endef

define Package/python3-convertdate/description
The convertdate package was originally developed as "Python Date Utils" by Phil Schwartz. It has been significantly updated and expanded.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-convertdate))
$(eval $(call BuildPackage,python3-convertdate))
$(eval $(call BuildPackage,python3-convertdate-src))
