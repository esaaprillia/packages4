include $(TOPDIR)/rules.mk

PKG_NAME:=python-objgraph
PKG_VERSION:=3.6.2
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=objgraph
PKG_HASH:=00b9f2f40f7422e3c7f45a61c4dafdaf81f03ff0649d6eaec866f01030e51ad8

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-objgraph
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Draws Python object reference graphs with graphviz
  URL:=http://mg.pov.lt/objgraph/
  DEPENDS:=+python3 +python3-graphviz
endef

define Package/python3-objgraph/description
objgraph is a module that lets you visually explore Python object graphs.
You’ll need graphviz if you want to draw the pretty graphs.
I recommend xdot for interactive use. pip install xdot should suffice; objgraph will automatically look for it in your PATH.
endef

$(eval $(call Py3Package,python3-objgraph))
$(eval $(call BuildPackage,python3-objgraph))
$(eval $(call BuildPackage,python3-objgraph-src))
