include $(TOPDIR)/rules.mk

PKG_NAME:=python-gspread
PKG_VERSION:=6.2.1
PKG_RELEASE:=1

PYPI_NAME:=gspread
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-gspread
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Google Spreadsheets Python API
  URL:=https://gspread.readthedocs.io/
  DEPENDS:=+python3 +python3-google-auth +python3-google-auth-oauthlib
endef

define Package/python3-gspread/description
Google Spreadsheets Python API v4
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-gspread))
$(eval $(call BuildPackage,python3-gspread))
$(eval $(call BuildPackage,python3-gspread-src))
