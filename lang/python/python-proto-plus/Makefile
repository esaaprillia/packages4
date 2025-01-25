include $(TOPDIR)/rules.mk

PKG_NAME:=python-proto-plus
PKG_VERSION:=1.25.0
PKG_RELEASE:=1

PYPI_NAME:=proto_plus
PKG_HASH:=fbb17f57f7bd05a68b7707e745e26528b0b3c34e378db91eef93912c54982d91

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache 2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-proto-plus
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Beautiful, Pythonic protocol buffers.
  URL:=https://github.com/googleapis/proto-plus-python
  DEPENDS:=+python3 +python3-protobuf
endef

define Package/python3-proto-plus/description
  This is a wrapper around protocol buffers. Protocol buffers is a specification format for APIs, such as those inside Google. This library provides protocol buffer message classes and objects that largely behave like native Python types.
endef

$(eval $(call Py3Package,python3-proto-plus))
$(eval $(call BuildPackage,python3-proto-plus))
$(eval $(call BuildPackage,python3-proto-plus-src))
