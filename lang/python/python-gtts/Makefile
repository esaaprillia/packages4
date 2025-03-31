include $(TOPDIR)/rules.mk

PKG_NAME:=python-gtts
PKG_VERSION:=2.5.4
PKG_RELEASE:=1

PYPI_NAME:=gtts
PKG_HASH:=f5737b585f6442f677dbe8773424fd50697c75bdf3e36443585e30a8d48c1884

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-gtts
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python library and CLI tool to interface with Google Translate's text-to-speech API
  URL:=http://gtts.readthedocs.org/
  DEPENDS:=+python3 +python3-click +python3-requests
endef

define Package/python3-gtts/description
gTTS (Google Text-to-Speech), a Python library and CLI tool to interface with Google Translate's text-to-speech API. Write spoken mp3 data to a file, a file-like object (bytestring) for further audio manipulation, or stdout. https://gtts.readthedocs.io/
endef

$(eval $(call Py3Package,python3-gtts))
$(eval $(call BuildPackage,python3-gtts))
$(eval $(call BuildPackage,python3-gtts-src))
