include $(TOPDIR)/rules.mk

PKG_NAME:=python-google-resumable-media
PKG_VERSION:=2.8.0
PKG_RELEASE:=1

PYPI_NAME:=google_resumable_media
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-google-resumable-media
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Utilities for Google Media Downloads and Resumable Uploads
  URL:=https://github.com/googleapis/google-resumable-media-python
  DEPENDS:=+python3 +python3-google-crc32c
endef

define Package/python3-google-resumable-media/description
Utilities for Google Media Downloads and Resumable Uploads
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-google-resumable-media))
$(eval $(call BuildPackage,python3-google-resumable-media))
$(eval $(call BuildPackage,python3-google-resumable-media-src))
