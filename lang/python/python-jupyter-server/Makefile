include $(TOPDIR)/rules.mk

PKG_NAME:=python-jupyter-server
PKG_VERSION:=2.17.0
PKG_RELEASE:=1

PYPI_NAME:=jupyter_server
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-jupyter-builder/host
HOST_BUILD_DEPENDS:=python-hatchling/host python-hatch-jupyter-builder/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-jupyter-server
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=The backend—i.e. core services, APIs, and REST endpoints—to Jupyter web applications.
  URL:=https://jupyter-server.readthedocs.io/
  DEPENDS:= \
	+python3 \
	+python3-anyio \
	+python3-argon2-cffi \
	+python3-jinja2 \
	+python3-jupyter-client \
	+python3-jupyter-core \
	+python3-jupyter-server-terminals \
	+python3-nbconvert \
	+python3-nbformat \
	+python3-packaging \
	+python3-prometheus-client \
	+python3-pyzmq \
	+python3-send2trash \
	+python3-terminado \
	+python3-tornado \
	+python3-traitlets \
	+python3-websocket-client \
	+python3-jupyter-events \
	+python3-overrides
endef

define Package/python3-jupyter-server/description
  The Jupyter Server provides the backend (i.e. the core services, APIs, and REST endpoints) for Jupyter web applications like Jupyter notebook, JupyterLab, and Voila.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-jupyter-server))
$(eval $(call BuildPackage,python3-jupyter-server))
$(eval $(call BuildPackage,python3-jupyter-server-src))
