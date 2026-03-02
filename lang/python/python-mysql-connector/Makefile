include $(TOPDIR)/rules.mk

PKG_NAME:=python-mysql-connector
PKG_VERSION:=9.6.0
PKG_RELEASE:=1

PYPI_NAME:=mysql_connector_python
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL GPLv2
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-mysql-connector
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A self-contained Python driver for communicating with MySQL servers
  URL:=https://dev.mysql.com/doc/connector-python/
  DEPENDS:= \
	+python3-light
endef

define Package/python3-mysql-connector/description
MySQL Connector/Python enables Python programs to access MySQL databases, using an API that is compliant with the Python Database API Specification v2.0 (PEP 249).
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-mysql-connector))
$(eval $(call BuildPackage,python3-mysql-connector))
$(eval $(call BuildPackage,python3-mysql-connector-src))
