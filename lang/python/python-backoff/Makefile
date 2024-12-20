include $(TOPDIR)/rules.mk

PKG_NAME:=python-backoff
PKG_VERSION:=2.2.1
PKG_RELEASE:=1

PYPI_NAME:=backoff
PKG_HASH:=03f829f5bb1923180821643f8753b0502c3b682293992485b0eef2807afa5cba

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-backoff
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Function decoration for backoff and retry
  URL:=https://github.com/litl/backoff
  DEPENDS:=+python3
endef

define Package/python3-backoff/description
This module provides function decorators which can be used to wrap a function such that it will be retried until some condition is met. It is meant to be of use when accessing unreliable resources with the potential for intermittent failures i.e. network resources and external APIs. Somewhat more generally, it may also be of use for dynamically polling resources for externally generated content.
Decorators support both regular functions for synchronous code and asyncio’s coroutines for asynchronous code.
endef

$(eval $(call Py3Package,python3-backoff))
$(eval $(call BuildPackage,python3-backoff))
$(eval $(call BuildPackage,python3-backoff-src))
