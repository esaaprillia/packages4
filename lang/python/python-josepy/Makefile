include $(TOPDIR)/rules.mk

PKG_NAME:=python-josepy
PKG_VERSION:=1.14.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE.txt

PYPI_NAME:=josepy
PKG_HASH:=308b3bf9ce825ad4d4bba76372cf19b5dc1c2ce96a9d298f9642975e64bd13dd

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-josepy
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=JOSE protocol implementation in Python
  URL:=https://josepy.readthedocs.io/en/latest/
  DEPENDS:=+python3 +python3-cryptography +python3-pyopenssl
endef

define Package/python3-josepy/description
JOSE protocol implementation in Python using cryptography
endef

$(eval $(call Py3Package,python3-josepy))
$(eval $(call BuildPackage,python3-josepy))
$(eval $(call BuildPackage,python3-josepy-src))
