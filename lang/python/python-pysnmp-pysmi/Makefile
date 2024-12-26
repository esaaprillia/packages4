include $(TOPDIR)/rules.mk

PKG_NAME:=python-pysnmp-pysmi
PKG_VERSION:=1.1.12
PKG_RELEASE:=1

PYPI_NAME:=pysnmp_pysmi
PKG_HASH:=7d12ee12fb99c08449318430ce1b1633f6eee5d938e880215f41cc9976ecdcbb

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE.rst

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pysnmp-pysmi
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=SNMP MIB parser
  URL:=https://github.com/pysnmp/pysmi
  DEPENDS:=+python3-logging +python3-urllib +python3-ply +python3-requests
endef

define Package/python3-pysnmp-pysmi/description
  PySMI is a pure-Python implementation of SNMP SMI MIB parser.
endef

$(eval $(call Py3Package,python3-pysnmp-pysmi))
$(eval $(call BuildPackage,python3-pysnmp-pysmi))
$(eval $(call BuildPackage,python3-pysnmp-pysmi-src))
