include $(TOPDIR)/rules.mk

PKG_NAME:=python-ecdsa
PKG_VERSION:=0.19.0
PKG_RELEASE:=1

PYPI_NAME:=ecdsa
PKG_HASH:=60eaad1199659900dd0af521ed462b793bbdf867432b3948e87416ae4caf6bf8

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-ecdsa
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=pure-python ECDSA signature/verification and ECDH key agreement
  URL:=https://github.com/tlsfuzzer/python-ecdsa
  DEPENDS:=+python3 +python3-six
endef

define Package/python3-ecdsa/description
  This is an easy-to-use implementation of ECC (Elliptic Curve Cryptography) with support for ECDSA (Elliptic Curve Digital Signature Algorithm), EdDSA (Edwards-curve Digital Signature Algorithm) and ECDH (Elliptic Curve Diffie-Hellman), implemented purely in Python, released under the MIT license. With this library, you can quickly create key pairs (signing key and verifying key), sign messages, and verify the signatures. You can also agree on a shared secret key based on exchanged public keys. The keys and signatures are very short, making them easy to handle and incorporate into other protocols.
endef

$(eval $(call Py3Package,python3-ecdsa))
$(eval $(call BuildPackage,python3-ecdsa))
$(eval $(call BuildPackage,python3-ecdsa-src))
