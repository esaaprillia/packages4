include $(TOPDIR)/rules.mk

PKG_NAME:=python-chacha20poly1305
PKG_VERSION:=0.0.3
PKG_RELEASE:=1

PYPI_NAME:=chacha20poly1305
PKG_HASH:=f2f005c7cf4638ffa4ff06c02c78748068b642916795c6d16c7cc5e355e70edf

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-chacha20poly1305
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Chacha20Poly1305
  URL:=https://github.com/ph4r05/py-chacha20poly1305
  DEPENDS:=+python3 +python3-cryptography
endef

define Package/python3-chacha20poly1305/description
Simple pure-python chacha20-poly1305 implementation based on tlslite-ng code. Designed to be compatible with Cryptography API.
endef

$(eval $(call Py3Package,python3-chacha20poly1305))
$(eval $(call BuildPackage,python3-chacha20poly1305))
$(eval $(call BuildPackage,python3-chacha20poly1305-src))
