include $(TOPDIR)/rules.mk

PKG_NAME:=python-types-certifi
PKG_VERSION:=2021.10.8.3
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=types-certifi
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-types-certifi
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Typing stubs for certifi
  URL:=https://github.com/python/typeshed
  DEPENDS:= \
	+python3
endef

define Package/python3-types-certifi/description
This is a PEP 561 type stub package for the certifi package.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-types-certifi))
$(eval $(call BuildPackage,python3-types-certifi))
$(eval $(call BuildPackage,python3-types-certifi-src))
