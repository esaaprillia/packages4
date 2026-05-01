include $(TOPDIR)/rules.mk

PKG_NAME:=backward-cpp
PKG_VERSION:=1.6
PKG_RELEASE:=1

#PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
#PKG_SOURCE_URL:=https://github.com/bombela/backward-cpp/archive/v$(PKG_VERSION)
#PKG_HASH:=skip

PKG_SOURCE_URL:=https://github.com/bombela/backward-cpp.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=0bfd0a07a61551413ccd2ab9a9099af3bad40681
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=binutils libdwarf elfutils libunwind

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/backward-cpp
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=A beautiful stack trace pretty printer for C++
	DEPENDS:=+libstdcpp +libbz2 +libdw +libelf +libunwind +liblzma +libzstd +zlib
	URL:=https://github.com/bombela/backward-cpp
endef

define Package/backward-cpp/description
	Backward is a beautiful stack trace pretty printer for C++.
endef

CMAKE_OPTIONS += \
	-DBACKWARD_TESTS=OFF \
	-DBACKWARD_SHARED=ON \
	-DBACKWARD_HAS_LIBUNWIND=1 \
	-DCMAKE_CXX_FLAGS= -Wno-pedantic-errors

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/backward-cpp/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,backward-cpp))
