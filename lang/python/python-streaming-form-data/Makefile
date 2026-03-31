include $(TOPDIR)/rules.mk

PKG_NAME:=python-streaming-form-data
PKG_VERSION:=2.0.0
PKG_RELEASE:=1

PYPI_NAME:=streaming_form_data
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-streaming-form-data
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Streaming parser for multipart/form-data
  URL:=https://streaming-form-data.readthedocs.io/
  DEPENDS:= \
	+python3-light \
	+python3-smart-open \
	+python3-aiofiles
endef

define Package/python3-streaming-form-data/description
streaming_form_data provides a Python parser for parsing multipart/form-data input chunks (the encoding used when submitting data over HTTP through HTML forms).
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-streaming-form-data))
$(eval $(call BuildPackage,python3-streaming-form-data))
$(eval $(call BuildPackage,python3-streaming-form-data-src))
