include $(TOPDIR)/rules.mk

PKG_NAME:=python-file-read-backwards
PKG_VERSION:=3.2.0
PKG_RELEASE:=1

PYPI_NAME:=file_read_backwards
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-file-read-backwards
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Memory efficient way of reading files line-by-line from the end of file
  URL:=https://file-read-backwards.readthedocs.io/
  DEPENDS:=+python3
endef

define Package/python3-file-read-backwards/description
This package is for reading file backward line by line as unicode in a memory efficient manner for both Python 2.7 and Python 3.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-file-read-backwards))
$(eval $(call BuildPackage,python3-file-read-backwards))
$(eval $(call BuildPackage,python3-file-read-backwards-src))
