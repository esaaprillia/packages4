include $(TOPDIR)/rules.mk

PKG_NAME:=python-aioasuswrt
PKG_VERSION:=1.4.0
PKG_RELEASE:=1

PYPI_NAME:=aioasuswrt
PKG_HASH:=e9644ae713e6ee8b16916367857d2bfc097586aa597d0ef5b01736610097fa08

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-aioasuswrt
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Api wrapper for Asuswrt
  URL:=https://github.com/kennedyshead/aioasuswrt
  DEPENDS:=+python3-light +python3-asyncssh
endef

define Package/python3-aioasuswrt/description
Small wrapper for asuswrt.
endef

$(eval $(call Py3Package,python3-aioasuswrt))
$(eval $(call BuildPackage,python3-aioasuswrt))
$(eval $(call BuildPackage,python3-aioasuswrt-src))
