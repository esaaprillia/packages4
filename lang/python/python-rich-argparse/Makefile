include $(TOPDIR)/rules.mk

PKG_NAME:=python-rich-argparse
PKG_VERSION:=1.7.2
PKG_RELEASE:=1

PYPI_NAME:=rich_argparse
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

define Package/python3-rich-argparse
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Rich help formatters for argparse and optparse
  URL:=https://github.com/hamdanal/rich-argparse
  DEPENDS:= \
	+python3 \
	+python3-rich
endef

define Package/python3-rich-argparse/description
rich-argparse improves the look and readability of argparse's help while requiring minimal changes to the code.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-rich-argparse))
$(eval $(call BuildPackage,python3-rich-argparse))
$(eval $(call BuildPackage,python3-rich-argparse-src))
