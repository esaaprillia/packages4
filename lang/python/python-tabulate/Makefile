include $(TOPDIR)/rules.mk

PKG_NAME:=python-tabulate
PKG_VERSION:=0.10.0
PKG_RELEASE:=1

PYPI_NAME:=tabulate
PKG_HASH:=skip

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-tabulate
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Pretty-print tabular data
  URL:=https://github.com/astanin/python-tabulate
  DEPENDS:=+python3
endef

define Package/python3-tabulate/description
Pretty-print tabular data in Python, a library and a command-line utility. Repository migrated from bitbucket.org/astanin/python-tabulate.
endef

$(eval $(call Py3Package,python3-tabulate))
$(eval $(call BuildPackage,python3-tabulate))
$(eval $(call BuildPackage,python3-tabulate-src))
