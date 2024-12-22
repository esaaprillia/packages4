include $(TOPDIR)/rules.mk

PKG_NAME:=python-text-to-speech
PKG_VERSION:=1.6.1
PKG_RELEASE:=1

PYPI_NAME:=text_to_speech
PKG_HASH:=d639d79669211774de23e364d6fce22b19ff080e2b376a8fdc47765d0e32ea47

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-text-to-speech
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A versatile and user-friendly Python Text-to-Speech engine
  URL:=https://github.com/dewittethomas/text-to-speech
  DEPENDS:=+python3 +python3-gtts
endef

define Package/python3-text-to-speech/description
   A versatile and user-friendly Python Text-to-Speech engine with customizable options.
endef

$(eval $(call Py3Package,python3-text-to-speech))
$(eval $(call BuildPackage,python3-text-to-speech))
$(eval $(call BuildPackage,python3-text-to-speech-src))
