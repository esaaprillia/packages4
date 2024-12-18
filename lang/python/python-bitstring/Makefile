include $(TOPDIR)/rules.mk

PKG_NAME:=python-asn1crypto
PKG_VERSION:=4.2.3
PKG_RELEASE:=1

PYPI_NAME:=bitstring
PKG_HASH:=e0c447af3fda0d114f77b88c2d199f02f97ee7e957e6d719f40f41cf15fbb897

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-asn1crypto
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A Python module to help you manage your bits
  URL:=https://bitstring.readthedocs.io/en/stable/index.html
  DEPENDS:=+python3 +python3-bitarray
endef

define Package/python3-asn1crypto/description
  bitstring is a Python library to help make the creation and analysis of all types of bit-level binary data as simple and efficient as possible. It has been actively maintained since 2006.
endef

$(eval $(call Py3Package,python3-asn1crypto))
$(eval $(call BuildPackage,python3-asn1crypto))
$(eval $(call BuildPackage,python3-asn1crypto-src))
