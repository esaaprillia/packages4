include $(TOPDIR)/rules.mk

PKG_NAME:=python-pydantic-settings
PKG_VERSION:=2.15.0
PKG_RELEASE:=1

PYPI_NAME:=pydantic_settings
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pydantic-settings
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Settings management using Pydantic
  URL:=https://github.com/pydantic/pydantic-settings
  DEPENDS:=+python3 +python3-pydantic +python3-dotenv +python3-typing-inspection
endef

define Package/python3-pydantic-settings/description
Settings management using Pydantic
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pydantic-settings))
$(eval $(call BuildPackage,python3-pydantic-settings))
$(eval $(call BuildPackage,python3-pydantic-settings-src))
