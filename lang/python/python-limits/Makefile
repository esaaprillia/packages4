include $(TOPDIR)/rules.mk

PKG_NAME:=python-limits
PKG_VERSION:=5.8.0
PKG_RELEASE:=1

PYPI_NAME:=limits
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-vcs/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-limits
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Rate limiting utilities
  URL:=https://github.com/alisaifee/limits
  DEPENDS:= \
	+python3 \
	+python3-deprecated \
	+python3-packaging \
	+python3-typing-extensions
endef

define Package/python3-limits/description
limits is a python library for rate limiting via multiple strategies with commonly used storage backends (Redis, Memcached & MongoDB).
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-limits))
$(eval $(call BuildPackage,python3-limits))
$(eval $(call BuildPackage,python3-limits-src))
