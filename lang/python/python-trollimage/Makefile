include $(TOPDIR)/rules.mk

PKG_NAME:=python-trollimage
PKG_VERSION:=1.28.0
PKG_RELEASE:=1

PYPI_NAME:=trollimage
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0 MIT
PKG_LICENSE_FILES:=LICENSE.txt LICENSE_RIO_COLOR.txt

PKG_BUILD_DEPENDS:=numpy/host python-versioneer/host python-cython/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-trollimage
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Pytroll imaging library
  URL:=https://github.com/pytroll/trollimage
  DEPENDS:= \
	+python3-light \
	+python3-numpy \
	+python3-pillow
endef

define Package/python3-trollimage/description
Imaging package for pytroll packages like SatPy.
endef

$(eval $(call Py3Package,python3-trollimage))
$(eval $(call BuildPackage,python3-trollimage))
$(eval $(call BuildPackage,python3-trollimage-src))
