include $(TOPDIR)/rules.mk

PKG_NAME:=python-httplib2
PKG_VERSION:=0.22.0
PKG_RELEASE:=1

PYPI_NAME:=httplib2
PKG_HASH:=d7a10bc5ef5ab08322488bde8c726eeee5c8618723fdb399597ec58f3d82df81

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-httplib2
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A comprehensive HTTP client library
  URL:=https://github.com/pndurette/gTTS
  DEPENDS:= \
	+python3-email \
	+python3-openssl \
	+python3-pyparsing \
	+python3-unittest \
	+python3-urllib
endef

define Package/python3-httplib2/description
  Small, fast HTTP client library for Python. Features persistent connections,
  cache, and Google App Engine support. Originally written by Joe Gregorio,
  now supported by community. 
endef

$(eval $(call Py3Package,python3-httplib2))
$(eval $(call BuildPackage,python3-httplib2))
$(eval $(call BuildPackage,python3-httplib2-src))
