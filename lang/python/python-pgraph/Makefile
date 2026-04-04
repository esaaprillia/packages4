include $(TOPDIR)/rules.mk

PKG_NAME:=python-pgraph
PKG_VERSION:=0.6.3
PKG_RELEASE:=1

PYPI_NAME:=pgraph_python
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-oldest-supported-numpy/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pgraph
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Mathematical graphs for Python
  URL:=https://github.com/petercorke/pgraph-python
  DEPENDS:= \
	+python3 \
	+python3-spatialmath \
	+python3-numpy \
	+python3-scipy \
	+python3-matplotlib
endef

define Package/python3-pgraph/description
This Python package allows the manipulation of directed and non-directed graphs. Also supports embedded graphs. It is suitable for graphs with thousands of nodes.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pgraph))
$(eval $(call BuildPackage,python3-pgraph))
$(eval $(call BuildPackage,python3-pgraph-src))
