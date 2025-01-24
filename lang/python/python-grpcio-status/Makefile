include $(TOPDIR)/rules.mk

PKG_NAME:=python-grpcio-status
PKG_VERSION:=1.70.0
PKG_RELEASE:=1

PYPI_NAME:=grpcio_status
PKG_HASH:=0e7b42816512433b18b9d764285ff029bde059e9d41f8fe10a60631bd8348101

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-grpcio-status
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Status proto mapping for gRPC
  URL:=https://grpc.io
  DEPENDS:=+python3-protobuf +python3-grpcio +python3-googleapis-common-protos
endef

define Package/python3-grpcio-status/description
  Reference package for GRPC Python status proto mapping.
endef

$(eval $(call Py3Package,python3-grpcio-status))
$(eval $(call BuildPackage,python3-grpcio-status))
$(eval $(call BuildPackage,python3-grpcio-status-src))
