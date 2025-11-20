include $(TOPDIR)/rules.mk

PKG_NAME:=python-kasa
PKG_VERSION:=0.10.2
PKG_RELEASE:=1

PYPI_NAME:=python_kasa
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0-or-later
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-kasa
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python API for TP-Link Kasa and Tapo devices
  URL:=https://github.com/python-kasa/python-kasa
  DEPENDS:=+python3 +python3-asyncclick +python3-cryptography +python3-aiohttp +python3-mashumaro +python3-orjson +python3-kasa-crypt
endef

define Package/python3-kasa/description
python-kasa is a Python library to control TPLink's smart home devices (plugs, wall switches, power strips, and bulbs).
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-kasa))
$(eval $(call BuildPackage,python3-kasa))
$(eval $(call BuildPackage,python3-kasa-src))
