include $(TOPDIR)/rules.mk

PKG_NAME:=python-coherent-build
PKG_VERSION:=0.35.2
PKG_RELEASE:=1

PYPI_NAME:=coherent_build
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-git-fame/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-coherent-build
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A zero-config Python project build backend
  URL:=https://github.com/coherent-oss/coherent.build
  DEPENDS:=+python3
endef

define Package/python3-coherent-build/description
  A PEP 517 backend for the Coherent Software Development System.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-coherent-build))
$(eval $(call BuildPackage,python3-coherent-build))
$(eval $(call BuildPackage,python3-coherent-build-src))
