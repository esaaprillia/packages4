include $(TOPDIR)/rules.mk

PKG_NAME:=python-segno
PKG_VERSION:=1.6.6
PKG_RELEASE:=1

PYPI_NAME:=segno
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-segno
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=QR Code and Micro QR Code generator for Python
  URL:=https://github.com/heuer/segno/
  DEPENDS:=+python3
endef

define Package/python3-segno/description
Pure Python QR Code generator with no dependencies.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-segno))
$(eval $(call BuildPackage,python3-segno))
$(eval $(call BuildPackage,python3-segno-src))
