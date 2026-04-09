include $(TOPDIR)/rules.mk

PKG_NAME:=python-ipywidgets
PKG_VERSION:=8.1.8
PKG_RELEASE:=1

PYPI_NAME:=ipywidgets
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-ipywidgets
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Jupyter interactive widgets
  URL:=https://ipywidgets.readthedocs.io/
  DEPENDS:= \
	+python3 \
	+python3-comm \
	+python3-ipython \
	+python3-traitlets \
	+python3-widgetsnbextension \
	+python3-jupyterlab-widgets
endef

define Package/python3-ipywidgets/description
  ipywidgets, also known as jupyter-widgets or simply widgets, are interactive HTML widgets for Jupyter notebooks and the IPython kernel.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-ipywidgets))
$(eval $(call BuildPackage,python3-ipywidgets))
$(eval $(call BuildPackage,python3-ipywidgets-src))
