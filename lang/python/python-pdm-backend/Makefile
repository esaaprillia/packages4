include $(TOPDIR)/rules.mk

PKG_NAME:=python-pdm-backend
PKG_VERSION:=2.4.9
PKG_RELEASE:=1

PYPI_NAME:=pdm_backend
PKG_HASH:=skip

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pdm-backend
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=The build backend used by PDM that supports latest packaging standards
  URL:=https://github.com/pdm-project/pdm-backend
  DEPENDS:=+python3
endef

define Package/python3-pdm-backend/description
This is the backend for PDM projects that is fully-compatible with PEP 517 spec, but you can also use it alone. It reads the metadata of PEP 621 format and coverts it to Core metadata.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pdm-backend))
$(eval $(call BuildPackage,python3-pdm-backend))
$(eval $(call BuildPackage,python3-pdm-backend-src))
