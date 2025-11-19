include $(TOPDIR)/rules.mk

PKG_NAME:=python-httpx-sse
PKG_VERSION:=0.4.3
PKG_RELEASE:=1

PYPI_NAME:=httpx_sse
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-httpx-sse
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Consume Server-Sent Event (SSE) messages with HTTPX.
  URL:=https://github.com/florimondmanca/httpx-sse
  DEPENDS:=+python3
endef

define Package/python3-httpx-sse/description
Consume Server-Sent Event (SSE) messages with HTTPX.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-httpx-sse))
$(eval $(call BuildPackage,python3-httpx-sse))
$(eval $(call BuildPackage,python3-httpx-sse-src))
