include $(TOPDIR)/rules.mk

PKG_NAME:=python-h3
PKG_VERSION:=4.3.1
PKG_RELEASE:=1

PYPI_NAME:=h3
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-scikit-build-core/host python-cython/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-h3
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python bindings for H3
  URL:=https://uber.github.io/h3-py/
  DEPENDS:=+python3 +python3-numpy
endef

define Package/python3-h3/description
h3-py: Uber's H3 Hexagonal Hierarchical Geospatial Indexing System in Python
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-h3))
$(eval $(call BuildPackage,python3-h3))
$(eval $(call BuildPackage,python3-h3-src))
