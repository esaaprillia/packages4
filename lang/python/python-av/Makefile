include $(TOPDIR)/rules.mk

PKG_NAME:=python-av
PKG_VERSION:=13.1.0
PKG_RELEASE:=1

PYPI_NAME:=av
PKG_HASH:=d3da736c55847d8596eb8c26c60e036f193001db3bc5c10da8665622d906c17e

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-cython/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-av
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Pythonic bindings for FFmpeg's libraries.
  URL:=https://github.com/home-assistant-libs/ha-ffmpeg
  DEPENDS:=+python3-light +ffmpeg +libffmpeg-full
endef

define Package/python3-av/description
PyAV is a Pythonic binding for the FFmpeg libraries. We aim to provide all of the power and control of the underlying library, but manage the gritty details as much as possible.
endef

$(eval $(call Py3Package,python3-av))
$(eval $(call BuildPackage,python3-av))
$(eval $(call BuildPackage,python3-av-src))
