include $(TOPDIR)/rules.mk

PKG_NAME:=python-httpx2
PKG_VERSION:=2.13.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.md

PYPI_NAME:=httpx2
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-fancy-pypi-readme/host python-uv-dynamic-versioning/host
HOST_BUILD_DEPENDS:=python-hatchling/host python-hatch-fancy-pypi-readme/host python-uv-dynamic-versioning/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-httpx2
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A next generation HTTP client for Python.
  URL:=https://github.com/pydantic/httpx2
  DEPENDS:= \
	+python3 \
	+python3-truststore \
	+python3-httpcore2 \
	+python3-anyio \
	+python3-httpx2-jsfetch \
	+python3-idna \
	+python3-typing-extensions
endef

define Package/python3-httpx2/description
HTTPX2 is a fully featured HTTP client library for Python. It includes an integrated command line client, has support for both HTTP/1.1 and HTTP/2, and provides both sync and async APIs.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-httpx2))
$(eval $(call BuildPackage,python3-httpx2))
$(eval $(call BuildPackage,python3-httpx2-src))
