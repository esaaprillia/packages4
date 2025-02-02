include $(TOPDIR)/rules.mk

PKG_NAME:=python-anyio
PKG_VERSION:=4.8.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=anyio
PKG_HASH:=1d9fe889df5212298c0c0723fa20479d1b94883a2df44bd3897aa91083316f7a

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-anyio
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=High level compatibility layer for multiple asynchronous event loop implementations
  URL:=https://github.com/agronholm/anyio
  DEPENDS:=+python3-light +python3-exceptiongroup +python3-idna +python3-sniffio +python3-typing-extensions
endef

define Package/python3-anyio/description
AnyIO is an asynchronous networking and concurrency library that works on top of either asyncio or trio. It implements trio-like structured concurrency (SC) on top of asyncio and works in harmony with the native SC of trio itself.

Applications and libraries written against AnyIO’s API will run unmodified on either asyncio or trio. AnyIO can also be adopted into a library or application incrementally – bit by bit, no full refactoring necessary. It will blend in with the native libraries of your chosen backend.
endef

$(eval $(call Py3Package,python3-anyio))
$(eval $(call BuildPackage,python3-anyio))
$(eval $(call BuildPackage,python3-anyio-src))
$(eval $(call HostBuild))
