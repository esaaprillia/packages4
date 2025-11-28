include $(TOPDIR)/rules.mk

PKG_NAME:=python-rfc3986
PKG_VERSION:=2.0.0
PKG_RELEASE:=1

PYPI_NAME:=rfc3986
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-rfc3986
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Validating URI References per RFC 3986
  URL:=http://rfc3986.readthedocs.io/
  DEPENDS:=+python3 +python3-idna
endef

define Package/python3-rfc3986/description
A Python implementation of RFC 3986 including validation and authority parsing.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-rfc3986))
$(eval $(call BuildPackage,python3-rfc3986))
$(eval $(call BuildPackage,python3-rfc3986-src))
