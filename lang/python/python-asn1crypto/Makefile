include $(TOPDIR)/rules.mk

PKG_NAME:=python-asn1crypto
PKG_VERSION:=1.5.1
PKG_RELEASE:=1

PYPI_NAME:=asn1crypto
PKG_HASH:=13ae38502be632115abf8a24cbe5f4da52e3b5231990aff31123c805306ccb9c

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
  TITLE:=Python ASN.1 library with a focus on performance and a pythonic API
  URL:=https://github.com/wbond/asn1crypto
  DEPENDS:=+python3
endef

define Package/python3-asn1crypto/description
  Fast ASN.1 parser and serializer with definitions for private keys, public keys, certificates, CRL, OCSP, CMS, PKCS#3, PKCS#7, PKCS#8, PKCS#12, PKCS#5, X.509 and TSP
endef

$(eval $(call Py3Package,python3-asn1crypto))
$(eval $(call BuildPackage,python3-asn1crypto))
$(eval $(call BuildPackage,python3-asn1crypto-src))
