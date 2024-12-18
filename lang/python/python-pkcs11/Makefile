include $(TOPDIR)/rules.mk

PKG_NAME:=python-pkcs11
PKG_VERSION:=0.7.0
PKG_RELEASE:=1

PYPI_NAME:=python-pkcs11
PKG_HASH:=9737e0c24cabb8bc9d48bf8c57c3df2a70f8cdd96b70c50290803286f9e46bf7

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-cython/host python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pkcs11
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=PKCS#11/Cryptoki support for Python
  URL:=https://github.com/pyauth/python-pkcs11
  DEPENDS:=+python3 +python3-asn1crypto
endef

define Package/python3-pkcs11/description
  A high level, "more Pythonic" interface to the PKCS#11 (Cryptoki) standard to support HSM and Smartcard devices in Python.
endef

$(eval $(call Py3Package,python3-pkcs11))
$(eval $(call BuildPackage,python3-pkcs11))
$(eval $(call BuildPackage,python3-pkcs11-src))
