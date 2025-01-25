include $(TOPDIR)/rules.mk

PKG_NAME:=python-grpcio-gcp
PKG_VERSION:=0.2.2
PKG_RELEASE:=1

PYPI_NAME:=grpcio-gcp
PKG_HASH:=e292605effc7da39b7a8734c719afb12ec4b5362add3528d8afad3aa3aa9057c

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache 2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-grpcio-gcp
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=gRPC extensions for Google Cloud Platform
  URL:=https://grpc.io/
  DEPENDS:=+python3 +python3-grpcio
endef

define Package/python3-grpcio-gcp/description
  Package for gRPC-GCP Python.
endef

$(eval $(call Py3Package,python3-grpcio-gcp))
$(eval $(call BuildPackage,python3-grpcio-gcp))
$(eval $(call BuildPackage,python3-grpcio-gcp-src))
