include $(TOPDIR)/rules.mk

PKG_NAME:=python-imutils
PKG_VERSION:=0.5.4
PKG_RELEASE:=1

PYPI_NAME:=imutils
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-imutils
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=image processing functions such as translation
  URL:=https://github.com/jrosebr1/imutils
  DEPENDS:= \
	+python3-light
endef

define Package/python3-imutils/description
A series of convenience functions to make basic image processing functions such as translation, rotation, resizing, skeletonization, and displaying Matplotlib images easier with OpenCV and both Python 2.7 and Python 3.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-imutils))
$(eval $(call BuildPackage,python3-imutils))
$(eval $(call BuildPackage,python3-imutils-src))
