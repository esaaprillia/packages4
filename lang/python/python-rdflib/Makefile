include $(TOPDIR)/rules.mk

PKG_NAME:=python-rdflib
PKG_VERSION:=7.6.0
PKG_RELEASE:=1

PYPI_NAME:=rdflib
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host
HOST_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-rdflib
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=RDFLib is a pure Python package for working with RDF.
  URL:=https://rdflib.readthedocs.org/
  DEPENDS:= \
	+python3-light \
	+python3-isodate \
	+python3-pyparsing
endef

define Package/python3-rdflib/description
RDFLib is a Python library for working with RDF, a simple yet powerful language for representing information.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-rdflib))
$(eval $(call BuildPackage,python3-rdflib))
$(eval $(call BuildPackage,python3-rdflib-src))
