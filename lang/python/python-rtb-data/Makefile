include $(TOPDIR)/rules.mk

PKG_NAME:=rtb-data
PKG_VERSION:=1.1.0
PKG_RELEASE:=1

#PYPI_NAME:=rtb-data
#PKG_HASH:=skip

PKG_SOURCE_URL:=https://github.com/petercorke/robotics-toolbox-python.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=2a8111b10dd09c5ce8b8a94495c84ff27bcb6862
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

PYTHON3_PKG_SETUP_DIR:=rtb-data

define Package/python3-rtb-data
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Data files for the Robotics Toolbox for Python.
  URL:=https://github.com/petercorke/roboticstoolbox-python
  DEPENDS:= \
	+python3
endef

define Package/python3-rtb-data/description
Robotics Toolbox for Python - data files
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-rtb-data))
$(eval $(call BuildPackage,python3-rtb-data))
$(eval $(call BuildPackage,python3-rtb-data-src))
