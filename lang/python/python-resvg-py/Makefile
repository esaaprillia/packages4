include $(TOPDIR)/rules.mk

PKG_NAME:=python-resvg-py
PKG_VERSION:=0.5.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:= resvg_py
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-maturin/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-resvg-py
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=High level wrapper of resvg for python
  URL:=https://github.com/baseplate-admin/resvg-py
  DEPENDS:= \
	+python3 \
	$(RUST_ARCH_DEPENDS)
endef

define Package/python3-resvg-py/description
A safe and high level binding for the resvg project
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-resvg-py))
$(eval $(call BuildPackage,python3-resvg-py))
$(eval $(call BuildPackage,python3-resvg-py-src))
