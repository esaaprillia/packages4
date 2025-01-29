include $(TOPDIR)/rules.mk

PKG_NAME:=python-librouteros
PKG_VERSION:=3.4.1
PKG_RELEASE:=1

PYPI_NAME:=librouteros
PKG_HASH:=132a377dc139486c7088f448407f0a1ef491cc90c265d7f4dd8612b128208665

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-librouteros
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python implementation of MikroTik RouterOS API
  URL:=https://github.com/luqasz/librouteros
  DEPENDS:=+python3 +python3-toml
endef

define Package/python3-librouteros/description
Python implementation of routeros api. This library uses semantic versioning. On major version things may break, so pin version in dependencies.
endef

$(eval $(call Py3Package,python3-librouteros))
$(eval $(call BuildPackage,python3-librouteros))
$(eval $(call BuildPackage,python3-librouteros-src))