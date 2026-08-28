include $(TOPDIR)/rules.mk

PKG_NAME:=python-gazetteer-matcher
PKG_VERSION:=1.1.0
PKG_RELEASE:=1

PYPI_NAME:=gazetteer_matcher
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-gazetteer-matcher
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Constraint-driven gazetteer matcher for Home Assistant intents
  URL:=https://github.com/OHF-Voice/gazetteer-matcher
  DEPENDS:=+python3 +python3-yaml +python3-unicode-rbnf +python3-home-assistant-intents
endef

define Package/python3-gazetteer-matcher/description
An English-language, constraint-driven intent recognizer for Home Assistant voice commands.
endef

$(eval $(call Py3Package,python3-gazetteer-matcher))
$(eval $(call BuildPackage,python3-gazetteer-matcher))
$(eval $(call BuildPackage,python3-gazetteer-matcher-src))
