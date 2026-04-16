include $(TOPDIR)/rules.mk

PKG_NAME:=python-publicsuffix2
PKG_VERSION:=2.20191221
PKG_RELEASE:=1

PYPI_NAME:=publicsuffix2
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT MPL-2.0
PKG_LICENSE_FILES:=publicsuffix2.LICENSE

PKG_BUILD_DEPENDS:=python-requests/host
HOST_BUILD_DEPENDS:=python-requests/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-publicsuffix2
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=HTTP request library for Python3
  URL:=https://github.com/aboutcode-org/python-publicsuffix2
  DEPENDS:=+python3 +python3-requests
endef

define Package/python3-publicsuffix2/description
This module allows you to get the public suffix, as well as the registrable domain, of a domain name using the Public Suffix List from http://publicsuffix.org
endef

$(eval $(call Py3Package,python3-publicsuffix2))
$(eval $(call BuildPackage,python3-publicsuffix2))
$(eval $(call BuildPackage,python3-publicsuffix2-src))
$(eval $(call HostBuild))
