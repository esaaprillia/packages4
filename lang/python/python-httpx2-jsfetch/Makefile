include $(TOPDIR)/rules.mk

PKG_NAME:=python-httpx2-jsfetch
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.md

PYPI_NAME:=httpx2_jsfetch
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-hatchling/host python-uv-dynamic-versioning/host
HOST_BUILD_DEPENDS:=python-hatchling/host python-uv-dynamic-versioning/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-httpx2-jsfetch
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=httpx2 transports for Pyodide
  URL:=https://github.com/hoodmane/httpx2-jsfetch
  DEPENDS:= \
	+python3
endef

define Package/python3-httpx2-jsfetch/description
httpx2 transports for Emscripten/Pyodide, backed by the JavaScript fetch API.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-httpx2-jsfetch))
$(eval $(call BuildPackage,python3-httpx2-jsfetch))
$(eval $(call BuildPackage,python3-httpx2-jsfetch-src))
