include $(TOPDIR)/rules.mk

PKG_NAME:=python-rtb-data
PKG_VERSION:=1.0.1
PKG_RELEASE:=1

PYPI_NAME:=rtb-data
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

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
