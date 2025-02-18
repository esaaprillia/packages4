include $(TOPDIR)/rules.mk

PKG_NAME:=fft2d
PKG_VERSION:=2006-12-28 
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME).tgz
PKG_SOURCE_URL:=https://www.kurims.kyoto-u.ac.jp/~ooura/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=

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
	  $(PKG_INSTALL_DIR)/usr/include/* \
	  $(1)/usr/include/fft2d/
endef

$(eval $(call BuildPackage,fft2d))
