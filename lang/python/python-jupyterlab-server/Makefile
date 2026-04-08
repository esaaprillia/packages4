include $(TOPDIR)/rules.mk

PKG_NAME:=python-jupyterlab-server
PKG_VERSION:=2.28.0
PKG_RELEASE:=1

PYPI_NAME:=jupyterlab_server
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

define Package/python3-jupyterlab-server
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A set of server components for JupyterLab and JupyterLab like applications.
  URL:=http://jupyterlab-server.readthedocs.io
  DEPENDS:= \
	+python3 \
	+python3-babel \
	+python3-jinja2 \
	+python3-json5 \
	+python3-jsonschema \
	+python3-jupyter-server \
	+python3-packaging \
	+python3-requests
endef

define Package/python3-jupyterlab-server/description
JupyterLab Server sits between JupyterLab and Jupyter Server, and provides a set of REST API handlers and utilities that are used by JupyterLab. It is a separate project in order to accommodate creating JupyterLab-like applications from a more limited scope.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-jupyterlab-server))
$(eval $(call BuildPackage,python3-jupyterlab-server))
$(eval $(call BuildPackage,python3-jupyterlab-server-src))
