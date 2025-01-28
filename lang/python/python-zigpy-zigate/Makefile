include $(TOPDIR)/rules.mk

PKG_NAME:=python-zigpy-zigate
PKG_VERSION:=0.13.2
PKG_RELEASE:=1

PYPI_NAME:=zigpy_zigate
PKG_HASH:=09be77737fdbda9ef439996878ac1c04e8fdedc91f284c9ec05d338bce404802

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0-or-later
PKG_LICENSE_FILES:=COPYING LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-git-versioning/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-zigpy-zigate
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A library which communicates with ZiGate radios
  URL:=https://github.com/zigpy/zigpy-zigate
  DEPENDS:= \
	+python3-asyncio \
	+python3-logging \
	+python3-urllib \
	+python3-gpiozero \
	+python3-pyusb \
	+python3-voluptuous \
	+python3-zigpy \
	+python3-async-timeout
endef

define Package/python3-zigpy-zigate/description
  zigpy-zigate is a Python 3 implementation for the Zigpy
  project to implement ZiGate based Zigbee radio devices.
endef

$(eval $(call Py3Package,python3-zigpy-zigate))
$(eval $(call BuildPackage,python3-zigpy-zigate))
$(eval $(call BuildPackage,python3-zigpy-zigate-src))
