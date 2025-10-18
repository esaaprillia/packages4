include $(TOPDIR)/rules.mk

PKG_NAME:=python-executing
PKG_VERSION:=2.2.1
PKG_RELEASE:=1

PYPI_NAME:=executing
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-executing
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Get the currently executing AST node of a frame, and other information
  URL:=https://github.com/alexmojaki/executing
  DEPENDS:=+python3
endef

define Package/python3-executing/description
  This mini-package lets you get information about what a frame is currently doing, particularly the AST node being executed.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-executing))
$(eval $(call BuildPackage,python3-executing))
$(eval $(call BuildPackage,python3-executing-src))
