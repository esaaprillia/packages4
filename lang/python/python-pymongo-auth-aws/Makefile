include $(TOPDIR)/rules.mk

PKG_NAME:=python-pymongo-auth-aws
PKG_VERSION:=1.3.0
PKG_RELEASE:=1

PYPI_NAME:=pymongo_auth_aws
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-hatchling/host python-hatch-requirements-txt/host
HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-hatchling/host python-hatch-requirements-txt/host python-boto3/host python-botocore/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pymongo-auth-aws
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=MONGODB-AWS authentication support for PyMongo
  URL:=https://github.com/mongodb/pymongo-auth-aws
  DEPENDS:= \
	+python3 \
	+python3-boto3 \
	+python3-botocore
endef

define Package/python3-pymongo-auth-aws/description
MONGODB-AWS authentication support for PyMongo.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pymongo-auth-aws))
$(eval $(call BuildPackage,python3-pymongo-auth-aws))
$(eval $(call BuildPackage,python3-pymongo-auth-aws-src))
