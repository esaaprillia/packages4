include $(TOPDIR)/rules.mk

PKG_NAME:=python-marisa-trie
PKG_VERSION:=1.4.1
PKG_RELEASE:=1

PYPI_NAME:=marisa_trie
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cython/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-marisa-trie
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Static memory-efficient and fast Trie-like structures for Python.
  URL:=https://github.com/pytries/marisa-trie
  DEPENDS:=+python3 +libstdcpp
endef

define Package/python3-marisa-trie/description
Static memory-efficient Trie-like structures for Python (3.8+) based on marisa-trie C++ library.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-marisa-trie))
$(eval $(call BuildPackage,python3-marisa-trie))
$(eval $(call BuildPackage,python3-marisa-trie-src))
