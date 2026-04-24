include $(TOPDIR)/rules.mk

PKG_NAME:=luma-core
PKG_VERSION:=2.5.3
PKG_RELEASE:=1

PYPI_NAME:=luma_core
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.rst

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-luma-core
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A component library to support SBC display drivers
  URL:=https://luma-core.readthedocs.io/
  DEPENDS:=+python3 +python3-pillow +python3-smbus2 +python3-cbor2
endef

define Package/python3-luma-core/description
  luma.core is a component library providing a Pillow-compatible drawing canvas for Python 3, and other functionality to support drawing primitives and text-rendering capabilities for small displays on the Raspberry Pi and other single board computers
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-luma-core))
$(eval $(call BuildPackage,python3-luma-core))
$(eval $(call BuildPackage,python3-luma-core-src))
