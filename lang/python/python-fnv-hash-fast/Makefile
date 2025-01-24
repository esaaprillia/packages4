include $(TOPDIR)/rules.mk

PKG_NAME:=python-fnv-hash-fast
PKG_VERSION:=1.2.2
PKG_RELEASE:=1

PYPI_NAME:=fnv-hash-fast
PYPI_SOURCE_NAME:=fnv_hash_fast
PKG_HASH:=8f4c47a454994eefdffb388f7ae6098f4f0e7f95cb6aed802a6cdd4a3aa39a3c

PKG_MAINTAINER:=Timothy Ace <openwrt@timothyace.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cython/host python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-fnv-hash-fast
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A fast version of fnv1a
  URL:=https://github.com/bdraco/fnv-hash-fast
  DEPENDS:=+libstdcpp +python3-light +python3-fnvhash
endef

define Package/python3-fnv-hash-fast/description
A fast version of fnv1a. This library will use a CPP implementation of fnv1a
(32) if cython is available, and will fallback to pure python from the fnvhash
package if it is not.
endef

$(eval $(call Py3Package,python3-fnv-hash-fast))
$(eval $(call BuildPackage,python3-fnv-hash-fast))
$(eval $(call BuildPackage,python3-fnv-hash-fast-src))
