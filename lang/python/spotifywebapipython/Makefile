include $(TOPDIR)/rules.mk

PKG_NAME:=spotifywebapipython
PKG_VERSION:=1.0.268
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://github.com/thlucas1/SpotifyWebApiPython.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=602331f6bdd6630f8166fb4b42cb62d2696965bd
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/spotifywebapipython
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Spotify Web API Python3 Library
  URL:=https://spotifywebapipython.readthedocs.io/
  DEPENDS:= \
	+python3-light \
	+python3-lxml \
	+python3-numpy \
	+python3-oauthlib \
	+python3-pillow \
	+python3-platformdirs \
	+python3-pychromecast \
	+python3-pyotp \
	+python3-requests \
	+python3-requests-oauthlib \
	+smartinspectpython \
	+python3-soco \
	+python3-urllib3 \
	+python3-zeroconf
endef

define Package/spotifywebapipython/description
This API provides Python programmers the ability to retrieve information from the Spotify Web API from any program written in Python 3.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,spotifywebapipython))
$(eval $(call BuildPackage,spotifywebapipython))
$(eval $(call BuildPackage,spotifywebapipython-src))
