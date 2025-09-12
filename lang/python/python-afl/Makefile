include $(TOPDIR)/rules.mk

PKG_NAME:=python-afl
PKG_VERSION:=0.7.3
PKG_RELEASE:=1

PYPI_NAME:=python-afl
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cython/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-afl
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=American Fuzzy Lop fork server and instrumentation for pure-Python code
  URL:=http://jwilk.net/software/python-afl
  DEPENDS:=+python3
endef

define Package/python3-afl/description
  python-afl is an experimental module that enables American Fuzzy Lop fork server and instrumentation for pure-Python code.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-afl))
$(eval $(call BuildPackage,python3-afl))
$(eval $(call BuildPackage,python3-afl-src))
