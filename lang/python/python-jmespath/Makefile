include $(TOPDIR)/rules.mk

PKG_NAME:=python-jmespath
PKG_VERSION:=1.1.0
PKG_RELEASE:=1

PYPI_NAME:=jmespath
PKG_HASH:=skip

PKG_MAINTAINER:=Daniel Danzberger <daniel@dd-wrt.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-jmespath
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=JSON Matching Expressions
  URL:=https://github.com/jmespath/jmespath.py
  DEPENDS:=+python3-light
endef

define Package/python3-jmespath/description
JMESPath (pronounced “james path”) allows you to declaratively specify
how to extract elements from a JSON document.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-jmespath))
$(eval $(call BuildPackage,python3-jmespath))
$(eval $(call BuildPackage,python3-jmespath-src))
