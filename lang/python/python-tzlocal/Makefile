include $(TOPDIR)/rules.mk

PKG_NAME:=python-tzlocal
PKG_VERSION:=5.3.1
PKG_RELEASE:=1

PYPI_NAME:=tzlocal
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-tzlocal
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=tzinfo object for the local timezone
  URL:=https://github.com/regebro/tzlocal
  DEPENDS:=+python3
endef

define Package/python3-tzlocal/description
A Python module that tries to figure out what your local timezone is
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-tzlocal))
$(eval $(call BuildPackage,python3-tzlocal))
$(eval $(call BuildPackage,python3-tzlocal-src))
