include $(TOPDIR)/rules.mk

PKG_NAME:=python-pydantic-extra-types
PKG_VERSION:=2.11.1
PKG_RELEASE:=1

PYPI_NAME:=pydantic_extra_types
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

define Package/python3-pydantic-extra-types
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Extra Pydantic types.
  URL:=https://github.com/pydantic/pydantic-extra-types
  DEPENDS:=+python3 +python3-pydantic +python3-typing-extensions
endef

define Package/python3-pydantic-extra-types/description
A place for pydantic types that probably shouldn't exist in the main pydantic lib.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pydantic-extra-types))
$(eval $(call BuildPackage,python3-pydantic-extra-types))
$(eval $(call BuildPackage,python3-pydantic-extra-types-src))
