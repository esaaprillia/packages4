include $(TOPDIR)/rules.mk

PKG_NAME:=python-securesystemslib
PKG_VERSION:=1.3.0
PKG_RELEASE:=1

PYPI_NAME:=securesystemslib
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-securesystemslib
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A library that provides cryptographic and general-purpose routines for Secure Systems Lab projects at NYU
  URL:=https://github.com/secure-systems-lab/securesystemslib
  DEPENDS:=+python3 +python3-cryptography +python3-pykcs11 +python3-asn1crypto
endef

define Package/python3-securesystemslib/description
Securesystemslib is a cryptography interface for signing and verifying digital signatures. It is developed for the TUF and in-toto projects: the key and signature containers are compatible with metadata formats from those projects.
Under the hood, Securesystemslib can use various digital signing systems (e.g. cryptography, PIV hardware keys and multiple cloud-based key management systems).
endef

$(eval $(call Py3Package,python3-securesystemslib))
$(eval $(call BuildPackage,python3-securesystemslib))
$(eval $(call BuildPackage,python3-securesystemslib-src))
