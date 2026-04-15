include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiomqtt
PKG_VERSION:=2.5.1
PKG_RELEASE:=1

PYPI_NAME:=aiomqtt
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-aiomqtt
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=The idiomatic asyncio MQTT client
  URL:=https://aiomqtt.bo3hm.com/
  DEPENDS:= \
	+python3 \
	+python3-paho-mqtt
endef

define Package/python3-aiomqtt/description
The idiomatic asyncio MQTT client
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-aiomqtt))
$(eval $(call BuildPackage,python3-aiomqtt))
$(eval $(call BuildPackage,python3-aiomqtt-src))
