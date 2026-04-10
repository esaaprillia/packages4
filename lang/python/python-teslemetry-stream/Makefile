include $(TOPDIR)/rules.mk

PKG_NAME:=python-teslemetry-stream
PKG_VERSION:=0.9.0
PKG_RELEASE:=1

PYPI_NAME:=teslemetry_stream
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-teslemetry-stream
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Teslemetry Streaming API library for Python
  URL:=https://github.com/Teslemetry/teslemetry_stream
  DEPENDS:= \
	+python3-light \
	+python3-aiohttp
endef

define Package/python3-teslemetry-stream/description
  This is an asynchronous Python 3 library that connects to the Teslemetry Stream service and provides Tesla Fleet Telemetry using server sent events.
  The library allows you to listen to various telemetry signals from Tesla vehicles, and provides a convenient way to handle these signals using typed listen methods.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-teslemetry-stream))
$(eval $(call BuildPackage,python3-teslemetry-stream))
$(eval $(call BuildPackage,python3-teslemetry-stream-src))
