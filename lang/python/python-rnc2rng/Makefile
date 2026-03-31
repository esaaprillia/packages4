include $(TOPDIR)/rules.mk

PKG_NAME:=python-rnc2rng
PKG_VERSION:=2.7.0
PKG_RELEASE:=1

PYPI_NAME:=rnc2rng
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-rply/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-rnc2rng
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=RELAX NG Compact to regular syntax conversion library
  URL:=https://github.com/djc/rnc2rng
  DEPENDS:= \
	+python3-light \
	+python3-rply
endef

define Package/python3-rnc2rng/description
Converts RELAX NG schemata in Compact syntax (rnc) to the equivalent schema in the XML-based default RELAX NG syntax.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-rnc2rng))
$(eval $(call BuildPackage,python3-rnc2rng))
$(eval $(call BuildPackage,python3-rnc2rng-src))
