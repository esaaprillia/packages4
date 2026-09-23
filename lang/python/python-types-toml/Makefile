include $(TOPDIR)/rules.mk

PKG_NAME:=python-types-toml
PKG_VERSION:=0.10.8.20260518
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:= types_toml
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-types-toml
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Typing stubs for toml
  URL:=https://github.com/python/typeshed
  DEPENDS:= \
	+python3
endef

define Package/python3-types-toml/description
This is a type stub package for the toml package.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-types-toml))
$(eval $(call BuildPackage,python3-types-toml))
$(eval $(call BuildPackage,python3-types-toml-src))
