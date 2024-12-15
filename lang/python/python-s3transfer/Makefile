include $(TOPDIR)/rules.mk

PKG_NAME:=python-s3transfer
PKG_VERSION:=0.10.4
PKG_RELEASE:=1

PYPI_NAME:=s3transfer
PKG_HASH:=29edc09801743c21eb5ecbc617a152df41d3c287f67b615f73e5f750583666a7

PKG_MAINTAINER:=Daniel Danzberger <daniel@dd-wrt.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

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

$(eval $(call Py3Package,python3-s3transfer))
$(eval $(call BuildPackage,python3-s3transfer))
$(eval $(call BuildPackage,python3-s3transfer-src))
