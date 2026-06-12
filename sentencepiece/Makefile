include $(TOPDIR)/rules.mk

PKG_NAME:=sentencepiece
PKG_VERSION:=0.2.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/google/sentencepiece/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=protobuf/host

CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/sentencepiece
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Unsupervised text tokenizer for Neural Network-based text generation.
	DEPENDS:=+libstdcpp +abseil-cpp +protobuf +gperftools
	URL:=https://github.com/google/sentencepiece
endef

define Package/sentencepiece/description
	SentencePiece is an unsupervised text tokenizer and detokenizer mainly for Neural Network-based text generation systems where the vocabulary size is predetermined prior to the neural model training.
endef

CMAKE_OPTIONS += \
	-DSPM_BUILD_TEST=OFF \
	-DSPM_ENABLE_TCMALLOC=ON \
	-DSPM_ENABLE_SHARED=ON \
	-DSPM_DISABLE_EMBEDDED_DATA=OFF \
	-DSPM_PROTOBUF_PROVIDER=package \
	-DSPM_ABSL_PROVIDER=package \
    -DProtobuf_PROTOC_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/bin/protoc"

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/sentencepiece.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/sentencepiece.pc
endef

define Package/sentencepiece/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,sentencepiece))
