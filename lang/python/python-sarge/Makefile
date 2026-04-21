include $(TOPDIR)/rules.mk

PKG_NAME:=python-sarge
PKG_VERSION:=0.1.8
PKG_RELEASE:=1

PYPI_NAME:=sarge
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-sarge
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A wrapper for subprocess which provides command pipeline functionality.
  URL:=https://github.com/vsajip/sarge
  DEPENDS:= \
	+python3
endef

define Package/python3-sarge/description
The sarge package provides a wrapper for subprocess which provides command pipeline functionality.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-sarge))
$(eval $(call BuildPackage,python3-sarge))
$(eval $(call BuildPackage,python3-sarge-src))
