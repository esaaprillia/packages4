include $(TOPDIR)/rules.mk

PKG_NAME:=python-websocket-client
PKG_VERSION:=1.8.0
PKG_RELEASE:=1

PYPI_NAME:=websocket_client
PKG_HASH:=3239df9f44da632f96012472805d40a23281a991027ce11d2f45a6f24ac4c3da

PKG_MAINTAINER:=Javier Marcet <javier@marcet.info>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-websocket-client
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=WebSocket client for Python. hybi13 is supported
  URL:=https://github.com/websocket-client/websocket-client
  DEPENDS:=+python3-light +python3-logging +python3-openssl
endef

define Package/python3-websocket-client/description
  websocket-client module is WebSocket client for python. This provide the low
  level APIs for WebSocket. All APIs are the synchronous functions.

  websocket-client supports only hybi-13.
endef

define Py3Package/python3-websocket-client/filespec
+|$(PYTHON3_PKG_DIR)
-|$(PYTHON3_PKG_DIR)/websocket/tests
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-websocket-client))
$(eval $(call BuildPackage,python3-websocket-client))
$(eval $(call BuildPackage,python3-websocket-client-src))
