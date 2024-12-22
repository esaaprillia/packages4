include $(TOPDIR)/rules.mk

PKG_NAME:=python-async-interrupt
PKG_VERSION:=1.2.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=async_interrupt
PKG_HASH:=d147559e2478501ad45ea43f52df23b246456715a7cb96e1aebdb4b71aed43d5

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-async-interrupt
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Context manager to raise an exception when a future is done
  URL:=https://github.com/bdraco/async_interrupt
  DEPENDS:=+python3
endef

define Package/python3-async-interrupt/description
Interrupt context manager for asyncio.
This module provides a context manager that can be used to interrupt a block of code as soon as possible when a future is done.
The purpose is to raise as soon as possible to avoid any race conditions.
This is based loosely on async_timeout by Andrew Svetlov and cpython asyncio.timeout
endef

$(eval $(call Py3Package,python3-async-interrupt))
$(eval $(call BuildPackage,python3-async-interrupt))
$(eval $(call BuildPackage,python3-async-interrupt-src))
