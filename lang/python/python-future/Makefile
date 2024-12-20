include $(TOPDIR)/rules.mk

PKG_NAME:=python-future
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PYPI_NAME:=future
PKG_HASH:=bd2968309307861edae1458a4f8a4f3598c03be43b97521076aebf5d94c07b05

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-future
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Clean single-source support for Python 3 and 2
  URL:=http://python-future.org/
  DEPENDS:=+python3 +python3-setuptools
endef

define Package/python3-future/description
future is the missing compatibility layer between Python 2 and Python 3. It allows you to use a single, clean Python 3.x-compatible codebase to support both Python 2 and Python 3 with minimal overhead.
endef

$(eval $(call Py3Package,python3-future))
$(eval $(call BuildPackage,python3-future))
$(eval $(call BuildPackage,python3-future-src))
