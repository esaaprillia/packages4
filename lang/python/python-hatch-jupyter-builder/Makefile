include $(TOPDIR)/rules.mk

PKG_NAME:=python-hatch-jupyter-builder
PKG_VERSION:=0.9.1
PKG_RELEASE:=1

PYPI_NAME:=hatch_jupyter_builder
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt

HOST_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-hatch-jupyter-builder
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A hatch plugin to help build Jupyter packages
  URL:=https://hatch-jupyter-builder.readthedocs.io
  DEPENDS:=+python3
endef

define Package/python3-hatch-jupyter-builder/description
  This provides a build hook plugin for Hatch that adds a build step for use with Jupyter packages.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-hatch-jupyter-builder))
$(eval $(call BuildPackage,python3-hatch-jupyter-builder))
$(eval $(call BuildPackage,python3-hatch-jupyter-builder-src))
