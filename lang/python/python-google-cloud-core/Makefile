include $(TOPDIR)/rules.mk

PKG_NAME:=python-google-cloud-core
PKG_VERSION:=2.5.0
PKG_RELEASE:=1

PYPI_NAME:=google_cloud_core
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-google-cloud-core
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Google Cloud API client core library
  URL:=https://github.com/googleapis/python-cloud-core
  DEPENDS:=+python3 +python3-google-api-core +python3-google-auth
endef

define Package/python3-google-cloud-core/description
This library is not meant to stand-alone. Instead it defines common helpers (e.g. base Client classes) used by all of the google-cloud-* packages.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-google-cloud-core))
$(eval $(call BuildPackage,python3-google-cloud-core))
$(eval $(call BuildPackage,python3-google-cloud-core-src))
