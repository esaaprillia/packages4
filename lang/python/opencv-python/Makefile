include $(TOPDIR)/rules.mk

PKG_NAME:=opencv-python
PKG_VERSION:=4.11.0.86
PKG_RELEASE:=1

PYPI_NAME:=opencv-python
PKG_HASH:=03d60ccae62304860d232272e4a4fda93c39d595780cb40b161b310244b736a4

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-scikit-build/host numpy/host python-packaging/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/opencv-python3
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:= Wrapper package for OpenCV python bindings.
  URL:=https://pypi.org/project/opencv-python/
  DEPENDS:=+python3 +python3-numpy +opencv
endef

define Package/opencv-python3/description
  OpenCV is raising funds to keep the library free for everyone, and we need the support of the entire community to do it.
endef

$(eval $(call Py3Package,opencv-python3))
$(eval $(call BuildPackage,opencv-python3))
$(eval $(call BuildPackage,opencv-python3-src))
