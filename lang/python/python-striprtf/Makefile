include $(TOPDIR)/rules.mk

PKG_NAME:=python-striprtf
PKG_VERSION:=0.0.29
PKG_RELEASE:=1

PYPI_NAME:=striprtf
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-striprtf
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A simple library to convert rtf to text
  URL:=https://github.com/joshy/striprtf
  DEPENDS:=+python3
endef

define Package/python3-striprtf/description
This is a library to convert Rich Text Format (RTF) files to plain text files. A lot of medical documents are written in RTF format which is not ideal for parsing and further processing. This library converts it to plain old text.
endef

$(eval $(call Py3Package,python3-striprtf))
$(eval $(call BuildPackage,python3-striprtf))
$(eval $(call BuildPackage,python3-striprtf-src))
