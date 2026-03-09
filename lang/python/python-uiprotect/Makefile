include $(TOPDIR)/rules.mk

PKG_NAME:=python-uiprotect
PKG_VERSION:=10.2.2
PKG_RELEASE:=1

PYPI_NAME:=uiprotect
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-uiprotect
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python API for Unifi Protect (Unofficial)
  URL:=https://uiprotect.readthedocs.io/
  DEPENDS:=+python3 +python3-rich +python3-async-timeout +python3-aiofiles +python3-aiohttp +python3-aioshutil +python3-dateparser +python3-orjson +python3-packaging +python3-pillow +python3-platformdirs +python3-pydantic +python3-pyjwt +python3-yarl +python3-typer +python3-convertertools +python3-propcache +python3-pydantic-extra-types
endef

define Package/python3-uiprotect/description
Unofficial UniFi Protect Python API and CLI
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-uiprotect))
$(eval $(call BuildPackage,python3-uiprotect))
$(eval $(call BuildPackage,python3-uiprotect-src))
