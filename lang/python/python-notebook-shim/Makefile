include $(TOPDIR)/rules.mk

PKG_NAME:=python-notebook-shim
PKG_VERSION:=0.2.4
PKG_RELEASE:=1

PYPI_NAME:=notebook_shim
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host
HOST_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-notebook-shim
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A shim layer for notebook traits and config
  URL:=https://github.com/jupyter/notebook_shim
  DEPENDS:=+python3 +python3-jupyter-server
endef

define Package/python3-notebook-shim/description
This project provides a way for JupyterLab and other frontends to switch to Jupyter Server for their Python Web application backend.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-notebook-shim))
$(eval $(call BuildPackage,python3-notebook-shim))
$(eval $(call BuildPackage,python3-notebook-shim-src))
