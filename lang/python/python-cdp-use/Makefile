include $(TOPDIR)/rules.mk

PKG_NAME:=python-cdp-use
PKG_VERSION:=1.4.5
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=cdp_use
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-cdp-use
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Type safe generator/client library for CDP
  URL:=https://github.com/browser-use/cdp-use
  DEPENDS:= \
	+python3 \
	+python3-httpx \
	+python3-idna \
	+python3-typing-extensions \
	+python3-websockets
endef

define Package/python3-cdp-use/description
A type-safe Python client generator for the Chrome DevTools Protocol (CDP). This library automatically generates Python bindings with full TypeScript-like type safety from the official CDP protocol specifications.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-cdp-use))
$(eval $(call BuildPackage,python3-cdp-use))
$(eval $(call BuildPackage,python3-cdp-use-src))
