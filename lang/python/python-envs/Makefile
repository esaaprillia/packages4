include $(TOPDIR)/rules.mk

PKG_NAME:=python-envs
PKG_VERSION:=1.4
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=envs
PKG_HASH:=9d8435c6985d1cdd68299e04c58e2bdb8ae6cf66b2596a8079e6f9a93f2a0398

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-envs
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Easy access of environment variables from Python.
  URL:=https://pypi.org/project/envs
  DEPENDS:=+python3 +python3-terminaltables +python3-jinja2 +python3-click
endef

define Package/python3-envs/description
Easy access of environment variables from Python with support for strings, booleans, list, tuples, and dicts.
endef

$(eval $(call Py3Package,python3-envs))
$(eval $(call BuildPackage,python3-envs))
$(eval $(call BuildPackage,python3-envs-src))
