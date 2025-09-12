include $(TOPDIR)/rules.mk

PKG_NAME:=python-fnvhash
PKG_VERSION:=0.2.1
PKG_RELEASE:=1

PYPI_NAME:=fnvhash
PKG_HASH:=skip

PKG_MAINTAINER:=Timothy Ace <openwrt@timothyace.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-fnvhash
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Pure Python FNV hash implementation
  URL:=https://github.com/znerol/py-fnvhash
  DEPENDS:=+python3-light
endef

define Package/python3-fnvhash/description
Pure Python implementation of the FNV hash family with 100% test coverage.
endef

$(eval $(call Py3Package,python3-fnvhash))
$(eval $(call BuildPackage,python3-fnvhash))
$(eval $(call BuildPackage,python3-fnvhash-src))
