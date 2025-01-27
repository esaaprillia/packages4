include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiocoap
PKG_VERSION:=0.4.12
PKG_RELEASE:=1

PYPI_NAME:=aiocoap
PKG_HASH:=808e87068aa57dbf31486cfdfa9098b0a6f5ca444c6b8966f3e50a403628981e

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
  DEPENDS:=+python3 +python3-cbor2 +python3-cryptography +python3-filelock +python3-lakers-python +python3-dtlssocket +python3-websockets +python3-pygments +python3-cbor-diag
endef

define Package/python3-aiocoap/description
The aiocoap package is an implementation of CoAP, the Constrained Application Protocol.
It is written in Python 3 using its native asyncio methods to facilitate concurrent operations while maintaining an easy to use interface.
endef

$(eval $(call Py3Package,python3-aiocoap))
$(eval $(call BuildPackage,python3-aiocoap))
$(eval $(call BuildPackage,python3-aiocoap-src))
