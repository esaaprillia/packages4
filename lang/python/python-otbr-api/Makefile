include $(TOPDIR)/rules.mk

PKG_NAME:=python-otbr-api
PKG_VERSION:=2.7.0
PKG_RELEASE:=1

PYPI_NAME:=python_otbr_api
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-otbr-api
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=API to interact with an OTBR via its REST API
  URL:=https://github.com/home-assistant-libs/python-otbr-api
  DEPENDS:=+python3 +python3-aiohttp +python3-bitstruct +python3-cryptography +python3-typing-extensions +python3-voluptuous
endef

define Package/python3-otbr-api/description
Python package to interact with an OTBR via its REST API
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-otbr-api))
$(eval $(call BuildPackage,python3-otbr-api))
$(eval $(call BuildPackage,python3-otbr-api-src))
