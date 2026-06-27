include $(TOPDIR)/rules.mk

PKG_NAME:=python-debugpy
PKG_VERSION:=1.8.21
PKG_RELEASE:=1

PYPI_NAME:=debugpy
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-debugpy
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=An implementation of the Debug Adapter Protocol for Python
  URL:=https://github.com/microsoft/debugpy
  DEPENDS:=+python3
endef

define Package/python3-debugpy/description
debugpy is an implementation of the Debug Adapter Protocol for Python.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-debugpy))
$(eval $(call BuildPackage,python3-debugpy))
$(eval $(call BuildPackage,python3-debugpy-src))
