include $(TOPDIR)/rules.mk

PKG_NAME:=fft2d
PKG_VERSION:=2015-02-13 
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/petewarden/OouraFFT.git
PKG_SOURCE_VERSION:=c6fd2dd6d21397baa6653139d31d84540d5449a2
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=readme2d.txt

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk

define Package/fft2d
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=This is a package to calculate Discrete Fourier/Cosine/Sine Transforms of 2,3-dimensional sequences of length 2^N.
	DEPENDS:=
	URL:=https://www.kurims.kyoto-u.ac.jp/~ooura/fft.html
	BUILDONLY:=1
endef

define Package/fft2d/description
General Purpose FFT (Fast Fourier/Cosine/Sine Transform) Package
endef

define Build/Configure
endef

define Build/Compile
endef

define Build/Install
endef

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include/fft2d

	$(CP) \
	  $(PKG_BUILD_DIR)/* \
	  $(1)/usr/include/fft2d/
endef

$(eval $(call BuildPackage,fft2d))
