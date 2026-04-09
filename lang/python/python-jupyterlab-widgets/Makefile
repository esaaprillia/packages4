include $(TOPDIR)/rules.mk

PKG_NAME:=python-jupyterlab-widgets
PKG_VERSION:=3.0.16
PKG_RELEASE:=1

PYPI_NAME:=jupyterlab_widgets
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host python-jupyterlab/host python-hatch-jupyter-builder/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-jupyterlab-widgets
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Jupyter interactive widgets for JupyterLab
  URL:=https://ipywidgets.readthedocs.io/
  DEPENDS:=+python3 python3-jupyterlab
endef

define Package/python3-jupyterlab-widgets/description
  A JupyterLab 3.0 extension for Jupyter/IPython widgets.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-jupyterlab-widgets))
$(eval $(call BuildPackage,python3-jupyterlab-widgets))
$(eval $(call BuildPackage,python3-jupyterlab-widgets-src))
