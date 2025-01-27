include $(TOPDIR)/rules.mk

PKG_NAME:=python-guppy3
PKG_VERSION:=3.1.5
PKG_RELEASE:=1

PYPI_NAME:=guppy3
PKG_HASH:=97fbe606a23f837ad109d122bf30fba355785add2dcb68e9a6be335846dd4c48

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cython/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-guppy3
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Guppy-PE ported to Python 3
  URL:=https://github.com/zhuyifei1999/guppy3/
  DEPENDS:=+python3-readline
endef

define Package/python3-guppy3/description
  A Python Programming Environment & Heap analysis toolset.
endef

$(eval $(call Py3Package,python3-guppy3))
$(eval $(call BuildPackage,python3-guppy3))
$(eval $(call BuildPackage,python3-guppy3-src))
