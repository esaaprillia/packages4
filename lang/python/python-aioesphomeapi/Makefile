include $(TOPDIR)/rules.mk

PKG_NAME:=python-aioesphomeapi
PKG_VERSION:=44.8.0
PKG_RELEASE:=1

PYPI_NAME:=aioesphomeapi
PKG_HASH:=skip

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
  DEPENDS:= \
	+python3 \
	+python3-aiohappyeyeballs \
	+python3-async-interrupt \
	+python3-protobuf \
	+python3-tzlocal \
	+python3-zeroconf \
	+python3-chacha20poly1305-reuseable \
	+python3-cryptography \
	+python3-noiseprotocol
endef

define Package/python3-aioesphomeapi/description
  aioesphomeapi allows you to interact with devices flashed with ESPHome.
endef

$(eval $(call Py3Package,python3-aioesphomeapi))
$(eval $(call BuildPackage,python3-aioesphomeapi))
$(eval $(call BuildPackage,python3-aioesphomeapi-src))
