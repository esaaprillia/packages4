include $(TOPDIR)/rules.mk

PKG_NAME:=python-supermemory
PKG_VERSION:=3.62.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=supermemory
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-fancy-pypi-readme/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-supermemory
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=The official Python library for the supermemory API
  URL:=https://github.com/supermemoryai/python-sdk
  DEPENDS:= \
	+python3 \
	+python3-httpx \
	+python3-pydantic \
	+python3-typing-extensions \
	+python3-anyio \
	+python3-distro \
	+python3-sniffio
endef

define Package/python3-supermemory/description
The Supermemory Python library provides convenient access to the Supermemory REST API from any Python 3.9+ application.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-supermemory))
$(eval $(call BuildPackage,python3-supermemory))
$(eval $(call BuildPackage,python3-supermemory-src))
