include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyipma
PKG_VERSION:=3.0.9
PKG_RELEASE:=1

PYPI_NAME:=pyipma
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pyipma
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python library to retrieve information from Instituto Português do Mar e Atmosfera.
  URL:=https://github.com/dgomes/pyipma
  DEPENDS:=+python3 +python3-aiohttp +python3-geopy
endef

define Package/python3-pyipma/description
Python library to retrieve information from Instituto Português do Mar e Atmosfera.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pyipma))
$(eval $(call BuildPackage,python3-pyipma))
$(eval $(call BuildPackage,python3-pyipma-src))
