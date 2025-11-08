include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiocoap
PKG_VERSION:=0.4.17
PKG_RELEASE:=1

PYPI_NAME:=aiocoap
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause MIT
PKG_LICENSE_FILES:=BSD-3-Clause.txt MIT.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-aiocoap
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python CoAP library
  URL:=https://codeberg.org/aiocoap/aiocoap
  DEPENDS:=+python3 +python3-cbor2 +python3-cryptography +python3-filelock +python3-ge25519 +python3-lakers-python +python3-cbor-diag +python3-dtlssocket +python3-websockets +python3-pygments +python3-colorlog
endef

define Package/python3-aiocoap/description
The aiocoap package is an implementation of CoAP, the Constrained Application Protocol.
It is written in Python 3 using its native asyncio methods to facilitate concurrent operations while maintaining an easy to use interface.
endef

$(eval $(call Py3Package,python3-aiocoap))
$(eval $(call BuildPackage,python3-aiocoap))
$(eval $(call BuildPackage,python3-aiocoap-src))
