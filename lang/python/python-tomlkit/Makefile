include $(TOPDIR)/rules.mk

PKG_NAME:=python-tomlkit
PKG_VERSION:=0.13.2
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=tomlkit
PKG_HASH:=fff5fe59a87295b278abd31bec92c15d9bc4a06885ab12bcea52c71119392e79

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-tomlkit
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Style preserving TOML library
  URL:=https://github.com/python-poetry/tomlkit
  DEPENDS:=+python3
endef

define Package/python3-tomlkit/description
TOML Kit is a 1.0.0-compliant TOML library.
It includes a parser that preserves all comments, indentations, whitespace and internal element ordering, and makes them accessible and editable via an intuitive API.
You can also create new TOML documents from scratch using the provided helpers.
Part of the implementation has been adapted, improved and fixed from Molten.
endef

$(eval $(call Py3Package,python3-tomlkit))
$(eval $(call BuildPackage,python3-tomlkit))
$(eval $(call BuildPackage,python3-tomlkit-src))
