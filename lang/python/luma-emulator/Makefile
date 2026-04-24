include $(TOPDIR)/rules.mk

PKG_NAME:=luma-emulator
PKG_VERSION:=1.7.0
PKG_RELEASE:=1

PYPI_NAME:=luma_emulator
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.rst

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-luma-emulator
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A suite of pseudo-devices for luma.core components
  URL:=https://luma-emulator.readthedocs.io/
  DEPENDS:=+python3 +python3-luma-core +python3-pygame
endef

define Package/python3-luma-emulator/description
  luma.emulator provides a series of pseudo-display devices which allow the luma.core components to be used without running a physical device.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-luma-emulator))
$(eval $(call BuildPackage,python3-luma-emulator))
$(eval $(call BuildPackage,python3-luma-emulator-src))
