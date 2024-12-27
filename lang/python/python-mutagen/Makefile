include $(TOPDIR)/rules.mk

PKG_NAME:=python-mutagen
PKG_VERSION:=1.47.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=COPYING

PYPI_NAME:=mutagen
PKG_HASH:=719fadef0a978c31b4cf3c956261b3c58b6948b32023078a2117b1de09f0fc99

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-mutagen
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=read and write audio tags for many formats
  URL:=https://mutagen.readthedocs.io/
  DEPENDS:=+python3-light
endef

define Package/python3-mutagen/description
Mutagen is a Python module to handle audio metadata. It supports ASF, FLAC, MP4, Monkey’s Audio, MP3, Musepack, Ogg Opus, Ogg FLAC, Ogg Speex, Ogg Theora, Ogg Vorbis, True Audio, WavPack, OptimFROG, and AIFF audio files. All versions of ID3v2 are supported, and all standard ID3v2.4 frames are parsed. It can read Xing headers to accurately calculate the bitrate and length of MP3s. ID3 and APEv2 tags can be edited regardless of audio format. It can also manipulate Ogg streams on an individual packet/page level.
Mutagen works with Python 3.7+ (CPython and PyPy) on Linux, Windows and macOS, and has no dependencies outside the Python standard library. Mutagen is licensed under the GPL version 2 or later.
For more information visit https://mutagen.readthedocs.org
endef

$(eval $(call Py3Package,python3-mutagen))
$(eval $(call BuildPackage,python3-mutagen))
$(eval $(call BuildPackage,python3-mutagen-src))
