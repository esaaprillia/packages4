include $(TOPDIR)/rules.mk

PKG_NAME:=python-pybullet
PKG_VERSION:=3.2.7
PKG_RELEASE:=1

PYPI_NAME:=pybullet
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=zlib
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=numpy/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../meson/meson.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pybullet
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Official Python Interface for the Bullet Physics SDK specialized for Robotics Simulation and Reinforcement Learning
  URL:=https://github.com/bulletphysics/bullet3
  DEPENDS:=+python3 +python3-numpy
endef

define Package/python3-pybullet/description
pybullet is an easy to use Python module for physics simulation, robotics and deep reinforcement learning based on the Bullet Physics SDK. With pybullet you can load articulated bodies from URDF, SDF and other file formats.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pybullet))
$(eval $(call BuildPackage,python3-pybullet))
$(eval $(call BuildPackage,python3-pybullet-src))
