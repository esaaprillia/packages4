include $(TOPDIR)/rules.mk

PKG_NAME:=python-partd
PKG_VERSION:=1.4.2
PKG_RELEASE:=1

PYPI_NAME:=partd
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-versioneer/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-partd
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Appendable key-value storage
  URL:=http://github.com/dask/partd/
  DEPENDS:= \
	+python3-light \
	+python3-locket \
	+python3-toolz
endef

define Package/python3-partd/description
Key-value byte store with appendable values
endef

$(eval $(call Py3Package,python3-partd))
$(eval $(call BuildPackage,python3-partd))
$(eval $(call BuildPackage,python3-partd-src))
