include $(TOPDIR)/rules.mk

PKG_NAME:=python-httpcore2
PKG_VERSION:=2.13.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.md

PYPI_NAME:=httpcore2
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-fancy-pypi-readme/host python-uv-dynamic-versioning/host
HOST_BUILD_DEPENDS:=python-hatchling/host python-hatch-fancy-pypi-readme/host python-uv-dynamic-versioning/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-httpcore2
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A minimal low-level HTTP client.
  URL:=https://github.com/pydantic/httpx2
  DEPENDS:= \
	+python3 \
	+python3-truststore \
	+python3-h11
endef

define Package/python3-httpcore2/description
The HTTPCore 2 package provides a minimal low-level HTTP client, which does one thing only. Sending HTTP requests.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-httpcore2))
$(eval $(call BuildPackage,python3-httpcore2))
$(eval $(call BuildPackage,python3-httpcore2-src))
