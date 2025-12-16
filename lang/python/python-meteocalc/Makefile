include $(TOPDIR)/rules.mk

PKG_NAME:=python-meteocalc
PKG_VERSION:=1.1.0
PKG_RELEASE:=1

PYPI_NAME:=meteocalc
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-meteocalc
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Functions for calculation of meteorological variables.
  URL:=https://github.com/malexer/meteocalc
  DEPENDS:=+python3
endef

define Package/python3-meteocalc/description
Several functions for calculation of meteorological variables.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-meteocalc))
$(eval $(call BuildPackage,python3-meteocalc))
$(eval $(call BuildPackage,python3-meteocalc-src))
