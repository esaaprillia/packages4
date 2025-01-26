include $(TOPDIR)/rules.mk

PKG_NAME:=python-wakeonlan
PKG_VERSION:=3.1.0
PKG_RELEASE:=1

PYPI_NAME:=wakeonlan
PKG_HASH:=aa12edc2587353528a89ad58a54c63212dc2a12226c186b7fcc02caa162cd962

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.rst

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-wakeonlan
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A small python module for wake on lan.
  URL:=https://pywakeonlan.readthedocs.io/
  DEPENDS:=+python3
endef

define Package/python3-wakeonlan/description
  A small python module for wake on lan.
endef

$(eval $(call Py3Package,python3-wakeonlan))
$(eval $(call BuildPackage,python3-wakeonlan))
$(eval $(call BuildPackage,python3-wakeonlan-src))
