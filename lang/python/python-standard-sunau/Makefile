include $(TOPDIR)/rules.mk

PKG_NAME:=python-standard-sunau
PKG_VERSION:=3.13.0
PKG_RELEASE:=1

PYPI_NAME:=standard_sunau
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=PSF-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-standard-sunau
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Standard library sunau redistribution. "dead battery".
  URL:=https://github.com/youknowone/python-deadlib
  DEPENDS:= \
	+python3-light \
	+python3-audioop-lts
endef

define Package/python3-standard-sunau/description
Python is moving forward! Python finally started to remove dead batteries. For more information, see PEP 594.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-standard-sunau))
$(eval $(call BuildPackage,python3-standard-sunau))
$(eval $(call BuildPackage,python3-standard-sunau-src))
