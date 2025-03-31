include $(TOPDIR)/rules.mk

PKG_NAME:=python-ffmpeg
PKG_VERSION:=0.2.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=ffmpeg_python
PYPI_SOURCE_NAME:=ffmpeg-python
PKG_HASH:=65225db34627c578ef0e11c8b1eb528bb35e024752f6f10b78c011f6f64c4127

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-ffmpeg
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python bindings for FFmpeg - with complex filtering support
  URL:=https://github.com/kkroening/ffmpeg-python
  DEPENDS:=+python3 +python3-future +libffmpeg-full
endef

define Package/python3-ffmpeg/description
There are tons of Python FFmpeg wrappers out there but they seem to lack complex filter support. ffmpeg-python works well for simple as well as complex signal graphs.
endef

$(eval $(call Py3Package,python3-ffmpeg))
$(eval $(call BuildPackage,python3-ffmpeg))
$(eval $(call BuildPackage,python3-ffmpeg-src))
