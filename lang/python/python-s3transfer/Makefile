include $(TOPDIR)/rules.mk

PKG_NAME:=python-s3transfer
PKG_VERSION:=0.18.0
PKG_RELEASE:=1

PYPI_NAME:=s3transfer
PKG_HASH:=skip

PKG_MAINTAINER:=Daniel Danzberger <daniel@dd-wrt.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.txt

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-botocore/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-s3transfer
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Amazon S3 Transfer Manager
  URL:=https://github.com/boto/s3transfer
  DEPENDS:= \
	+python3-light \
	+python3-logging \
	+python3-multiprocessing \
	+python3-botocore
endef

define Package/python3-s3transfer/description
S3transfer is a Python library for managing Amazon S3 transfers.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-s3transfer))
$(eval $(call BuildPackage,python3-s3transfer))
$(eval $(call BuildPackage,python3-s3transfer-src))
