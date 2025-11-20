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

define Package/libmarisa
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=MARISA: Matching Algorithm with Recursively Implemented StorAge
	DEPENDS:=+libstdcpp
	URL:=https://github.com/s-yata/marisa-trie
endef

define Package/libmarisa/description
	Matching Algorithm with Recursively Implemented StorAge (MARISA) is a static and space-efficient trie data structure.
endef

define Package/python3-marisa
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=MARISA: Matching Algorithm with Recursively Implemented StorAge (python module)
  URL:=https://github.com/s-yata/marisa-trie
  DEPENDS:=+python3 +libmarisa
endef

define Package/python3-marisa/description
Matching Algorithm with Recursively Implemented StorAge (MARISA) is a static and space-efficient trie data structure.
endef

PYTHON3_PKG_BUILD_PATH:=bindings/python3
PYTHON3_PKG_BUILD_ARGS += build_ext \
	--include-dirs="$(PKG_BUILD_DIR)/include" \
	--library-dirs="$(PKG_BUILD_DIR)"

CMAKE_OPTIONS += \
	-DBUILD_TESTING=OFF \
	-DBUILD_SHARED_LIBS=ON

define Build/Compile
	$(call Build/Compile/Default)
	$(call Py3Build/Compile)
endef

define Build/Install
	$(call Build/Install/Default)
	$(call Py3Build/Install)
endef

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/marisa.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/marisa.pc
endef

define Package/libmarisa/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libmarisa))
$(eval $(call Py3Package,python3-marisa))
$(eval $(call BuildPackage,python3-marisa))
$(eval $(call BuildPackage,python3-marisa-src))
