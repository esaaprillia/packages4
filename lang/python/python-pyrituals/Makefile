include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyrituals
PKG_VERSION:=0.0.7
PKG_RELEASE:=1

PYPI_NAME:=pyrituals
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPLv3
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pyrituals
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Async Python wrapper for the Rituals Perfume Genie API
  URL:=https://github.com/milanmeu/pyrituals
  DEPENDS:=+python3-light +python3-aiohttp
endef

define Package/python3-pyrituals/description
An async Python wrapper for the Rituals Perfume Genie API.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pyrituals))
$(eval $(call BuildPackage,python3-pyrituals))
$(eval $(call BuildPackage,python3-pyrituals-src))
