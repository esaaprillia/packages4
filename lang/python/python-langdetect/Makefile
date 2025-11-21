include $(TOPDIR)/rules.mk

PKG_NAME:=python-langdetect
PKG_VERSION:=1.0.9
PKG_RELEASE:=1

PYPI_NAME:=langdetect
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-langdetect
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Language detection library ported from Google's language-detection.
  URL:=https://github.com/Mimino666/langdetect
  DEPENDS:=+python3 +python3-six
endef

define Package/python3-langdetect/description
Port of Nakatani Shuyo's language-detection library (version from 03/03/2014) to Python.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-langdetect))
$(eval $(call BuildPackage,python3-langdetect))
$(eval $(call BuildPackage,python3-langdetect-src))
