include $(TOPDIR)/rules.mk

PKG_NAME:=python-lapx
PKG_VERSION:=0.13.1
PKG_RELEASE:=1

PYPI_NAME:=lapx
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=numpy/host python-cython/host python-pybind11/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-lapx
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Linear assignment problem solvers, including single and batch solvers.
  URL:=https://github.com/rathaROG/lapx
  DEPENDS:= \
	+python3-light \
	+python3-numpy
endef

define Package/python3-lapx/description
lapx started as a project to maintain Tomas Kazmar's lap, a Jonker-Volgenant solver package.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-lapx))
$(eval $(call BuildPackage,python3-lapx))
$(eval $(call BuildPackage,python3-lapx-src))
