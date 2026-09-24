include $(TOPDIR)/rules.mk

PKG_NAME:=python-httpx-ws
PKG_VERSION:=0.9.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=httpx_ws
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-regex-commit/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-httpx-ws
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=WebSockets support for HTTPX
  URL:=https://github.com/frankie567/httpx-ws
  DEPENDS:= \
	+python3 \
	+python3-anyio \
	+python3-httpx \
	+python3-httpcore \
	+python3-wsproto
endef

define Package/python3-httpx-ws/description
WebSockets support for HTTPX
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-httpx-ws))
$(eval $(call BuildPackage,python3-httpx-ws))
$(eval $(call BuildPackage,python3-httpx-ws-src))
