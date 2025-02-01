include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyasuswrt
PKG_VERSION:=0.1.21
PKG_RELEASE:=1

PYPI_NAME:=pyasuswrt
PKG_HASH:=ffee28f789512eea42ce182ba6a89fa2f5a31a423daf4fdcf6bad48a813a196f

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pyasuswrt
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=API wrapper written in python for communication with ASUSWRT routers via HTTP
  URL:=https://github.com/ollo69/pyasuswrt
  DEPENDS:=+python3-light +python3-aiohttp
endef

define Package/python3-pyasuswrt/description
PyAsusWrt is a small API wrapper written in python for communication with ASUSWRT-powered routers using the HTTP or HTTPS protocols.
endef

$(eval $(call Py3Package,python3-pyasuswrt))
$(eval $(call BuildPackage,python3-pyasuswrt))
$(eval $(call BuildPackage,python3-pyasuswrt-src))
