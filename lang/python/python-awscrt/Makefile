include $(TOPDIR)/rules.mk

PKG_NAME:=python-awscrt
PKG_VERSION:=0.38.0
PKG_RELEASE:=1

PYPI_NAME:=awscrt
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

PYTHON3_PKG_SETUP_VARS += AWS_CRT_BUILD_USE_SYSTEM_LIBS=1 AWS_CRT_BUILD_USE_SYSTEM_LIBCRYPTO=1

define Package/python3-awscrt
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A common runtime for AWS Python projects
  URL:=https://github.com/awslabs/aws-crt-python
  DEPENDS:= \
	+python3-light \
	+aws-c-auth \
	+aws-c-cal \
	+aws-c-common \
	+aws-c-event-stream \
	+aws-c-http \
	+aws-c-io \
	+aws-c-mqtt \
	+aws-c-s3 \
	+aws-checksums \
endef

define Package/python3-awscrt/description
Python 3 bindings for the AWS Common Runtime.
endef

$(eval $(call Py3Package,python3-awscrt))
$(eval $(call BuildPackage,python3-awscrt))
$(eval $(call BuildPackage,python3-awscrt-src))
