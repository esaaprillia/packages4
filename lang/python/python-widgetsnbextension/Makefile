include $(TOPDIR)/rules.mk

PKG_NAME:=python-widgetsnbextension
PKG_VERSION:=4.0.15
PKG_RELEASE:=1

PYPI_NAME:=widgetsnbextension
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-jupyter-packaging/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-widgetsnbextension
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Jupyter interactive widgets for Jupyter Notebook
  URL:=http://jupyter.org/
  DEPENDS:=+python3
endef

define Package/python3-widgetsnbextension/description
  This package makes Jupyter widgets available in the classic Jupyter Notebook. This package provides the necessary JavaScript controls in the Jupyter Notebook that communicate with the widget objects in the kernel.
endef

define Py3Package/python3-widgetsnbextension/install
	$(INSTALL_DIR) $(1)/etc
	$(CP) $(PKG_INSTALL_DIR)/usr/etc/jupyter $(1)/etc/
	$(INSTALL_DIR) $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share/jupyter $(1)/usr/share/
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-widgetsnbextension))
$(eval $(call BuildPackage,python3-widgetsnbextension))
$(eval $(call BuildPackage,python3-widgetsnbextension-src))
