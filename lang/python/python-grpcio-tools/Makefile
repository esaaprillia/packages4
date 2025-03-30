include $(TOPDIR)/rules.mk

PKG_NAME:=python-grpcio-tools
PKG_VERSION:=1.71.0
PKG_RELEASE:=1

PYPI_NAME:=grpcio_tools
PKG_HASH:=38dba8e0d5e0fb23a034e09644fdc6ed862be2371887eee54901999e8f6792a8

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cython/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-grpcio-tools
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Protobuf code generator for gRPC
  URL:=https://grpc.io/
  DEPENDS:= \
	+libatomic \
	+libstdcpp \
	+python3-multiprocessing \
	+python3-protobuf \
	+python3-grpcio \
	+python3-setuptools
endef

define Package/python3-grpcio-tools/description
  Package for gRPC Python tools.
endef

PYTHON3_PKG_SETUP_VARS += \
	GRPC_PYTHON_BUILD_WITH_CYTHON="True"

$(eval $(call Py3Package,python3-grpcio-tools))
$(eval $(call BuildPackage,python3-grpcio-tools))
$(eval $(call BuildPackage,python3-grpcio-tools-src))
