include $(TOPDIR)/rules.mk

PKG_NAME:=python-importlib-metadata
PKG_VERSION:=9.0.0
PKG_RELEASE:=1

PYPI_NAME:=importlib_metadata
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-coherent-licensed/host
HOST_BUILD_DEPENDS:= \
	python3/host \
	python-setuptools-scm/host \
	python-coherent-licensed/host \
	python-zipp/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-importlib-metadata
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Read metadata from Python packages
  URL:=https://importlib-metadata.readthedocs.io/
  DEPENDS:=+python3 +python3-zipp
endef

define Package/python3-importlib-metadata/description
  This package supplies third-party access to the functionality of importlib.metadata including improvements added to subsequent Python versions.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-importlib-metadata))
$(eval $(call BuildPackage,python3-importlib-metadata))
$(eval $(call BuildPackage,python3-importlib-metadata-src))
