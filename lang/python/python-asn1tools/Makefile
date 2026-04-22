include $(TOPDIR)/rules.mk

PKG_NAME:=python-asn1tools
PKG_VERSION:=0.167.0
PKG_RELEASE:=1

PYPI_NAME:=asn1tools
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-asn1tools
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=ASN.1 parsing, encoding and decoding.
  URL:=https://github.com/eerimoq/asn1tools
  DEPENDS:= \
	+python3 \
	+python3-pyparsing \
	+python3-prompt-toolkit \
	+python3-bitstruct \
	+python3-diskcache
endef

define Package/python3-asn1tools/description
A Python package for ASN.1 parsing, encoding and decoding.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-asn1tools))
$(eval $(call BuildPackage,python3-asn1tools))
$(eval $(call BuildPackage,python3-asn1tools-src))
