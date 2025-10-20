include $(TOPDIR)/rules.mk

PKG_NAME:=python-jupyterlab
PKG_VERSION:=4.4.9
PKG_RELEASE:=1

PYPI_NAME:=jupyterlab
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-jupyter-builder/host python-httpx/host python-jupyter-server/host python-tornado/host python-traitlets/host python-ipykernel/host python-notebook-shim/host python-async-lru/host python-jinja2/host python-jupyterlab-server/host python-jupyter-lsp/host python-jupyter-core/host python-jupyter-server-terminals/host python-prometheus-client/host python-nbconvert/host python-debugpy/host python-anyio/host python-terminado/host python-jsonschema/host python-nbformat/host python-jupyter-events/host python-websocket-client/host python-nest-asyncio/host python-certifi/host python-matplotlib-inline/host python-ipython/host python-argon2-cffi/host python-send2trash/host python-json5/host python-idna/host python-httpcore/host python-requests/host python-babel/host python-psutil/host
HOST_BUILD_DEPENDS:=python-hatchling/host python-hatch-jupyter-builder/host python-httpx/host python-jupyter-server/host python-tornado/host python-traitlets/host python-ipykernel/host python-notebook-shim/host python-async-lru/host python-jinja2/host python-jupyterlab-server/host python-jupyter-lsp/host python-jupyter-core/host python-jupyter-server-terminals/host python-prometheus-client/host python-nbconvert/host python-debugpy/host python-anyio/host python-terminado/host python-jsonschema/host python-nbformat/host python-jupyter-events/host python-websocket-client/host python-nest-asyncio/host python-certifi/host python-matplotlib-inline/host python-ipython/host python-argon2-cffi/host python-send2trash/host python-json5/host python-idna/host python-httpcore/host python-requests/host python-babel/host python-psutil/host

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
  DEPENDS:=+python3 +python3-async-lru +python3-httpx +python3-importlib-metadata +python3-ipykernel +python3-jinja2 +python3-jupyter-core +python3-jupyter-server +python3-jupyter-lsp +python3-jupyterlab-server +python3-notebook-shim +python3-packaging +python3-setuptools +python3-tornado +python3-traitlets
endef

define Package/python3-jupyterlab/description
  An extensible environment for interactive and reproducible computing, based on the Jupyter Notebook and Architecture.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-jupyterlab))
$(eval $(call BuildPackage,python3-jupyterlab))
$(eval $(call BuildPackage,python3-jupyterlab-src))
