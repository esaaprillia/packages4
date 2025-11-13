include $(TOPDIR)/rules.mk

PKG_NAME:=python-invoke
PKG_VERSION:=2.2.1
PKG_RELEASE:=1

PYPI_NAME:=invoke
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-invoke
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Pythonic task execution
  URL:=https://pyinvoke.org/
  DEPENDS:=+python3
endef

define Package/python3-invoke/description
Invoke is a Python (2.7 and 3.4+) library for managing shell-oriented subprocesses and organizing executable Python code into CLI-invokable tasks. It draws inspiration from various sources (make/rake, Fabric 1.x, etc) to arrive at a powerful & clean feature set.
endef

$(eval $(call Py3Package,python3-invoke))
$(eval $(call BuildPackage,python3-invoke))
$(eval $(call BuildPackage,python3-invoke-src))
