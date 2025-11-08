include $(TOPDIR)/rules.mk

PKG_NAME:=python-pytradfri
PKG_VERSION:=14.0.0
PKG_RELEASE:=1

PYPI_NAME:=pytradfri
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pytradfri
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=IKEA Trådfri/Tradfri API. Control and observe your lights from Python.
  URL:=https://github.com/home-assistant-libs/pytradfri
  DEPENDS:=+python3 +python3-aiocoap +python3-dtlssocket +python3-pydantic
endef

define Package/python3-pytradfri/description
Python package to communicate with IKEA's Trådfri (Tradfri) ZigBee gateway. By using this library you can communicate with the gateway and control IKEA's lights, wall plugs and other peripherals.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pytradfri))
$(eval $(call BuildPackage,python3-pytradfri))
$(eval $(call BuildPackage,python3-pytradfri-src))
