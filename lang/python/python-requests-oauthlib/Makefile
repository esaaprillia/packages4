include $(TOPDIR)/rules.mk

PKG_NAME:=python-requests-oauthlib
PKG_VERSION:=2.0.0
PKG_RELEASE:=1

PYPI_NAME:=requests-oauthlib
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=ISC
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-requests-oauthlib
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=OAuthlib authentication support for Requests.
  URL:=https://requests-oauthlib.readthedocs.org/
  DEPENDS:=+python3 +python3-oauthlib +python3-requests
endef

define Package/python3-requests-oauthlib/description
This project provides first-class OAuth library support for Requests.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-requests-oauthlib))
$(eval $(call BuildPackage,python3-requests-oauthlib))
$(eval $(call BuildPackage,python3-requests-oauthlib-src))
