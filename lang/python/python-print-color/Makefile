include $(TOPDIR)/rules.mk

PKG_NAME:=python-print-color
PKG_VERSION:=0.4.6
PKG_RELEASE:=1

PYPI_NAME:=print_color
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-print-color
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A simple package to print in color to the terminal
  URL:=https://github.com/xy3/print-color
  DEPENDS:=+python3
endef

define Package/python3-print-color/description
  Print Color is a minimalist approach to terminal color printing in Python.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-print-color))
$(eval $(call BuildPackage,python3-print-color))
$(eval $(call BuildPackage,python3-print-color-src))
