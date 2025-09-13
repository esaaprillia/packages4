include $(TOPDIR)/rules.mk

PKG_NAME:=python-typing-inspection
PKG_VERSION:=0.4.1
PKG_RELEASE:=1

PYPI_NAME:=typing_inspection
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

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

$(eval $(call Py3Package,python3-typing-inspection))
$(eval $(call BuildPackage,python3-typing-inspection))
$(eval $(call BuildPackage,python3-typing-inspection-src))
