include $(TOPDIR)/rules.mk

PKG_NAME:=python-jiter
PKG_VERSION:=0.8.2
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=jiter
PKG_HASH:=cd73d3e740666d0e639f678adb176fad25c1bcbdae88d8d7b857e1783bb4212d

PKG_BUILD_DEPENDS:=python-maturin/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-jiter
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Fast iterable JSON parser.
  URL:=https://crates.io/crates/jiter
  DEPENDS:=+python3 $(RUST_ARCH_DEPENDS)
endef

define Package/python3-jiter/description
This is a standalone version of the JSON parser used in pydantic-core. The recommendation is to only use this package directly if you do not use pydantic.
endef

$(eval $(call Py3Package,python3-jiter))
$(eval $(call BuildPackage,python3-jiter))
$(eval $(call BuildPackage,python3-jiter-src))
