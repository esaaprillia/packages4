include $(TOPDIR)/rules.mk

PKG_NAME:=python-isort
PKG_VERSION:=5.13.2
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=isort
PKG_HASH:=48fdfcb9face5d58a4f6dde2e72a1fb8dcaf8ab26f95ab49fab84c2ddefb0109

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-isort
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A Python utility / library to sort imports.
  URL:=https://pycqa.github.io/isort/
  DEPENDS:=+python3 +python3-toml +python3-colorama
endef

define Package/python3-isort/description
isort your imports, so you don't have to.
isort is a Python utility / library to sort imports alphabetically and automatically separate into sections and by type. It provides a command line utility, Python library and plugins for various editors to quickly sort all your imports. It requires Python 3.8+ to run but supports formatting Python 2 code too.
endef

$(eval $(call Py3Package,python3-isort))
$(eval $(call BuildPackage,python3-isort))
$(eval $(call BuildPackage,python3-isort-src))
