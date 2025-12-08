include $(TOPDIR)/rules.mk

PKG_NAME:=python-vincenty
PKG_VERSION:=0.1.4
PKG_RELEASE:=1

PYPI_NAME:=vincenty
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Unlicense
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-vincenty
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Calculate the geographical distance
  URL:=https://github.com/maurycyp/vincenty
  DEPENDS:=+python3
endef

define Package/python3-vincenty/description
Calculate the geographical distance between 2 points with extreme accuracy.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-vincenty))
$(eval $(call BuildPackage,python3-vincenty))
$(eval $(call BuildPackage,python3-vincenty-src))
