include $(TOPDIR)/rules.mk

PKG_NAME:=python-pycairo
PKG_VERSION:=1.29.0
PKG_RELEASE:=1

PYPI_NAME:=pycairo
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-2.1
PKG_LICENSE_FILES:=COPYING COPYING-LGPL-2.1 COPYING-MPL-1.1

PKG_BUILD_DEPENDS:=meson-python/host
HOST_BUILD_DEPENDS:=meson-python/host cairo/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../meson/meson.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pycairo
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python bindings for cairo
  URL:=https://github.com/pygobject/pycairo
  DEPENDS:=+python3 +libcairo
endef

define Package/python3-pycairo/description
  Pycairo is a Python module providing bindings for the cairo graphics library.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pycairo))
$(eval $(call BuildPackage,python3-pycairo))
$(eval $(call BuildPackage,python3-pycairo-src))
