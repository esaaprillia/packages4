include $(TOPDIR)/rules.mk

PKG_NAME:=python-hatch-build-scripts
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PYPI_NAME:=hatch_build_scripts
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

HOST_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-hatch-build-scripts
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Dependency injection without the boilerplate.
  URL:=https://github.com/rmorshea/hatch-build-scripts
  DEPENDS:= \
	+python3
endef

define Package/python3-hatch-build-scripts/description
  A plugin for Hatch that allows you to run arbitrary build scripts and include their artifacts in your package distributions.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-hatch-build-scripts))
$(eval $(call BuildPackage,python3-hatch-build-scripts))
$(eval $(call BuildPackage,python3-hatch-build-scripts-src))
