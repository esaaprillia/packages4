include $(TOPDIR)/rules.mk

PKG_NAME:=python-colored
PKG_VERSION:=2.3.2
PKG_RELEASE:=1

PYPI_NAME:=colored
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-colored
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Simple python library for color and formatting to terminal
  URL:=https://dslackw.gitlab.io/colored/
  DEPENDS:= \
	+python3
endef

define Package/python3-colored/description
Colored, it's a simple Python library for color and formatting in terminal.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-colored))
$(eval $(call BuildPackage,python3-colored))
$(eval $(call BuildPackage,python3-colored-src))
