include $(TOPDIR)/rules.mk

PKG_NAME:=python-ldap3
PKG_VERSION:=2.9.1
PKG_RELEASE:=1

PYPI_NAME:=ldap3
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=COPYING.LESSER.txt COPYING.txt LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-ldap3
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A strictly RFC 4510 conforming LDAP V3 pure Python client library
  URL:=https://github.com/cannatag/ldap3
  DEPENDS:=+python3 +python3-pyasn1
endef

define Package/python3-ldap3/description
ldap3 is a strictly RFC 4510 conforming LDAP V3 pure Python client library. The same codebase runs in Python 2, Python 3, PyPy and PyPy3.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-ldap3))
$(eval $(call BuildPackage,python3-ldap3))
$(eval $(call BuildPackage,python3-ldap3-src))
