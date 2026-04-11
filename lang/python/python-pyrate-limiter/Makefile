include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyrate-limiter
PKG_VERSION:=4.1.0
PKG_RELEASE:=1

PYPI_NAME:=pyrate_limiter
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host python-uv-dynamic-versioning/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pyrate-limiter
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python Rate-Limiter using Leaky-Bucket Algorithm
  URL:=https://pyratelimiter.readthedocs.io/
  DEPENDS:=+python3
endef

define Package/python3-pyrate-limiter/description
The request rate limiter using Leaky-bucket Algorithm.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pyrate-limiter))
$(eval $(call BuildPackage,python3-pyrate-limiter))
$(eval $(call BuildPackage,python3-pyrate-limiter-src))
