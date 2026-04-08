include $(TOPDIR)/rules.mk

PKG_NAME:=python-jupyter-core
PKG_VERSION:=5.9.1
PKG_RELEASE:=1

PYPI_NAME:=jupyter_core
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host
HOST_BUILD_DEPENDS:= \
	python-hatchling/host \
	python-platformdirs/host \
	python-traitlets/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-jupyter-core
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Core Jupyter functionality
  URL:=https://jupyter-core.readthedocs.io/
  DEPENDS:=+python3 +python3-platformdirs +python3-traitlets
endef

define Package/python3-jupyter-core/description
  This package contains base application classes and configuration inherited by other projects. It doesn't do much on its own.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-jupyter-core))
$(eval $(call BuildPackage,python3-jupyter-core))
$(eval $(call BuildPackage,python3-jupyter-core-src))
