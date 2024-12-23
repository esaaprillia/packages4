include $(TOPDIR)/rules.mk

PKG_NAME:=python-hassil
PKG_VERSION:=2.0.5
PKG_RELEASE:=1

PYPI_NAME:=hassil
PKG_HASH:=0dffcb80ce0b5b6f9b9dd3d6551caf1eb303d738b7fe453adfbda717acfb7d4b

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.md

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-hassil
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=The Home Assistant Intent Language parser
  URL:=https://github.com/rhasspy/pyspeex-noise
  DEPENDS:=+python3-light +python3-yaml +python3-unicode-rbnf
endef

define Package/python3-hassil/description
  The Home Assistant Intent Language (HassIL) parser for intents.
endef

$(eval $(call Py3Package,python3-hassil))
$(eval $(call BuildPackage,python3-hassil))
$(eval $(call BuildPackage,python3-hassil-src))
