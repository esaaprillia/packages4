include $(TOPDIR)/rules.mk

PKG_NAME:=python-probatio
PKG_VERSION:=0.11.2
PKG_RELEASE:=1

PYPI_NAME:=probatio
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

define Package/python3-probatio
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Put your data to the proof.
  URL:=https://probatio.frenck.dev/
  DEPENDS:=+python3
endef

define Package/python3-probatio/description
Probatio. A modern, maintained data validation library for Python. Clean-room, MIT-licensed, drop-in reimplementation of voluptuous.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-probatio))
$(eval $(call BuildPackage,python3-probatio))
$(eval $(call BuildPackage,python3-probatio-src))
