include $(TOPDIR)/rules.mk

PKG_NAME:=python-av
PKG_VERSION:=14.0.1
PKG_RELEASE:=1

PYPI_NAME:=av
PKG_HASH:=2b0a17301af469ddaea46b5c1c982df1b7b5de8bc6c94cdc98cad4a67178c82a

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-cython/host python-google-api-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-av
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Pythonic bindings for FFmpeg's libraries.
  URL:=https://github.com/home-assistant-libs/ha-ffmpeg
  DEPENDS:=+python3 +libffmpeg-full
endef

define Package/python3-av/description
PyAV is a Pythonic binding for the FFmpeg libraries. We aim to provide all of the power and control of the underlying library, but manage the gritty details as much as possible.
endef

$(eval $(call Py3Package,python3-av))
$(eval $(call BuildPackage,python3-av))
$(eval $(call BuildPackage,python3-av-src))
