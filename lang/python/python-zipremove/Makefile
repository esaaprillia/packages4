include $(TOPDIR)/rules.mk

PKG_NAME:=python-zipremove
PKG_VERSION:=0.10.0
PKG_RELEASE:=1

PYPI_NAME:=zipremove
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-zipremove
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Extend zipfile with remove-related capabilities
  URL:=https://github.com/danny0838/zipremove
  DEPENDS:=+python3-light
endef

define Package/python3-zipremove/description
This package extends the native zipfile module with remove-related capabilities.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-zipremove))
$(eval $(call BuildPackage,python3-zipremove))
$(eval $(call BuildPackage,python3-zipremove-src))
