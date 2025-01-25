include $(TOPDIR)/rules.mk

PKG_NAME:=python-getmac
PKG_VERSION:=0.9.5
PKG_RELEASE:=1

PYPI_NAME:=getmac
PKG_HASH:=456435cdbf1f5f45c433a250b8b795146e893b6fc659060f15451e812a2ab17d

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-getmac
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Get MAC addresses of remote hosts and local interfaces
  URL:=https://github.com/GhostofGoes/getmac
  DEPENDS:=+python3
endef

define Package/python3-getmac/description
  Pure-Python package to get the MAC address of network interfaces and hosts on the local network.
endef

$(eval $(call Py3Package,python3-getmac))
$(eval $(call BuildPackage,python3-getmac))
$(eval $(call BuildPackage,python3-getmac-src))
