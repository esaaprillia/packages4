include $(TOPDIR)/rules.mk

PKG_NAME:=python-snitun
PKG_VERSION:=0.45.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=snitun
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-snitun
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=SNI proxy with TCP multiplexer
  URL:=https://github.com/NabuCasa/snitun
  DEPENDS:=+python3 +python3-aiohttp +python3-async-timeout +python3-attrs +python3-cryptography
endef

define Package/python3-snitun/description
End-to-End encryption with SNI proxy on top of a TCP multiplexer
endef

$(eval $(call Py3Package,python3-snitun))
$(eval $(call BuildPackage,python3-snitun))
$(eval $(call BuildPackage,python3-snitun-src))
