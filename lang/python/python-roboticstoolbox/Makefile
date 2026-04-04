include $(TOPDIR)/rules.mk

PKG_NAME:=python-roboticstoolbox
PKG_VERSION:=1.1.1
PKG_RELEASE:=1

PYPI_NAME:=roboticstoolbox_python
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

define Package/python3-roboticstoolbox
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A Python library for robotics education and research
  URL:=https://github.com/petercorke/robotics-toolbox-python
  DEPENDS:= \
	+python3 \
	+python3-numpy \
	+python3-spatialmath \
	+python3-spatialgeometry \
	+python3-pgraph \
	+python3-scipy \
	+python3-matplotlib \
	+python3-ansitable \
	+python3-swift-sim \
	+python3-rtb-data \
	+python3-progress \
	+python3-typing-extensions
endef

define Package/python3-roboticstoolbox/description
Robotics Toolbox for Python
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-roboticstoolbox))
$(eval $(call BuildPackage,python3-roboticstoolbox))
$(eval $(call BuildPackage,python3-roboticstoolbox-src))
