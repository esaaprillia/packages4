include $(TOPDIR)/rules.mk

PKG_NAME:=python-blobfile
PKG_VERSION:=3.2.0
PKG_RELEASE:=1

PYPI_NAME:=blobfile
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Unlicense
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-blobfile
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Read GCS, ABS and local paths with the same interface, clone of tensorflow.io.gfile
  URL:=https://github.com/christopher-hesse/blobfile
  DEPENDS:= \
	+python3 \
	+python3-cryptodomex \
	+python3-urllib3 \
	+python3-lxml \
	+python3-filelock
endef

define Package/python3-blobfile/description
This is a library that provides a Python-like interface for reading local and remote files (only from blob storage), with an API similar to open() as well as some of the os.path and shutil functions.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-blobfile))
$(eval $(call BuildPackage,python3-blobfile))
$(eval $(call BuildPackage,python3-blobfile-src))
