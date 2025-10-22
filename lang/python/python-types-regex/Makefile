include $(TOPDIR)/rules.mk

PKG_NAME:=python-types-regex
PKG_VERSION:=2025.9.18.20250921
PKG_RELEASE:=1

PYPI_NAME:=types_regex
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

define Package/python3-types-regex
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Typing stubs for regex
  URL:=https://github.com/python/typeshed
  DEPENDS:=+python3
endef

define Package/python3-types-regex/description
This is a type stub package for the regex package. It can be used by type checkers to check code that uses regex.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-types-regex))
$(eval $(call BuildPackage,python3-types-regex))
$(eval $(call BuildPackage,python3-types-regex-src))
