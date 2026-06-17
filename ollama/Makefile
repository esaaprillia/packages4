include $(TOPDIR)/rules.mk

PKG_NAME:=ollama
PKG_VERSION:=0.30.8
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/ollama/ollama/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build
CMAKE_SOURCE_SUBDIR := llama/server
PKG_BUILD_PARALLEL:=1

PKG_BUILD_DEPENDS:= shaderc shaderc/host golang/host

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-package.mk
include $(TOPDIR)/feeds/python/lang/python/meson/cmake-golang.mk

define Package/ollama
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Get up and running with large language models.
	DEPENDS:=+libstdcpp +libgomp +vulkan-loader $(GO_ARCH_DEPENDS)
	URL:=https://github.com/ollama/ollama
endef

define Package/ollama/description
	Get up and running with OpenAI GLM-4.7, DeepSeek, gpt-oss, Qwen, Gemma and other models.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON -DGGML_VULKAN=ON

GO_PKG:=github.com/ollama/ollama
GO_PKG_LDFLAGS_X:= \
	$(GO_PKG)/server.mode=release \
	$(GO_PKG)/version.Version=$(PKG_VERSION)

define Build/Compile
	$(call Build/Compile/Cmake)
	$(call GoPackage/Build/Configure)
	$(call GoPackage/Build/Compile)
endef

define Package/ollama/install
	$(call GoPackage/Package/Install/Bin,$(PKG_INSTALL_DIR))
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/ollama $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/ollama $(1)/usr/lib/
endef

$(eval $(call BuildPackage,ollama))
