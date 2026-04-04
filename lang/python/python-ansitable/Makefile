include $(TOPDIR)/rules.mk

PKG_NAME:=python-ansitable
PKG_VERSION:=0.11.5
PKG_RELEASE:=1

PYPI_NAME:=ansitable
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

define Package/python3-ansitable
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Quick and easy display of tabular data and matrices with optional ANSI color and borders
  URL:=https://github.com/petercorke/ansitable
  DEPENDS:= \
	+python3 \
	+python3-colored
endef

define Package/python3-ansitable/description
Create a table programatically from Python, or import a table from a Pandas dataframe which is also an easy way to read an Excel or CSV file.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-ansitable))
$(eval $(call BuildPackage,python3-ansitable))
$(eval $(call BuildPackage,python3-ansitable-src))
