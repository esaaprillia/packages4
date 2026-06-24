include $(TOPDIR)/rules.mk

PKG_NAME:=openmp
PKG_VERSION:=21.1.6
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).src.tar.xz
PKG_SOURCE_URL:=https://github.com/llvm/llvm-project/releases/download/llvmorg-$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.TXT

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION).src

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/openmp
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=LLVM OpenMP Runtime Library
	DEPENDS:=+libffi +libelf +libzstd +libcurl
	URL:=https://openmp.llvm.org/
endef

define Package/openmp/description
	LLVM OpenMP Runtime Library
endef

define Build/Prepare
	$(call Build/Prepare/Default)
	$(CP) -r files/Modules/* $(PKG_BUILD_DIR)/cmake/
endef

CMAKE_OPTIONS += \
	-DCMAKE_BUILD_TYPE=Release \
	-DCMAKE_INSTALL_PREFIX=/usr \
	-DLIBOMP_INSTALL_ALIASES=OFF \
	-DLLVM_DIR="$(STAGING_DIR_HOST)/llvm-bpf-21.1.6.Linux-x86_64/lib/cmake/llvm" \
	-DCLANG_TOOL="$(STAGING_DIR_HOST)/llvm-bpf-21.1.6.Linux-x86_64/bin/clang" \
	-DLINK_TOOL="$(STAGING_DIR_HOST)/llvm-bpf-21.1.6.Linux-x86_64/bin/llvm-link" \
	-DOPT_TOOL="$(STAGING_DIR_HOST)/llvm-bpf-21.1.6.Linux-x86_64/bin/opt" \
	-DPACKAGER_TOOL="$(STAGING_DIR_HOST)/llvm-bpf-21.1.6.Linux-x86_64/bin/clang-offload-packager" \
	-DOPENMP_LLVM_TOOLS_DIR="$(STAGING_DIR_HOST)/llvm-bpf-21.1.6.Linux-x86_64/bin"

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/openmp/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,openmp))

