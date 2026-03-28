include $(TOPDIR)/rules.mk

PKG_NAME:=python-google-nest-sdm
PKG_VERSION:=9.1.2
PKG_RELEASE:=1

PYPI_NAME:=google_nest_sdm
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-google-nest-sdm
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Library for the Google Nest SDM API
  URL:=https://github.com/allenporter/python-google-nest-sdm
  DEPENDS:= \
	+python3-light \
	+python3-aiohttp \
	+python3-google-auth \
	+python3-google-auth-oauthlib \
	+python3-google-cloud-pubsub \
	+python3-requests-oauthlib \
	+python3-yaml \
	+python3-mashumaro
endef

define Package/python3-google-nest-sdm/description
This is a library for Google Nest Device Access using the Smart Device Management API.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-google-nest-sdm))
$(eval $(call BuildPackage,python3-google-nest-sdm))
$(eval $(call BuildPackage,python3-google-nest-sdm-src))
