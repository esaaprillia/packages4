include $(TOPDIR)/rules.mk

PKG_NAME:=python-language-data
PKG_VERSION:=1.3.0
PKG_RELEASE:=1

PYPI_NAME:=language_data
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-language-data
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Supplementary data about languages used by the langcodes module
  URL:=https://github.com/georgkrause/language_data
  DEPENDS:=+python3 +python3-marisa-trie
endef

define Package/python3-language-data/description
language_data is a supplement to the langcodes module, for working with standardized codes for human languages.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-language-data))
$(eval $(call BuildPackage,python3-language-data))
$(eval $(call BuildPackage,python3-language-data-src))
