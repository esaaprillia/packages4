include $(TOPDIR)/rules.mk

PKG_NAME:=python-cbor2
PKG_VERSION:=5.6.5
PKG_RELEASE:=1

PYPI_NAME:=cbor2
PKG_HASH:=b682820677ee1dbba45f7da11898d2720f92e06be36acec290867d5ebf3d7e09

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-cbor2
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=(de)serializer with extensive tag support
  URL:=http://cbor2.com/
  DEPENDS:=+python3-decimal +python3-email
endef

define Package/python3-cbor2/description
  This library provides encoding and decoding for the Concise Binary
  Object Representation (CBOR) (RFC 8949) serialization format.
  The specification is fully compatible with the original RFC 7049.
endef

PYTHON3_PKG_SETUP_VARS += \
	CBOR2_BUILD_C_EXTENSION=1

$(eval $(call Py3Package,python3-cbor2))
$(eval $(call BuildPackage,python3-cbor2))
$(eval $(call BuildPackage,python3-cbor2-src))
