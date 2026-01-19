include $(TOPDIR)/rules.mk

PKG_NAME:=python-reolink-aio
PKG_VERSION:=0.18.0
PKG_RELEASE:=1

PYPI_NAME:=reolink_aio
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-reolink-aio
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Reolink NVR/camera API PyPI package
  URL:=https://github.com/starkillerOG/reolink_aio
  DEPENDS:= \
	+python3 \
	+python3-aiohttp \
	+python3-aiortsp \
	+python3-orjson \
	+python3-cryptodomex \
	+python3-typing-extensions
endef

define Package/python3-reolink-aio/description
This is a package implementing Reolink IP NVR and camera API. Also it’s providing a way to subscribe to Reolink ONVIF SWN events, so that real-time events can be received on a webhook.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-reolink-aio))
$(eval $(call BuildPackage,python3-reolink-aio))
$(eval $(call BuildPackage,python3-reolink-aio-src))
