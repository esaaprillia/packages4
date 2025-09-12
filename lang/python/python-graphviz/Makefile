include $(TOPDIR)/rules.mk

PKG_NAME:=python-graphviz
PKG_VERSION:=0.21
PKG_RELEASE:=1

PYPI_NAME:=graphviz
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-graphviz
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Simple Python interface for Graphviz
  URL:=https://github.com/xflr6/graphviz
  DEPENDS:=+python3-logging +python3-pydoc +python3-unittest
endef

define Package/python3-graphviz/description
   Simple Python interface for Graphviz.
endef

$(eval $(call Py3Package,python3-graphviz))
$(eval $(call BuildPackage,python3-graphviz))
$(eval $(call BuildPackage,python3-graphviz-src))


