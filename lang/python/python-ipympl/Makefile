include $(TOPDIR)/rules.mk

PKG_NAME:=python-ipympl
PKG_VERSION:=0.10.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=ipympl
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-hatchling/host python-jupyterlab/host python-hatch-nodejs-version/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-ipympl
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Matplotlib Jupyter Extension
  URL:=https://github.com/matplotlib/ipympl
  DEPENDS:= \
	+python3-light \
	+python3-ipython \
	+python3-ipywidgets \
	+python3-matplotlib \
	+python3-numpy \
	+python3-pillow \
	+python3-traitlets
endef

define Package/python3-ipympl/description
Leveraging the Jupyter interactive widgets framework, ipympl enables the interactive features of matplotlib in the Jupyter notebook and in JupyterLab.
endef

define Py3Package/python3-ipympl/install
	$(INSTALL_DIR) $(1)/etc
	$(CP) $(PKG_INSTALL_DIR)/usr/etc/jupyter $(1)/etc/
	$(INSTALL_DIR) $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share/jupyter $(1)/usr/share/
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-ipympl))
$(eval $(call BuildPackage,python3-ipympl))
$(eval $(call BuildPackage,python3-ipympl-src))
