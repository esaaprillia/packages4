include $(TOPDIR)/rules.mk

PKG_NAME:=python-fido2
PKG_VERSION:=2.0.0
PKG_RELEASE:=1

PYPI_NAME:=fido2
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause Apache-2.0 MPL-2.0
PKG_LICENSE_FILES:=COPYING COPYING.APLv2 COPYING.MPLv2

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-fido2
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=FIDO2/WebAuthn library for implementing clients and servers.
  URL:=https://github.com/Yubico/python-fido2
  DEPENDS:=+python3 +python3-cryptography +python3-pyscard
endef

define Package/python3-fido2/description
Provides library functionality for communicating with a FIDO device over USB as well as verifying attestation and assertion signatures.
endef

$(eval $(call Py3Package,python3-fido2))
$(eval $(call BuildPackage,python3-fido2))
$(eval $(call BuildPackage,python3-fido2-src))
