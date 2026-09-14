include $(TOPDIR)/rules.mk

PKG_NAME:=llama.cpp
PKG_VERSION:=0.4.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/ggml-org/llama.cpp/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build
PKG_BUILD_PARALLEL:=1

PKG_BUILD_DEPENDS:=node/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/llama.cpp
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=LLM inference in C/C++
	DEPENDS:=+libstdcpp +libopenssl +libopenssl-legacy +ggml
	URL:=https://llama.app/
endef

define Package/llama.cpp/description
	The main goal of llama.cpp is to enable LLM inference with minimal setup and state-of-the-art performance on a wide range of hardware - locally and in the cloud.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DLLAMA_BUILD_IS_DEV=OFF \
	-DLLAMA_USE_SYSTEM_GGML=ON \
	-DLLAMA_USE_PREBUILT_UI=OFF \
	-DLLAMA_LIB_INSTALL_DIR=/usr/lib \
	-DNPM_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/bin/npm"

define Package/llama.cpp/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,llama.cpp))
