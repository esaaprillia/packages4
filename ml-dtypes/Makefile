include $(TOPDIR)/rules.mk

PKG_NAME:=ml-dtypes
PKG_VERSION:=0.5.1
PKG_RELEASE:=1

PKG_SOURCE:=ml_dtypes-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/jax-ml/ml_dtypes/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0 MPL-2.0
PKG_LICENSE_FILES:=LICENSE LICENSE.eigen

PKG_BUILD_DIR:=$(BUILD_DIR)/ml_dtypes-$(PKG_VERSION)
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk

define Package/ml-dtypes
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=A stand-alone implementation of several NumPy dtype extensions used in machine learning.
	DEPENDS:=
	URL:=https://github.com/jax-ml/ml_dtypes
	BUILDONLY:=1
endef

define Package/ml-dtypes/description
ml_dtypes is a stand-alone implementation of several NumPy dtype extensions used in machine learning libraries
endef

define Build/Configure
endef

define Build/Compile
endef

define Build/Install
endef

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include/ml_dtypes/include

	$(CP) \
	  $(PKG_BUILD_DIR)/ml_dtypes/include/* \
	  $(1)/usr/include/ml_dtypes/include/
endef

$(eval $(call BuildPackage,ml-dtypes))
