include $(TOPDIR)/rules.mk

PKG_NAME:=python-samsungctl
PKG_VERSION:=0.7.1
PKG_RELEASE:=1

PYPI_NAME:=samsungctl
PKG_HASH:=2fc175fb730b39ebaed5d95db178a6daeec1b802146b0116ed13e7629a1bff46

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-samsungctl
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Remote control Samsung televisions via TCP/IP connection
  URL:=https://github.com/Ape/samsungctl
  DEPENDS:=+python3 +python3-websocket-client
endef

define Package/python3-samsungctl/description
samsungctl is a library and a command line tool for remote controlling Samsung televisions via a TCP/IP connection. It currently supports both pre-2016 TVs as well most of the modern Tizen-OS TVs with Ethernet or Wi-Fi connectivity.
endef

$(eval $(call Py3Package,python3-samsungctl))
$(eval $(call BuildPackage,python3-samsungctl))
$(eval $(call BuildPackage,python3-samsungctl-src))
