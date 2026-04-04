include $(TOPDIR)/rules.mk

PKG_NAME:=python-swift-sim
PKG_VERSION:=1.1.0
PKG_RELEASE:=1

PYPI_NAME:=swift-sim
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

define Package/python3-swift-sim
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A Python/Javascript Robot Simulator and Visualiser
  URL:=https://github.com/jhavl/swift
  DEPENDS:= \
	+python3 \
	+python3-numpy \
	+python3-spatialgeometry \
	+python3-websockets
endef

define Package/python3-swift-sim/description
Swift is a light-weight browser-based simulator built on top of the Robotics Toolbox for Python.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-swift-sim))
$(eval $(call BuildPackage,python3-swift-sim))
$(eval $(call BuildPackage,python3-swift-sim-src))
