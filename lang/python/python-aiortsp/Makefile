include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiortsp
PKG_VERSION:=1.4.0
PKG_RELEASE:=1

PYPI_NAME:=aiortsp
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-3.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-aiortsp
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=An Asyncio-based RTSP library
  URL:=https://github.com/marss/aiortsp
  DEPENDS:=+python3-light +python3-dpkt
endef

define Package/python3-aiortsp/description
This is a very simple asyncio library for interacting with an RTSP server, with basic RTP/RTCP support.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-aiortsp))
$(eval $(call BuildPackage,python3-aiortsp))
$(eval $(call BuildPackage,python3-aiortsp-src))
