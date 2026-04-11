include $(TOPDIR)/rules.mk

PKG_NAME:=python-ijson
PKG_VERSION:=3.5.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause AND ISC
PKG_LICENSE_FILES:=LICENSE.txt

PYPI_NAME:=ijson
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-ijson
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Iterative JSON parser with standard Python iterator interfaces
  URL:=https://github.com/ICRAR/ijson
  DEPENDS:= \
	+python3-light \
	+yajl
endef

define Package/python3-ijson/description
Ijson is an iterative JSON parser with standard Python iterator interfaces.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-ijson))
$(eval $(call BuildPackage,python3-ijson))
$(eval $(call BuildPackage,python3-ijson-src))
