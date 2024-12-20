include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyturbojpeg
PKG_VERSION:=1.7.5
PKG_RELEASE:=1

PYPI_NAME:=PyTurboJPEG
PKG_HASH:=5dd5f40dbf4159f41b6abaa123733910e8b1182df562b6ddb768991868b487d3

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host numpy/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pyturbojpeg
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A Python wrapper of libjpeg-turbo for decoding and encoding JPEG image.
  URL:=https://github.com/lilohuang/PyTurboJPEG/
  DEPENDS:=+python3 +python3-numpy +libturbojpeg-turbo
endef

define Package/python3-pyturbojpeg/description
  PyTurboJPEG is a highly optimized Python wrapper of libjpeg-turbo (TurboJPEG API) which supports x86 and ARM architecture.
endef

$(eval $(call Py3Package,python3-pyturbojpeg))
$(eval $(call BuildPackage,python3-pyturbojpeg))
$(eval $(call BuildPackage,python3-pyturbojpeg-src))
