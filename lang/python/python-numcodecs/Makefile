include $(TOPDIR)/rules.mk

PKG_NAME:=python-numcodecs
PKG_VERSION:=0.17.0
PKG_RELEASE:=1

PYPI_NAME:=numcodecs
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=meson-python/host python-setuptools-scm/host python-cython/host numpy/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../meson/meson.mk
include ../python3-package.mk

define Package/python3-numcodecs
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A Python package providing buffer compression and transformation codecs for use in data storage and communication applications.
  URL:=https://github.com/zarr-developers/numcodecs
  DEPENDS:= \
	+python3-light \
	+python3-numpy \
	+python3-typing-extensions \
	+c-blosc \
	+libzstd \
	+liblz4
endef

define Package/python3-numcodecs/description
Numcodecs is a Python package providing buffer compression and transformation codecs for use in data storage and communication applications.
endef

MESON_ARGS += \
	-Dsystem_blosc=enabled \
	-Dsystem_zstd=enabled \
	-Dsystem_lz4=enabled

$(eval $(call Py3Package,python3-numcodecs))
$(eval $(call BuildPackage,python3-numcodecs))
$(eval $(call BuildPackage,python3-numcodecs-src))
