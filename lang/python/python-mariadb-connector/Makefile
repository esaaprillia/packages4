include $(TOPDIR)/rules.mk

PKG_NAME:=python-mariadb-connector
PKG_VERSION:=1.1.14
PKG_RELEASE:=1

PYPI_NAME:=mariadb-connector-python
PKG_SOURCE_URL:=https://github.com/mariadb-corporation/mariadb-connector-python/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-2.1
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-packaging/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-mariadb-connector
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python MariaDB extension
  URL:=https://mariadb.org/connector-python/
  DEPENDS:= \
	+python3-light \
	+python3-packaging \
	+libmariadb
endef

define Package/python3-mariadb-connector/description
MariaDB Connector/Python enables python programs to access MariaDB and MySQL databases, using an API which is compliant with the Python DB API 2.0 (PEP-249). It is written in C and uses MariaDB Connector/C client library for client server communication.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-mariadb-connector))
$(eval $(call BuildPackage,python3-mariadb-connector))
$(eval $(call BuildPackage,python3-mariadb-connector-src))
