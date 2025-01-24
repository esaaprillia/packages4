include $(TOPDIR)/rules.mk

PKG_NAME:=python-hassil
PKG_VERSION:=2.1.0
PKG_RELEASE:=1

PYPI_NAME:=hassil
PKG_HASH:=0c1460c4e0c88f8442bc9ddbe5aabeee272372bead340ae9bf28d66e9a7daf61

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
