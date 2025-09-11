include $(TOPDIR)/rules.mk

PKG_NAME:=python-bleak-retry-connector
PKG_VERSION:=4.4.3
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=bleak_retry_connector
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-bleak-retry-connector
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A connector for Bleak Clients that handles transient connection failures
  URL:=https://github.com/bluetooth-devices/bleak-retry-connector
  DEPENDS:=+python3-light +python3-bleak +python3-async-timeout +python3-dbus-fast +python3-bluetooth-adapters
endef

define Package/python3-bleak-retry-connector/description
A connector for Bleak Clients that handles transient connection failures
endef

$(eval $(call Py3Package,python3-bleak-retry-connector))
$(eval $(call BuildPackage,python3-bleak-retry-connector))
$(eval $(call BuildPackage,python3-bleak-retry-connector-src))
