include $(TOPDIR)/rules.mk

PKG_NAME:=python-grpcio
PKG_VERSION:=1.68.1
PKG_RELEASE:=1

PYPI_NAME:=grpcio
PKG_HASH:=44a8502dd5de653ae6a73e2de50a401d84184f0331d0ac3daeb044e66d5c5054

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
	GRPC_BUILD_WITH_BORING_SSL_ASM=0 \
	GRPC_PYTHON_BUILD_WITH_CYTHON=1 \
	GRPC_PYTHON_BUILD_SYSTEM_OPENSSL=1 \
	GRPC_PYTHON_BUILD_SYSTEM_ZLIB=1 \
	GRPC_PYTHON_BUILD_SYSTEM_CARES=1 \
	GRPC_PYTHON_BUILD_SYSTEM_RE2=1 \
	GRPC_PYTHON_BUILD_SYSTEM_ABSL=1

define Build/Prepare
	$(call Build/Prepare/Default)
	$(SED) 's,@STAGING_DIR@,$(STAGING_DIR)/usr,g' $(PKG_BUILD_DIR)/setup.py
endef

$(eval $(call Py3Package,python3-grpcio))
$(eval $(call BuildPackage,python3-grpcio))
$(eval $(call BuildPackage,python3-grpcio-src))
