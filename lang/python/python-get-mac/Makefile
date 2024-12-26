include $(TOPDIR)/rules.mk

PKG_NAME:=python-get-mac
PKG_VERSION:=0.9.2
PKG_RELEASE:=1

PYPI_NAME:=get-mac
PKG_HASH:=efe43103af18b3e1f71890ca208e235512cc3ea30b2074fe0e86f0ef54e05081

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-get-mac
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Get MAC addresses of remote hosts and local interfaces
  URL:=https://github.com/GhostofGoes/getmac
  DEPENDS:=+python3
endef

define Package/python3-get-mac/description
  Pure-Python package to get the MAC address of network interfaces and hosts on the local network.
endef

$(eval $(call Py3Package,python3-get-mac))
$(eval $(call BuildPackage,python3-get-mac))
$(eval $(call BuildPackage,python3-get-mac-src))
