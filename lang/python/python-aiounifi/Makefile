include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiounifi
PKG_VERSION:=88
PKG_RELEASE:=1

PYPI_NAME:=aiounifi
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-aiounifi
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python library for communicating with UniFi Network Controller API
  URL:=https://github.com/Kane610/aiounifi
  DEPENDS:=+python3 +python3-aiohttp +python3-orjson +python3-segno
endef

define Package/python3-aiounifi/description
Asynchronous library to communicate with Unifi Controller
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-aiounifi))
$(eval $(call BuildPackage,python3-aiounifi))
$(eval $(call BuildPackage,python3-aiounifi-src))
