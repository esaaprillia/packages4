include $(TOPDIR)/rules.mk

PKG_NAME:=python-ubus-rpc
PKG_VERSION:=0.0.3
PKG_RELEASE:=1

PYPI_NAME:=openwrt-ubus-rpc
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=LICENSE.md

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-ubus-rpc
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=OpenWrt ubus RPC API library
  URL:=https://github.com/Noltari/python-ubus-rpc
  DEPENDS:=+python3 +python3-requests +python3-urllib3
endef

define Package/python3-ubus-rpc/description
openwrt-ubus-rpc is a Python module implementing an interface to the OpenWrt ubus RPC API. It allows a user to perform Remote Procedure Calls (RPC) to the OpenWrt micro bus architecture (ubus).
endef

$(eval $(call Py3Package,python3-ubus-rpc))
$(eval $(call BuildPackage,python3-ubus-rpc))
$(eval $(call BuildPackage,python3-ubus-rpc-src))
