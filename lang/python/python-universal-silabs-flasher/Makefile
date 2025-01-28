include $(TOPDIR)/rules.mk

PKG_NAME:=python-universal-silabs-flasher
PKG_VERSION:=0.0.28
PKG_RELEASE:=1

PYPI_NAME:=universal_silabs_flasher
PKG_HASH:=6343a450fdb15f84b43c4cddf340f4f820cd9995b833baa566dc57db119b1316

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-git-versioning/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-universal-silabs-flasher
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Tool to flash firmware onto any Silicon Labs radio running EmberZNet, CPC multi-PAN, or just a bare Gecko Bootloader
  URL:=https://github.com/NabuCasa/universal-silabs-flasher
  DEPENDS:= \
	+python3-aiohttp \
	+python3-click \
	+python3-zigpy \
	+python3-crc \
	+python3-bellows \
	+python3-gpiod \
	+python3-coloredlogs \
	+python3-async-timeout \
	+python3-typing-extensions \
	+python3-pyserial-asyncio-fast
endef

define Package/python3-universal-silabs-flasher/description
  Automatically communicates with radios over CPC, EZSP, or Spinel to enter the bootloader and then flashes a firmware image with XMODEM.
endef

$(eval $(call Py3Package,python3-universal-silabs-flasher))
$(eval $(call BuildPackage,python3-universal-silabs-flasher))
$(eval $(call BuildPackage,python3-universal-silabs-flasher-src))
