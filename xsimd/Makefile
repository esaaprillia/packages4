include $(TOPDIR)/rules.mk

PKG_NAME:=xsimd
PKG_VERSION:=14.1.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/xtensor-stack/xsimd/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/xsimd
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=C++ wrappers for SIMD intrinsics and parallelized
	DEPENDS:=
	URL:=https://xsimd.readthedocs.io/
endef

define Package/xsimd/description
	SIMD (Single Instruction, Multiple Data) is a feature of microprocessors that has been available for many years. SIMD instructions perform a single operation on a batch of values at once, and thus provide a way to significantly accelerate code execution. However, these instructions differ between microprocessor vendors and compilers.
endef

CMAKE_OPTIONS += \
	-DBUILD_TESTS=OFF \
	-DBUILD_BENCHMARK=OFF \
	-DBUILD_EXAMPLES=OFF

CMAKE_HOST_OPTIONS += \
	-DBUILD_TESTS=OFF \
	-DBUILD_BENCHMARK=OFF \
	-DBUILD_EXAMPLES=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/share/pkgconfig/xsimd.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/share/pkgconfig/xsimd.pc
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,xsimd))
