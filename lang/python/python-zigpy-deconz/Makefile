include $(TOPDIR)/rules.mk

PKG_NAME:=python-zigpy-deconz
PKG_VERSION:=0.24.1
PKG_RELEASE:=1

PYPI_NAME:=zigpy_deconz
PKG_HASH:=c72a33ab9ca175f1c874b5fdc52b20b692a068dcd73d46973a4a097c3e8d6062

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0-or-later
PKG_LICENSE_FILES:=COPYING LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-git-versioning/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-zigpy-deconz
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A library which communicates with Deconz radios
  URL:=https://github.com/zigpy/zigpy-deconz
  DEPENDS:=+python3-asyncio +python3-logging +python3-voluptuous +python3-zigpy +python3-async-timeout
endef

define Package/python3-zigpy-deconz/description
  zigpy-deconz is a Python 3 implementation for the Zigpy
  project to implement deCONZ based Zigbee radio devices.
endef

$(eval $(call Py3Package,python3-zigpy-deconz))
$(eval $(call BuildPackage,python3-zigpy-deconz))
$(eval $(call BuildPackage,python3-zigpy-deconz-src))
