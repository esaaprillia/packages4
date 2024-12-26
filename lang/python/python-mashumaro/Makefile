include $(TOPDIR)/rules.mk

PKG_NAME:=python-mashumaro
PKG_VERSION:=3.15
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=mashumaro
PKG_HASH:=32a2a38a1e942a07f2cbf9c3061cb2a247714ee53e36a5958548b66bd116d0a9

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-mashumaro
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Fast and well tested serialization library
  URL:=https://github.com/Fatal1ty/mashumaro
  DEPENDS:=+python3 +python3-typing-extensions
endef

define Package/python3-mashumaro/description
In Python, you often need to dump and load objects based on the schema you have. It can be a dataclass model, a list of third-party generic classes or whatever. Mashumaro not only lets you save and load things in different ways, but it also does it super quick.
endef

$(eval $(call Py3Package,python3-mashumaro))
$(eval $(call BuildPackage,python3-mashumaro))
$(eval $(call BuildPackage,python3-mashumaro-src))
