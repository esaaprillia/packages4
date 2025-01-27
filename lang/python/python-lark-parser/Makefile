include $(TOPDIR)/rules.mk

PKG_NAME:=python-lark-parser
PKG_VERSION:=0.12.0
PKG_RELEASE:=1

PYPI_NAME:=lark-parser
PKG_HASH:=15967db1f1214013dca65b1180745047b9be457d73da224fcda3d9dd4e96a138

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-lark-parser
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=a modern parsing library
  URL:=https://github.com/lark-parser/lark
  DEPENDS:=+python3
endef

define Package/python3-lark-parser/description
Lark is a modern general-purpose parsing library for Python.
With Lark, you can parse any context-free grammar, efficiently, with very little code.
endef

$(eval $(call Py3Package,python3-lark-parser))
$(eval $(call BuildPackage,python3-lark-parser))
$(eval $(call BuildPackage,python3-lark-parser-src))
