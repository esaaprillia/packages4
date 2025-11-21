include $(TOPDIR)/rules.mk

PKG_NAME:=python-miniaudio
PKG_VERSION:=1.61
PKG_RELEASE:=1

PYPI_NAME:=miniaudio
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-six/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-miniaudio
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=python bindings for the miniaudio library and its decoders (mp3, flac, ogg vorbis, wav)
  URL:=https://github.com/irmen/pyminiaudio
  DEPENDS:=+python3 +python3-six +libstdcpp
endef

define Package/python3-miniaudio/description
Multiplatform audio playback, recording, decoding and sample format conversion for Linux (including Raspberri Pi), Windows, Mac and others.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-miniaudio))
$(eval $(call BuildPackage,python3-miniaudio))
$(eval $(call BuildPackage,python3-miniaudio-src))
