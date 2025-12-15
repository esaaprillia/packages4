include $(TOPDIR)/rules.mk

PKG_NAME:=python-pycync
PKG_VERSION:=0.5.0
PKG_RELEASE:=1

PYPI_NAME:=pycync
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pycync
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A Python library to communicate with Cync devices.
  URL:=https://github.com/Kinachi249/pycync
  DEPENDS:=+python3 +python3-aiohttp
endef

define Package/python3-pycync/description
PyCync is a Python API library for interfacing with Cync smart devices.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pycync))
$(eval $(call BuildPackage,python3-pycync))
$(eval $(call BuildPackage,python3-pycync-src))
