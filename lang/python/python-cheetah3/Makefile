include $(TOPDIR)/rules.mk

PKG_NAME:=python-cheetah3
PKG_VERSION:=3.2.6
PKG_RELEASE:=1

PYPI_NAME:=Cheetah3
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-cheetah3
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Cheetah is a template engine and code generation tool
  URL:=https://github.com/CheetahTemplate3
  DEPENDS:=+python3
endef

define Package/python3-cheetah3/description
Cheetah3 is a free and open source template engine and code generation tool.
endef

PYTHON3_PKG_WHEEL_NAME:=cheetah3
PYTHON3_PKG_WHEEL_VERSION:=3.2.6

PYTHON3_HOST_WHEEL_NAME:=cheetah3
PYTHON3_HOST_WHEEL_VERSION:=3.2.6

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-cheetah3))
$(eval $(call BuildPackage,python3-cheetah3))
$(eval $(call BuildPackage,python3-cheetah3-src))
