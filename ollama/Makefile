include $(TOPDIR)/rules.mk

PKG_NAME:=ollama
PKG_VERSION:=0.15.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/ollama/ollama/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

#PKG_BUILD_DEPENDS:= shaderc vulkan-loader

#PKG_BUILD_DEPENDS:=golang/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-values.mk

define Package/ollama
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Get up and running with large language models.
	DEPENDS:=+libstdcpp $(GO_ARCH_DEPENDS)
	URL:=https://github.com/ollama/ollama
endef

define Package/ollama/description
	Get up and running with OpenAI GLM-4.7, DeepSeek, gpt-oss, Qwen, Gemma and other models.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON

define Package/ollama/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,ollama))
