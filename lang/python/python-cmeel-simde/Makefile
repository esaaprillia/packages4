include $(TOPDIR)/rules.mk

PKG_NAME:=python-cmeel-simde
PKG_VERSION:=0.8.2
PKG_RELEASE:=1

PYPI_NAME:=cmeel_simde
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-cmeel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-cmeel-simde
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=cmeel distribution for simde
  URL:=https://github.com/cmake-wheel/cmeel-simde
  DEPENDS:=+python3
endef

define Package/python3-cmeel-simde/description
This is adding SIMDe as a CMake "external project" to be exported as a wheel by cmeel.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-cmeel-simde))
$(eval $(call BuildPackage,python3-cmeel-simde))
$(eval $(call BuildPackage,python3-cmeel-simde-src))
