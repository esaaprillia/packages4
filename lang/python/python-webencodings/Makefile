include $(TOPDIR)/rules.mk

PKG_NAME:=python-webencodings
PKG_VERSION:=0.5.1
PKG_RELEASE:=1

PYPI_NAME:=webencodings
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-webencodings
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Character encoding aliases for legacy web content
  URL:=https://bleach.readthedocs.io
  DEPENDS:=+python3
endef

define Package/python3-webencodings/description
  This is a Python implementation of the WHATWG Encoding standard.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-webencodings))
$(eval $(call BuildPackage,python3-webencodings))
$(eval $(call BuildPackage,python3-webencodings-src))
