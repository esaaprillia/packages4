include $(TOPDIR)/rules.mk

PKG_NAME:=python-langcodes
PKG_VERSION:=3.5.1
PKG_RELEASE:=1

PYPI_NAME:=langcodes
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-langcodes
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Tools for labeling human languages with IETF language tags
  URL:=https://github.com/georgkrause/langcodes
  DEPENDS:=+python3 +python3-language-data
endef

define Package/python3-langcodes/description
langcodes knows what languages are. It knows the standardized codes that refer to them, such as en for English, es for Spanish and hi for Hindi.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-langcodes))
$(eval $(call BuildPackage,python3-langcodes))
$(eval $(call BuildPackage,python3-langcodes-src))
