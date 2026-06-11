include $(TOPDIR)/rules.mk

PKG_NAME:=llama.cpp
PKG_VERSION:=9596
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/ggml-org/llama.cpp/archive/b$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-b$(PKG_VERSION)

#CMAKE_BINARY_SUBDIR := build
PKG_BUILD_PARALLEL:=1

PKG_BUILD_DEPENDS:=node/host python-ninja2/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/llama.cpp
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=LLM inference in C/C++
	DEPENDS:=+libstdcpp +libgomp +libopenssl +openblas
	URL:=https://llama.app/
endef

define Package/llama.cpp/description
	The main goal of llama.cpp is to enable LLM inference with minimal setup and state-of-the-art performance on a wide range of hardware - locally and in the cloud.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DGGML_ALL_WARNINGS=OFF \
	-DGGML_ALL_WARNINGS_3RD_PARTY=OFF \
	-DGGML_BACKEND_DL=ON \
	-DGGML_BLAS=ON \
	-DGGML_BLAS_VENDOR=OpenBLAS \
	-DGGML_BUILD_EXAMPLES=OFF \
	-DGGML_CPU_ALL_VARIANTS=ON \
	-DGGML_CUDA_FA_ALL_QUANTS=ON \
	-DGGML_NATIVE=OFF \
	-DGGML_RPC=ON \
	-DGGML_VULKAN=OFF \
	-DGGML_BACKEND_DIR=/usr/lib \
	-DLLAMA_BUILD_COMMIT=18ef86e \
	-DLLAMA_USE_PREBUILT_UI=OFF

define Package/llama.cpp/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,llama.cpp))
