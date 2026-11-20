include $(TOPDIR)/rules.mk

PKG_NAME:=vision
PKG_VERSION:=0.29.2
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/pytorch/vision/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/vision-$(PKG_VERSION)
CMAKE_BINARY_SUBDIR := build

PKG_BUILD_DEPENDS:=pytorch/host pillow/host
PYTHON3_PKG_BUILD:=0

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/python/meson/cmake.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk

define Package/torchvision
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=image and video datasets and models for torch deep learning
	DEPENDS:=+libjpeg-turbo +libpng +libstdcpp +libwebp +libtorch
	URL:=https://github.com/pytorch/vision
endef

define Package/torchvision/description
	The torchvision package consists of popular datasets, model architectures, and common image transformations for computer vision.
endef

define Package/python3-torchvision
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=image and video datasets and models for torch deep learning (python bindings)
  URL:=https://github.com/pytorch/vision
  #DEPENDS:=+python3-light +python3-numpy +python3-pillow +python3-torch +torchvision
endef

define Package/python3-torchvision/description
	The torchvision package consists of popular datasets, model architectures, and common image transformations for computer vision.
endef

PYTHON3_PKG_BUILD_VARS += BUILD_VERSION=$(PKG_VERSION) WITH_CUDA=0 FORCE_CUDA=0 DEBUG=0 USE_NVJPEG=0

CMAKE_OPTIONS += \
	-DWITH_CUDA=OFF \
	-DWITH_WEBP=ON

define Build/Compile
	$(call Build/Compile/Default)
	$(call Build/Install/Default)
	$(call Py3Build/Compile)
endef

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/torchvision/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,torchvision))
$(eval $(call Py3Package,python3-torchvision))
$(eval $(call BuildPackage,python3-torchvision))
$(eval $(call BuildPackage,python3-torchvision-src))
