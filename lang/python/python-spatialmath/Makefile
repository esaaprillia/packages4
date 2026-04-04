include $(TOPDIR)/rules.mk

PKG_NAME:=python-spatialmath
PKG_VERSION:=1.1.15
PKG_RELEASE:=1

PYPI_NAME:=spatialmath_python
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-oldest-supported-numpy/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-spatialmath
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Provides spatial maths capability for Python.
  URL:=https://bdaiinstitute.github.io/spatialmath-python/
  DEPENDS:= \
	+python3 \
	+python3-numpy \
	+python3-scipy \
	+python3-matplotlib \
	+python3-ansitable \
	+python3-typing-extensions
endef

define Package/python3-spatialmath/description
Spatial mathematics capability underpins all of robotics and robotic vision where we need to describe the position, orientation or pose of objects in 2D or 3D spaces.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-spatialmath))
$(eval $(call BuildPackage,python3-spatialmath))
$(eval $(call BuildPackage,python3-spatialmath-src))
