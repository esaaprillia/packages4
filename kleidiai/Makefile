include $(TOPDIR)/rules.mk

PKG_NAME:=kleidiai
PKG_VERSION:=v1.3.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://gitlab.arm.com/kleidi/kleidiai/-/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0 BSD-3-Clause
PKG_LICENSE_FILES:=Apache-2.0.txt BSD-3-Clause.txt

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/kleidiai
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=KleidiAI is an open-source library that provides optimized performance-critical routines, also known as micro-kernels, for artificial intelligence (AI) workloads tailored for Arm® CPUs.
	DEPENDS:=
	URL:=https://gitlab.arm.com/kleidi/kleidiai
endef

define Package/kleidiai/description
KleidiAI is an open-source library that provides optimized performance-critical routines, also known as micro-kernels, for artificial intelligence (AI) workloads tailored for Arm® CPUs.
These routines are tuned to exploit the capabilities of specific Arm® hardware architectures, aiming to maximize performance.
The KleidiAI library has been designed for ease of adoption into C or C++ machine learning (ML) and AI frameworks. Specifically, developers looking to incorporate specific micro-kernels into their projects can only include the corresponding .c and .h files associated with those micro-kernels and a common header file.
endef

CMAKE_OPTIONS += \
	-Wno-dev \
	-DBUILD_SHARED_LIBS=ON \
	-DKLEIDIAI_BUILD_TESTS=OFF \
	-DKLEIDIAI_BUILD_BENCHMARK=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/kleidiai/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/igzip \
	  $(1)/usr/bin/
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,kleidiai))
