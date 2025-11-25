include $(TOPDIR)/rules.mk

PKG_NAME:=python-pysmi
PKG_VERSION:=1.6.2
PKG_RELEASE:=1

PYPI_NAME:=pysmi
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE.rst

PKG_BUILD_DEPENDS:=python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pysmi
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A pure-Python implementation of SNMP/SMI MIB parsing and conversion library.
  URL:=https://www.pysnmp.com/pysmi/
  DEPENDS:=+python3 +python3-ply +python3-jinja2 +python3-requests
endef

define Package/python3-pysmi/description
PySMI is a pure-Python implementation of SNMP SMI MIB parser. This tool is designed to turn ASN.1 MIBs into various formats. As of this moment, JSON and PySNMP modules can be generated from ASN.1 MIBs.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pysmi))
$(eval $(call BuildPackage,python3-pysmi))
$(eval $(call BuildPackage,python3-pysmi-src))
