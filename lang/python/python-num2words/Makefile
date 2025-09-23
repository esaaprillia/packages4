include $(TOPDIR)/rules.mk

PKG_NAME:=python-num2words
PKG_VERSION:=0.5.14
PKG_RELEASE:=1

PYPI_NAME:=num2words
PKG_HASH:=skip

PKG_LICENSE:=LGPL
PKG_LICENSE_FILES:=COPYING
PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-num2words
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Modules to convert numbers to words. Easily extensible.
  URL:=https://github.com/savoirfairelinux/num2words
  DEPENDS:=+python3 +python3-docopt
endef

define Package/python3-num2words/description
num2words library - Convert numbers to words in multiple languages
endef

$(eval $(call Py3Package,python3-num2words))
$(eval $(call BuildPackage,python3-num2words))
$(eval $(call BuildPackage,python3-num2words-src))
