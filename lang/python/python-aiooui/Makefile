include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiooui
PKG_VERSION:=0.1.7
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=aiooui
PKG_HASH:=b390c9e602de1faecf3c1f0b98270a95e2d00a4da208a62d507a9635ab8a5d05

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-poetry-core/host python-requests/host python-charset-normalizer/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-aiooui
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Async OUI lookups
  URL:=https://github.com/bluetooth-devices/aiooui
  DEPENDS:=+python3 +python3-requests +python3-charset-normalizer
endef

define Package/python3-aiooui/description
Async OUI lookups
endef

$(eval $(call Py3Package,python3-aiooui))
$(eval $(call BuildPackage,python3-aiooui))
$(eval $(call BuildPackage,python3-aiooui-src))
