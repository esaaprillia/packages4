include $(TOPDIR)/rules.mk

PKG_NAME:=python-aioitertools
PKG_VERSION:=0.13.0
PKG_RELEASE:=1

PYPI_NAME:=aioitertools
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-aioitertools
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=itertools and builtins for AsyncIO and mixed iterables
  URL:=https://aioitertools.omnilib.dev/
  DEPENDS:=+python3-light
endef

define Package/python3-aioitertools/description
Implementation of itertools, builtins, and more for AsyncIO and mixed-type iterables.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-aioitertools))
$(eval $(call BuildPackage,python3-aioitertools))
$(eval $(call BuildPackage,python3-aioitertools-src))
