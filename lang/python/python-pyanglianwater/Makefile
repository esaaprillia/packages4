include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyanglianwater
PKG_VERSION:=3.0.0
PKG_RELEASE:=1

PYPI_NAME:=pyanglianwater
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pyanglianwater
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A package to interact with Anglian Water
  URL:=http://github.com/pantherale0/pyanglianwater
  DEPENDS:=+python3 +python3-pyjwt +python3-aiohttp +python3-cryptography
endef

define Package/python3-pyanglianwater/description
A module to interact with Anglian Water and retrieve smart meter usage.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pyanglianwater))
$(eval $(call BuildPackage,python3-pyanglianwater))
$(eval $(call BuildPackage,python3-pyanglianwater-src))
