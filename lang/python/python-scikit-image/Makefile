include $(TOPDIR)/rules.mk

PKG_NAME:=python-scikit-image
PKG_VERSION:=0.26.0
PKG_RELEASE:=1

PYPI_NAME:=scikit_image
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=meson-python/host python-cython/host python-pythran/host python-lazy-loader/host numpy/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../meson/meson.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-scikit-image
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Image processing in Python
  URL:=https://github.com/scikit-image/scikit-image
  DEPENDS:= \
	+python3 \
	+python3-numpy \
	+python3-scipy \
	+python3-networkx \
	+python3-pillow \
	+python3-imageio \
	+python3-tifffile \
	+python3-packaging \
	+python3-lazy-loader
endef

define Package/python3-scikit-image/description
  scikit-image: Image processing in Python
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-scikit-image))
$(eval $(call BuildPackage,python3-scikit-image))
$(eval $(call BuildPackage,python3-scikit-image-src))
