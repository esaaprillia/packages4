include $(TOPDIR)/rules.mk

PKG_NAME:=python-asusrouter
PKG_VERSION:=1.13.1
PKG_RELEASE:=1

PYPI_NAME:=asusrouter
PKG_HASH:=766f4d571923c48adf72e5b54ed195d72c0ac20b6c4f2305c3ee0b18bcf8bd7c

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-asusrouter
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=API wrapper for communication with ASUSWRT-powered routers using HTTP protocol
  URL:=https://github.com/Vaskivskyi/asusrouter
  DEPENDS:=+python3-light +python3-aiohttp python3-dateutil +python3-urllib3 +python3-xmltodict
endef

define Package/python3-asusrouter/description
AsusRouter is an API wrapper for communication with ASUSWRT-powered routers using HTTP(S) protocols. The library supports both the stock AsusWRT firmware and AsusWRT-Merlin.
Up till now, it is mostly used for the custom AsusRouter Home Assistant integration. But I am always open to making it suitable for any other use.
endef

$(eval $(call Py3Package,python3-asusrouter))
$(eval $(call BuildPackage,python3-asusrouter))
$(eval $(call BuildPackage,python3-asusrouter-src))
