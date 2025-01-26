include $(TOPDIR)/rules.mk

PKG_NAME:=python-py3rijndael
PKG_VERSION:=0.3.3
PKG_RELEASE:=1

PYPI_NAME:=py3rijndael
PKG_HASH:=b6655a3ebff3a10540eaed049e8788eea3ac93d6b71b3a6ac2b00224bbece9a8

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-py3rijndael
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Rijndael algorithm library for Python3.
  URL:=https://github.com/meyt/py3rijndael
  DEPENDS:=+python3
endef

define Package/python3-py3rijndael/description
Rijndael algorithm library for Python3.
endef

$(eval $(call Py3Package,python3-py3rijndael))
$(eval $(call BuildPackage,python3-py3rijndael))
$(eval $(call BuildPackage,python3-py3rijndael-src))
