include $(TOPDIR)/rules.mk

PKG_NAME:=python-onvif-zeep-async
PKG_VERSION:=4.0.4
PKG_RELEASE:=1

PYPI_NAME:=onvif_zeep_async
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-onvif-zeep-async
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Async Python Client for ONVIF Camera
  URL:=http://github.com/hunterjm/python-onvif-zeep-async
  DEPENDS:= \
	+python3-light \
	+python3-aiohttp \
	+python3-httpx \
	+python3-zeep \
	+python3-httpx \
	+python3-packaging \
	+python3-ciso8601 \
	+python3-yarl
endef

define Package/python3-onvif-zeep-async/description
ONVIF Client Implementation in Python 3
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-onvif-zeep-async))
$(eval $(call BuildPackage,python3-onvif-zeep-async))
$(eval $(call BuildPackage,python3-onvif-zeep-async-src))
