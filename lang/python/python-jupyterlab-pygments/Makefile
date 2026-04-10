include $(TOPDIR)/rules.mk

PKG_NAME:=python-jupyterlab-pygments
PKG_VERSION:=0.3.0
PKG_RELEASE:=2

PYPI_NAME:=jupyterlab_pygments
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host python-jupyterlab/host python-hatch-nodejs-version/host python-hatch-jupyter-builder/host
HOST_BUILD_DEPENDS:=python-hatchling/host python-jupyterlab/host python-hatch-nodejs-version/host python-hatch-jupyter-builder/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-jupyterlab-pygments
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Pygments theme using JupyterLab CSS variables
  URL:=https://github.com/jupyterlab/jupyterlab_pygments
  DEPENDS:=+python3 +python3-pygments
endef

define Package/python3-jupyterlab-pygments/description
  This package contains a syntax coloring theme for pygments making use of the JupyterLab CSS variables.
endef

define Py3Package/python3-jupyterlab-pygments/install
	$(INSTALL_DIR) $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share/jupyter $(1)/usr/share/
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-jupyterlab-pygments))
$(eval $(call BuildPackage,python3-jupyterlab-pygments))
$(eval $(call BuildPackage,python3-jupyterlab-pygments-src))
