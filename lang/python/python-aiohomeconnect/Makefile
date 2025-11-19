include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiohomeconnect
PKG_VERSION:=0.23.1
PKG_RELEASE:=1

PYPI_NAME:=aiohomeconnect
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-aiohomeconnect
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=An asyncio client for the Home Connect API.
  URL:=https://github.com/MartinHjelmare/aiohomeconnect
  DEPENDS:=+python3 +python3-httpx +python3-httpx-sse +python3-mashumaro
endef

define Package/python3-aiohomeconnect/description
Document parameters, class attributes, return types, and variables inline, with Annotated.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-aiohomeconnect))
$(eval $(call BuildPackage,python3-aiohomeconnect))
$(eval $(call BuildPackage,python3-aiohomeconnect-src))
