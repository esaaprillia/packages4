include $(TOPDIR)/rules.mk

PKG_NAME:=python-esptool
PKG_VERSION:=4.8.1
PKG_RELEASE:=1

PYPI_NAME:=esptool
PKG_HASH:=dc4ef26b659e1a8dcb019147c0ea6d94980b34de99fbe09121c7941c8b254531

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-esptool
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Espressif SoC serial bootloader utility
  URL:=https://docs.espressif.com/projects/esptool
  DEPENDS:=+python3 +python3-bitstring +python3-cryptography +python3-ecdsa +python3-intelhex +python3-pyserial +python3-reedsolo +python3-yaml +python3-pkcs11
endef

define Package/python3-esptool/description
  A Python-based, open-source, platform-independent utility to communicate with the ROM bootloader in Espressif chips.
endef

$(eval $(call Py3Package,python3-esptool))
$(eval $(call BuildPackage,python3-esptool))
$(eval $(call BuildPackage,python3-esptool-src))
