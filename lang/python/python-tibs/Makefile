include $(TOPDIR)/rules.mk

PKG_NAME:=python-tibs
PKG_VERSION:=2.0.2
PKG_RELEASE:=1

PYPI_NAME:=tibs
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-maturin/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-tibs
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A sleek Python library for binary data.
  URL:=https://github.com/scott-griffiths/tibs
  DEPENDS:= \
	+python3-light
endef

define Package/python3-tibs/description
tibs is a Python library for binary data. It's 100% written in Rust and has excellent performance.
endef

$(eval $(call Py3Package,python3-tibs))
$(eval $(call BuildPackage,python3-tibs))
$(eval $(call BuildPackage,python3-tibs-src))
