include $(TOPDIR)/rules.mk

PKG_NAME:=python-earthengine-api
PKG_VERSION:=1.7.1
PKG_RELEASE:=1

PYPI_NAME:=earthengine_api
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-earthengine-api
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Earth Engine Python API
  URL:=http://code.google.com/p/earthengine-api
  DEPENDS:=+python3 +python3-google-cloud-storage +python3-google-api-python-client +python3-google-auth +python3-google-auth-httplib2 +python3-httplib2 +python3-requests
endef

define Package/python3-earthengine-api/description
Visit the Google Earth Engine Python installation page for set up instructions.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-earthengine-api))
$(eval $(call BuildPackage,python3-earthengine-api))
$(eval $(call BuildPackage,python3-earthengine-api-src))
