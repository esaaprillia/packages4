include $(TOPDIR)/rules.mk

PKG_NAME:=python-grpcio
PKG_VERSION:=1.70.0
PKG_RELEASE:=1

PYPI_NAME:=grpcio
PKG_HASH:=8d1584a68d5922330025881e63a6c1b54cc8117291d382e4fa69339b6d914c56

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cython/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-grpcio
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=HTTP/2-based RPC framework
  URL:=https://grpc.io/
  DEPENDS:= \
	@!OPENSSL_WITH_NPN \
	+libatomic \
	+libcares \
	+libopenssl \
	+libopenssl-legacy \
	+libstdcpp \
	+abseil-cpp \
	+re2 \
	+zlib \
	+python3-asyncio \
	+python3-logging \
	+python3-multiprocessing \
	+python3-protobuf \
	+python3-readline \
	+python3-unittest \
	+python3-urllib \
	+python3-six \
	+python3-xml \
	+python3-yaml
endef

define Package/python3-grpcio/description
  gRPC is a modern, open source, high-performance remote procedure call
  (RPC) framework that can run anywhere. gRPC enables client and server
  applications to communicate transparently, and simplifies the building
  of connected systems.
endef

PYTHON3_PKG_SETUP_VARS += \
	GRPC_PYTHON_CFLAGS="-std=c++17" \
	GRPC_BUILD_WITH_BORING_SSL_ASM="False" \
	GRPC_PYTHON_BUILD_WITH_CYTHON="True" \
	GRPC_PYTHON_BUILD_SYSTEM_OPENSSL="True" \
	GRPC_PYTHON_BUILD_SYSTEM_ZLIB="True" \
	GRPC_PYTHON_BUILD_SYSTEM_CARES="True" \
	GRPC_PYTHON_BUILD_SYSTEM_RE2="True" \
	GRPC_PYTHON_BUILD_SYSTEM_ABSL="True"

define Build/Prepare
	$(call Build/Prepare/Default)
	$(SED) 's,@STAGING_DIR@,$(STAGING_DIR)/usr,g' $(PKG_BUILD_DIR)/setup.py
endef

$(eval $(call Py3Package,python3-grpcio))
$(eval $(call BuildPackage,python3-grpcio))
$(eval $(call BuildPackage,python3-grpcio-src))
