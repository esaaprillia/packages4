include $(TOPDIR)/rules.mk

PKG_NAME:=python-zha
PKG_VERSION:=0.0.45
PKG_RELEASE:=1

PYPI_NAME:=zha
PKG_HASH:=51a753b1f406ad7fe084bfb78bb9057f572f525e72b4cb4dbd9a492e72efe75d

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-git-versioning/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-zha
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Library implementing ZHA for Home Assistant
  URL:=https://github.com/zigpy/zha
  DEPENDS:= \
	+python3-zigpy \
	+python3-bellows \
	+python3-zigpy-znp \
	+python3-zigpy-deconz \
	+python3-zigpy-xbee \
	+python3-zigpy-zigate \
	+python3-zha-quirks \
	+python3-pyserial \
	+python3-pyserial-asyncio-fast
endef

define Package/python3-zha/description
ZHA is a versatile and hardware-independent Zigbee gateway implementation, designed to replace proprietary Zigbee gateways, bridges, hubs, and controllers. With ZHA, you can create a unified Zigbee network, allowing you to easily pair and connect a wide range of Zigbee-based devices for home automation and lighting.
endef

$(eval $(call Py3Package,python3-zha))
$(eval $(call BuildPackage,python3-zha))
$(eval $(call BuildPackage,python3-zha-src))
