include $(TOPDIR)/rules.mk

PKG_NAME:=python-commentjson
PKG_VERSION:=0.9.0
PKG_RELEASE:=1

PYPI_NAME:=commentjson
PKG_HASH:=42f9f231d97d93aff3286a4dc0de39bfd91ae823d1d9eba9fa901fe0c7113dd4

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.rst

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-commentjson
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Add Python and JavaScript style comments in your JSON files.
  URL:=https://github.com/vaidik/commentjson
  DEPENDS:=+python3-light +python3-lark-parser
endef

define Package/python3-commentjson/description
commentjson (Comment JSON) is a Python package that helps you create JSON files with Python and JavaScript style inline comments. Its API is very similar to the Python standard library’s json module.
endef

$(eval $(call Py3Package,python3-commentjson))
$(eval $(call BuildPackage,python3-commentjson))
$(eval $(call BuildPackage,python3-commentjson-src))
