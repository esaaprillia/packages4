include $(TOPDIR)/rules.mk

PKG_NAME:=python-jupyter-lsp
PKG_VERSION:=2.3.1
PKG_RELEASE:=2

PYPI_NAME:=jupyter_lsp
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-jupyter-server/host
HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-jupyter-server/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-jupyter-lsp
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Multi-Language Server WebSocket proxy for Jupyter Notebook/Lab server
  URL:=https://jupyterlab-lsp.readthedocs.io/
  DEPENDS:=+python3 +python3-jupyter-server
endef

define Package/python3-jupyter-lsp/description
Coding assistance for JupyterLab (code navigation + hover suggestions + linters + autocompletion + rename) using Language Server Protocol
endef

define Py3Package/python3-jupyter-lsp/install
	$(INSTALL_DIR) $(1)/etc
	$(CP) $(PKG_INSTALL_DIR)/usr/etc/jupyter $(1)/etc/
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-jupyter-lsp))
$(eval $(call BuildPackage,python3-jupyter-lsp))
$(eval $(call BuildPackage,python3-jupyter-lsp-src))
