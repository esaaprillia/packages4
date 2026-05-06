include $(TOPDIR)/rules.mk

PKG_NAME:=python-smmap
PKG_VERSION:=5.0.3
PKG_RELEASE:=1

PYPI_NAME:=smmap
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-smmap
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A pure Python implementation of a sliding window memory map manager
  URL:=https://github.com/gitpython-developers/smmap
  DEPENDS:= \
	+python3
endef

define Package/python3-smmap/description
When reading from many possibly large files in a fashion similar to random access, it is usually the fastest and most efficient to use memory maps.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-smmap))
$(eval $(call BuildPackage,python3-smmap))
$(eval $(call BuildPackage,python3-smmap-src))
