include $(TOPDIR)/rules.mk

PKG_NAME:=python-requests-file
PKG_VERSION:=3.0.1
PKG_RELEASE:=1

PYPI_NAME:=requests_file
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-requests-file
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=File transport adapter for Requests
  URL:=https://codeberg.org/dashea/requests-file
  DEPENDS:=+python3-light +python3-requests
endef

define Package/python3-requests-file/description
Requests-File is a transport adapter for use with the Requests Python library to allow local filesystem access via file:// URLs.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-requests-file))
$(eval $(call BuildPackage,python3-requests-file))
$(eval $(call BuildPackage,python3-requests-file-src))
