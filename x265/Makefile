include $(TOPDIR)/rules.mk

PKG_NAME:=x265
PKG_VERSION:=4.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)_$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://bitbucket.org/multicoreware/x265_git/downloads/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=nasm/host

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)_$(PKG_VERSION)

CMAKE_BINARY_SUBDIR := build-12
CMAKE_SOURCE_SUBDIR := source

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/x265
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Open Source H265/HEVC video encoder
	DEPENDS:=+numactl +libstdcpp
	URL:=https://bitbucket.org/multicoreware/x265_git
endef

define Package/x265/description
Open Source H265/HEVC video encoder
endef

CMAKE_OPTIONS += -Wno-dev \
	-DCMAKE_BUILD_TYPE=Release \
	-DCMAKE_INSTALL_PREFIX=/usr \
	-DHIGH_BIT_DEPTH=TRUE \
	-DMAIN12=TRUE \
	-DEXPORT_C_API=FALSE \
	-DENABLE_CLI=FALSE \
	-DENABLE_SHARED=FALSE \
	-DENABLE_ASSEMBLY=OFF \
	-DCMAKE_ASM_NASM_FLAGS=-w-macro-params-legacy

define Build/InstallDev
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/build
	$(CP) $(PKG_BUILD_DIR)/build-12/libx265.a $(PKG_BUILD_DIR)/build/libx265_main12.a
endef

$(eval $(call BuildPackage,x265))

include $(TOPDIR)/rules.mk

PKG_NAME:=x265
PKG_VERSION:=4.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)_$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://bitbucket.org/multicoreware/x265_git/downloads/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=nasm/host

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)_$(PKG_VERSION)

CMAKE_BINARY_SUBDIR := build-10
CMAKE_SOURCE_SUBDIR := source

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/x265
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Open Source H265/HEVC video encoder
	DEPENDS:=+numactl +libstdcpp
	URL:=https://bitbucket.org/multicoreware/x265_git
endef

define Package/x265/description
Open Source H265/HEVC video encoder
endef

CMAKE_OPTIONS += -Wno-dev \
	-DCMAKE_BUILD_TYPE=Release \
	-DCMAKE_INSTALL_PREFIX=/usr \
	-DHIGH_BIT_DEPTH=TRUE \
	-DEXPORT_C_API=FALSE \
	-DENABLE_CLI=FALSE \
	-DENABLE_SHARED=FALSE \
	-DENABLE_ASSEMBLY=OFF \
	-DCMAKE_ASM_NASM_FLAGS=-w-macro-params-legacy

define Build/InstallDev
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/build
	$(CP) $(PKG_BUILD_DIR)/build-10/libx265.a $(PKG_BUILD_DIR)/build/libx265_main10.a
endef

$(eval $(call BuildPackage,x265))

include $(TOPDIR)/rules.mk

PKG_NAME:=x265
PKG_VERSION:=4.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)_$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://bitbucket.org/multicoreware/x265_git/downloads/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=nasm/host

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)_$(PKG_VERSION)

CMAKE_BINARY_SUBDIR := build
CMAKE_SOURCE_SUBDIR := source

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/x265
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Open Source H265/HEVC video encoder
	DEPENDS:=+numactl +libstdcpp
	URL:=https://bitbucket.org/multicoreware/x265_git
endef

define Package/x265/description
Open Source H265/HEVC video encoder
endef

CMAKE_OPTIONS += -Wno-dev \
	-DCMAKE_BUILD_TYPE=Release \
	-DCMAKE_INSTALL_PREFIX=/usr \
	-DEXTRA_LIB='x265_main10.a;x265_main12.a' \
	-DEXTRA_LINK_FLAGS='-L.' \
	-DLINKED_10BIT=TRUE \
	-DLINKED_12BIT=TRUE \
	-DCMAKE_ASM_NASM_FLAGS=-w-macro-params-legacy

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/x265.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/x265.pc
endef

define Package/x265/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/x265 \
	  $(1)/usr/bin/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,x265))
