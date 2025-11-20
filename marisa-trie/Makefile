include $(TOPDIR)/rules.mk

PKG_NAME:=marisa-trie
PKG_VERSION:=0.3.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/s-yata/marisa-trie/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause OR LGPL-2.1-or-later
PKG_LICENSE_FILES:=COPYING.md

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_DEPENDS:=swig/host python-cython/host
PYTHON3_PKG_BUILD:=0

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/python/meson/cmake.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk

define Package/marisa-trie
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=MARISA: Matching Algorithm with Recursively Implemented StorAge
	DEPENDS:=+libstdcpp
	URL:=https://github.com/s-yata/marisa-trie
endef

define Package/marisa-trie/description
	Matching Algorithm with Recursively Implemented StorAge (MARISA) is a static and space-efficient trie data structure.
endef

PYTHON3_PKG_BUILD_PATH:=bindings/python3
PYTHON3_PKG_BUILD_ARGS += build_ext \
	--include-dirs="$(PKG_BUILD_DIR)/include" \
	--library-dirs="$(PKG_BUILD_DIR)"

define Package/python3-marisa-trie
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Static memory-efficient and fast Trie-like structures for Python.
  URL:=https://github.com/pytries/marisa-trie
  DEPENDS:=+python3 +marisa-trie
endef

define Package/python3-marisa-trie/description
Static memory-efficient Trie-like structures for Python (3.8+) based on marisa-trie C++ library.
endef

CMAKE_OPTIONS += \
	-DBUILD_TESTING=OFF \
	-DBUILD_SHARED_LIBS=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/marisa.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/marisa.pc
endef

define Package/marisa-trie/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,marisa-trie))
$(eval $(call Py3Package,python3-marisa-trie))
$(eval $(call BuildPackage,python3-marisa-trie))
$(eval $(call BuildPackage,python3-marisa-trie-src))
