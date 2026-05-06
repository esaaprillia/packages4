include $(TOPDIR)/rules.mk

PKG_NAME:=python-typing-inspection
PKG_VERSION:=0.4.2
PKG_RELEASE:=1

PYPI_NAME:=typing_inspection
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host
HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-typing-inspection
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Runtime typing introspection tools
  URL:=https://github.com/pydantic/typing-inspection
  DEPENDS:=+python3 +python3-typing-extensions
endef

define Package/python3-typing-inspection/description
typing-inspection provides tools to inspect type annotations at runtime.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-typing-inspection))
$(eval $(call BuildPackage,python3-typing-inspection))
$(eval $(call BuildPackage,python3-typing-inspection-src))
