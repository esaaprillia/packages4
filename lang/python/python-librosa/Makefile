include $(TOPDIR)/rules.mk

PKG_NAME:=python-librosa
PKG_VERSION:=0.11.0
PKG_RELEASE:=1

PYPI_NAME:=librosa
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=ISC
PKG_LICENSE_FILES:=LICENSE.md

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-librosa
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python module for audio and music processing
  URL:=https://librosa.org/
  DEPENDS:= \
	+python3-light \
	+python3-audioread \
	+python3-numba \
	+python3-numpy \
	+python3-scipy \
	+python3-scikit-learn \
	+python3-joblib \
	+python3-decorator \
	+python3-soundfile \
	+python3-pooch \
	+python3-soxr \
	+python3-typing-extensions \
	+python3-lazy-loader \
	+python3-msgpack \
	+python3-standard-aifc \
	+python3-standard-sunau
endef

define Package/python3-librosa/description
A python package for music and audio analysis.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-librosa))
$(eval $(call BuildPackage,python3-librosa))
$(eval $(call BuildPackage,python3-librosa-src))
