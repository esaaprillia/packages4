include $(TOPDIR)/rules.mk

PKG_NAME:=python-regex
PKG_VERSION:=2025.9.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0 CNRI-Python
PKG_LICENSE_FILES:=LICENSE.txt

PYPI_NAME:=regex
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-regex
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Alternative regular expression module, to replace re.
  URL:=https://github.com/mrabarnett/mrab-regex
  DEPENDS:=+python3
endef

define Package/python3-regex/description
This regex implementation is backwards-compatible with the standard ‘re’ module, but offers additional functionality.
endef

$(eval $(call Py3Package,python3-regex))
$(eval $(call BuildPackage,python3-regex))
$(eval $(call BuildPackage,python3-regex-src))


