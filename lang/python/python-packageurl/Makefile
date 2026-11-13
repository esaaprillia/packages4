include $(TOPDIR)/rules.mk

PKG_NAME:=python-packageurl
PKG_VERSION:=0.17.6
PKG_RELEASE:=1

PYPI_NAME:=packageurl_python
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

define Package/python3-packageurl
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A purl aka. Package URL parser and builder
  URL:=https://github.com/package-url/packageurl-python
  DEPENDS:=+python3-light
endef

define Package/python3-packageurl/description
Python library to parse and build purl aka.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-packageurl))
$(eval $(call BuildPackage,python3-packageurl))
$(eval $(call BuildPackage,python3-packageurl-src))
