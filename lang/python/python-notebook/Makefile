include $(TOPDIR)/rules.mk

PKG_NAME:=python-notebook
PKG_VERSION:=7.5.5
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=notebook
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-jupyter-builder/host python-jupyterlab/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-notebook
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Jupyter Notebook - A web-based notebook environment for interactive computing
  URL:=https://github.com/jupyter/notebook
  DEPENDS:= \
	+python3-light \
	+python3-jupyter-server \
	+python3-jupyterlab \
	+python3-jupyterlab-server \
	+python3-notebook-shim \
	+python3-tornado
endef

define Package/python3-notebook/description
The Jupyter notebook is a web-based notebook environment for interactive computing.
endef

define Py3Package/python3-notebook/install
	$(INSTALL_DIR) $(1)/etc
	$(CP) $(PKG_INSTALL_DIR)/usr/etc/jupyter $(1)/etc/
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share/{applications,icons,jupyter} $(1)/usr/share/
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-notebook))
$(eval $(call BuildPackage,python3-notebook))
$(eval $(call BuildPackage,python3-notebook-src))
