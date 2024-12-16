include $(TOPDIR)/rules.mk

PKG_NAME:=python-ulid-transform
PKG_VERSION:=1.0.2
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=ulid_transform
PKG_HASH:=9b710f6adb93a7620910bce385c7e977a234ab321443ec3bc1e48ae931f1e5d4

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-poetry-core/host python-cython/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-ulid-transform
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Create and transform ULIDs
  URL:=https://github.com/bdraco/ulid-transform
  DEPENDS:=+python3 +libstdcpp
endef

define Package/python3-ulid-transform/description
Create and transform ULIDs

This library will use the CPP implementation from https://github.com/suyash/ulid if cython is available, and will fallback to pure python if it is not.
endef

$(eval $(call Py3Package,python3-ulid-transform))
$(eval $(call BuildPackage,python3-ulid-transform))
$(eval $(call BuildPackage,python3-ulid-transform-src))
