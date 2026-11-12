include $(TOPDIR)/rules.mk

PKG_NAME:=onednn
PKG_VERSION:=3.14.2
PKG_RELEASE:=1

PKG_SOURCE:=oneDNN-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/uxlfoundation/oneDNN/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/oneDNN-$(PKG_VERSION)
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/oneDNN-$(PKG_VERSION)

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/onednn
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=oneAPI Deep Neural Network Library (oneDNN)
	DEPENDS:=+libgomp +libstdcpp
	URL:=https://github.com/oneapi-src/oneDNN
endef

define Package/onednn/description
	oneDNN is an open-source, cross-platform library of optimized deep learning operations for CPUs and GPUs.
endef

TARGET_LDFLAGS += -lm -lrt

CMAKE_OPTIONS += \
	-DLIBM="" \
	-DLIBRT="" \
	-DDNNL_BUILD_TESTS=OFF \
	-DDNNL_BUILD_EXAMPLES=OFF \
	-DONEDNN_BUILD_GRAPH=ON \
	-DDNNL_LIBRARY_TYPE=SHARED \
	-DONEDNN_EXPERIMENTAL_GROUPED_MEMORY=ON

HOST_LDFLAGS += -lm -lrt

CMAKE_HOST_OPTIONS += \
	-DLIBM="" \
	-DLIBRT="" \
	-DDNNL_BUILD_TESTS=OFF \
	-DDNNL_BUILD_EXAMPLES=OFF \
	-DONEDNN_BUILD_GRAPH=ON \
	-DDNNL_LIBRARY_TYPE=SHARED \
	-DONEDNN_EXPERIMENTAL_GROUPED_MEMORY=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/onednn/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,onednn))
