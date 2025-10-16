include $(TOPDIR)/rules.mk

PKG_NAME:=python-retrying
PKG_VERSION:=1.4.2
PKG_RELEASE:=1

PYPI_NAME:=retrying
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-retrying
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Retrying
  URL:=https://github.com/groodt/retrying
  DEPENDS:=+python3
endef

define Package/python3-retrying/description
  Retrying is an Apache 2.0 licensed general-purpose retrying library, written in Python, to simplify the task of adding retry behavior to just about anything.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-retrying))
$(eval $(call BuildPackage,python3-retrying))
$(eval $(call BuildPackage,python3-retrying-src))
