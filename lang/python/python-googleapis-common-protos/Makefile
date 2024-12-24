include $(TOPDIR)/rules.mk

PKG_NAME:=python-googleapis-common-protos
PKG_VERSION:=1.66.0
PKG_RELEASE:=1

PYPI_NAME:=googleapis_common_protos
PKG_HASH:=c3e7b33d15fdca5374cc0a7346dd92ffa847425cc4ea941d970f13680052ec8c

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-googleapis-common-protos
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Common protobufs used in Google APIs
  URL:=https://github.com/googleapis/python-api-common-protos
  DEPENDS:=+python3-grpcio +python3-protobuf
endef

define Package/python3-googleapis-common-protos/description
  Google APIs common protos.
endef

$(eval $(call Py3Package,python3-googleapis-common-protos))
$(eval $(call BuildPackage,python3-googleapis-common-protos))
$(eval $(call BuildPackage,python3-googleapis-common-protos-src))
