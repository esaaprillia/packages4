include $(TOPDIR)/rules.mk

PKG_NAME:=python-luci-rpc
PKG_VERSION:=1.1.17
PKG_RELEASE:=1

PYPI_NAME:=openwrt-luci-rpc
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-luci-rpc
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Module for interacting with OpenWrt Luci RPC interface
  URL:=https://github.com/fbradyirl/openwrt-luci-rpc
  DEPENDS:=+python3 +python3-click +python3-requests +python3-packaging +luci-mod-rpc
endef

define Package/python3-luci-rpc/description
Python3 module for interacting with the OpenWrt Luci RPC interface
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-luci-rpc))
$(eval $(call BuildPackage,python3-luci-rpc))
$(eval $(call BuildPackage,python3-luci-rpc-src))
