include $(TOPDIR)/rules.mk

PKG_NAME:=python-zeep
PKG_VERSION:=4.3.2
PKG_RELEASE:=1

PYPI_NAME:=zeep
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-zeep
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A Python SOAP client
  URL:=http://docs.python-zeep.org/
  DEPENDS:=+python3-light +python3-attrs +python3-isodate +python3-lxml +python3-platformdirs +python3-requests +python3-requests-toolbelt +python3-requests-file +python3-pytz +python3-httpx +python3-packaging
endef

define Package/python3-zeep/description
Python SOAP client
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-zeep))
$(eval $(call BuildPackage,python3-zeep))
$(eval $(call BuildPackage,python3-zeep-src))
