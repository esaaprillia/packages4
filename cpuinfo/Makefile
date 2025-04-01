include $(TOPDIR)/rules.mk

PKG_NAME:=cpuinfo
PKG_VERSION:=2025-30-01
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/pytorch/cpuinfo.git
PKG_SOURCE_VERSION:=aaac07ee499895770c89163ce0920ef8bb41ed23
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/cpuinfo
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=CPU INFOrmation library (x86/x86-64/ARM/ARM64, Linux/Windows/Android/macOS/iOS)
	DEPENDS:=
	URL:=https://github.com/pytorch/cpuinfo
endef

define Package/cpuinfo/description
	cpuinfo is a library to detect essential for performance optimization information about host CPU.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DCPUINFO_BUILD_UNIT_TESTS=OFF \
	-DCPUINFO_BUILD_MOCK_TESTS=OFF \
	-DCPUINFO_BUILD_BENCHMARKS=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libcpuinfo.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libcpuinfo.pc
endef

define Package/cpuinfo/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/bin/
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,cpuinfo))
