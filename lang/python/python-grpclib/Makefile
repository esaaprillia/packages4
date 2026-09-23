include $(TOPDIR)/rules.mk

PKG_NAME:=python-grpclib
PKG_VERSION:=0.4.9
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt

PYPI_NAME:=grpclib
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-grpclib
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Pure-Python gRPC implementation for asyncio
  URL:=https://github.com/vmagamedov/grpclib
  DEPENDS:= \
	+python3 \
	+python3-h2 \
	+python3-multidict
endef

define Package/python3-grpclib/description
Pure-Python gRPC implementation for asyncio
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-grpclib))
$(eval $(call BuildPackage,python3-grpclib))
$(eval $(call BuildPackage,python3-grpclib-src))
