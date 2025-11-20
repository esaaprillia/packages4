include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiolimiter
PKG_VERSION:=1.2.1
PKG_RELEASE:=1

PYPI_NAME:=aiolimiter
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-aiolimiter
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=asyncio rate limiter, a leaky bucket implementation
  URL:=https://github.com/mjpieters/aiolimiter
  DEPENDS:=+python3
endef

define Package/python3-aiolimiter/description
An efficient implementation of a rate limiter for asyncio.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-aiolimiter))
$(eval $(call BuildPackage,python3-aiolimiter))
$(eval $(call BuildPackage,python3-aiolimiter-src))
