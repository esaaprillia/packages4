#
# Copyright (C) 2023
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

PKG_NAME:=python-aio-mqtt-mod
PKG_VERSION:=0.4.0
PKG_RELEASE:=1

PYPI_NAME:=aio_mqtt_mod
PKG_HASH:=skip

PKG_MAINTAINER:=Quintin Hill <stuff@quintin.me.uk>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-aio-mqtt-mod
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Asynchronous MQTT client
  URL:=https://github.com/devbis/aio-mqtt
  DEPENDS:=+python3-light +python3-asyncio
endef

define Package/python3-aio-mqtt-mod/description
  Asynchronous MQTT client for 3.1.1 protocol version (mod).
endef

$(eval $(call Py3Package,python3-aio-mqtt-mod))
$(eval $(call BuildPackage,python3-aio-mqtt-mod))
$(eval $(call BuildPackage,python3-aio-mqtt-mod-src))
