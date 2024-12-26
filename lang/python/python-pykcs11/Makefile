include $(TOPDIR)/rules.mk

PKG_NAME:=python-pykcs11
PKG_VERSION:=1.5.17
PKG_RELEASE:=1

PYPI_NAME:=pykcs11
PKG_HASH:=7b667e959fa0b6ad0750b03e2081a059cbe9a62789766143e50f90988a338994

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=python-swig/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pykcs11
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A Full PKCS#11 wrapper for Python
  URL:=https://github.com/LudovicRousseau/PyKCS11
  DEPENDS:=+python3
endef

define Package/python3-pykcs11/description
A complete PKCS#11 wrapper for Python. You can use any PKCS#11 (aka CryptoKi) module such as the PSM which comes as part of mozilla or the various modules supplied by vendors of hardware crypto tokens, and almost all PKCS#11 functions and data types. The wrapper has been generated with the help of the SWIG compiler.
endef

$(eval $(call Py3Package,python3-pykcs11))
$(eval $(call BuildPackage,python3-pykcs11))
$(eval $(call BuildPackage,python3-pykcs11-src))
