include $(TOPDIR)/rules.mk

PKG_NAME:=opencv-python
PKG_VERSION:=4.11.0.86
PKG_RELEASE:=1

PYPI_NAME:=opencv-python
PKG_HASH:=03d60ccae62304860d232272e4a4fda93c39d595780cb40b161b310244b736a4

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-scikit-build/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

export CMAKE_ARGS="-DCMAKE_SYSTEM_PROCESSOR=$(ARCH) ENABLE_CONTRIB=OFF ENABLE_HEADLESS=ON"

define Package/opencv-python3
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:= Wrapper package for OpenCV python bindings.
  URL:=https://pypi.org/project/opencv-python/
  DEPENDS:=+python3 +opencv
endef

define Package/opencv-python3/description
  OpenCV is raising funds to keep the library free for everyone, and we need the support of the entire community to do it.
endef

$(eval $(call Py3Package,opencv-python3))
$(eval $(call BuildPackage,opencv-python3))
$(eval $(call BuildPackage,opencv-python3-src))
