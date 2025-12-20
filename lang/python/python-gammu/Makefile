include $(TOPDIR)/rules.mk

PKG_NAME:=python-gammu
PKG_VERSION:=3.2.4
PKG_RELEASE:=1

PYPI_NAME:=python-gammu
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPLv2+
PKG_LICENSE_FILES:=COPYING

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-gammu
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Gammu bindings
  URL:=https://wammu.eu/python-gammu/
  DEPENDS:= \
	+python3-light \
	+gammu
endef

define Package/python3-gammu/description
Python bindings for the Gammu library.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-gammu))
$(eval $(call BuildPackage,python3-gammu))
$(eval $(call BuildPackage,python3-gammu-src))
