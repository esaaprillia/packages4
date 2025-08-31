include $(TOPDIR)/rules.mk

PKG_NAME:=adafruit-platformdetect
PKG_VERSION:=3.83.0
PKG_RELEASE:=1


PYPI_NAME:=Adafruit-PlatformDetect
PYPI_SOURCE_NAME:=adafruit_platformdetect
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-adafruit-platformdetect
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Platform detection for use by libraries like Adafruit-Blinka.
  URL:=https://github.com/adafruit/Adafruit_Python_PlatformDetect
  DEPENDS:=+python3-light
endef

define Package/python3-adafruit-platformdetect/description
This library provides best-guess platform detection for a range of single-board computers and (potentially) other platforms. It was written primarily for use in Adafruit_Blinka, but may be useful in other contexts.
endef

$(eval $(call Py3Package,python3-adafruit-platformdetect))
$(eval $(call BuildPackage,python3-adafruit-platformdetect))
$(eval $(call BuildPackage,python3-adafruit-platformdetect-src))
