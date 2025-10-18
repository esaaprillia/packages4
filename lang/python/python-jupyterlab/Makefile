include $(TOPDIR)/rules.mk

PKG_NAME:=python-jupyterlab
PKG_VERSION:=4.4.9
PKG_RELEASE:=1

PYPI_NAME:=jupyterlab
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-hatchling/host python-hatch-jupyter-builder/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-jupyterlab
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=JupyterLab computational environment
  URL:=https://jupyterlab.readthedocs.io/
  DEPENDS:=+python3
endef

define Package/python3-jupyterlab/description
  An extensible environment for interactive and reproducible computing, based on the Jupyter Notebook and Architecture.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-jupyterlab))
$(eval $(call BuildPackage,python3-jupyterlab))
$(eval $(call BuildPackage,python3-jupyterlab-src))
