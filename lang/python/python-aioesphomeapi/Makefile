include $(TOPDIR)/rules.mk

PKG_NAME:=python-aioesphomeapi
PKG_VERSION:=28.0.1
PKG_RELEASE:=1

PYPI_NAME:=aioesphomeapi
PKG_HASH:=716a6b114a26be5a14896518656a3c880bf1f42da37d99bceea5d076ea311c0b

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cython/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-aioesphomeapi
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python API for interacting with ESPHome devices.
  URL:=https://esphome.io/
  DEPENDS:=+python3 +python3-aiohappyeyeballs +python3-async-timeout +python3-async-interrupt +python3-chacha20poly1305-reuseable +python3-cryptography +python3-noiseprotocol +python3-protobuf +python3-zeroconf
endef

define Package/python3-aioesphomeapi/description
  aioesphomeapi allows you to interact with devices flashed with ESPHome.
endef

$(eval $(call Py3Package,python3-aioesphomeapi))
$(eval $(call BuildPackage,python3-aioesphomeapi))
$(eval $(call BuildPackage,python3-aioesphomeapi-src))
