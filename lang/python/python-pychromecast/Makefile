include $(TOPDIR)/rules.mk

PKG_NAME:=python-pychromecast
PKG_VERSION:=14.0.10
PKG_RELEASE:=1

PYPI_NAME:=pychromecast
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pychromecast
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python module to talk to Google Chromecast.
  URL:=https://github.com/home-assistant-libs/pychromecast
  DEPENDS:=+python3 +python3-protobuf +python3-zeroconf +python3-casttube
endef

define Package/python3-pychromecast/description
Library for Python 3.11+ to communicate with the Google Chromecast.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pychromecast))
$(eval $(call BuildPackage,python3-pychromecast))
$(eval $(call BuildPackage,python3-pychromecast-src))
