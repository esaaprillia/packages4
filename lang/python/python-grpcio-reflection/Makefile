include $(TOPDIR)/rules.mk

PKG_NAME:=python-grpcio-reflection
PKG_VERSION:=1.71.0
PKG_RELEASE:=1

PYPI_NAME:=grpcio_reflection
PKG_HASH:=51504e977057ffabe66d1ed55557b15e969c42bb3a1f28ee45d730dd5f983bb5

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-grpcio-reflection
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Standard Protobuf Reflection Service for gRPC
  URL:=https://grpc.io
  DEPENDS:=+python3-logging +python3-protobuf +python3-grpcio +python3-grpcio-tools
endef

define Package/python3-grpcio-reflection/description
  Reference package for reflection in GRPC Python.
endef

$(eval $(call Py3Package,python3-grpcio-reflection))
$(eval $(call BuildPackage,python3-grpcio-reflection))
$(eval $(call BuildPackage,python3-grpcio-reflection-src))
