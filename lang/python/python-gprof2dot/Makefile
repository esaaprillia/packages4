include $(TOPDIR)/rules.mk

PKG_NAME:=python-gprof2dot
PKG_VERSION:=2024.6.6
PKG_RELEASE:=1

PYPI_NAME:=gprof2dot
PKG_HASH:=fa1420c60025a9eb7734f65225b4da02a10fc6dd741b37fa129bc6b41951e5ab

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-3.0
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-gprof2dot
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Generate a dot graph from the output of several profilers.
  URL:=https://github.com/jrfonseca/gprof2dot
  DEPENDS:=+python3
endef

define Package/python3-gprof2dot/description
This is a Python script to convert the output from many profilers into a dot graph.
endef

$(eval $(call Py3Package,python3-gprof2dot))
$(eval $(call BuildPackage,python3-gprof2dot))
$(eval $(call BuildPackage,python3-gprof2dot-src))
