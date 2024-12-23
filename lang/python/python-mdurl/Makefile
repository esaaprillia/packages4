include $(TOPDIR)/rules.mk

PKG_NAME:=python-mdurl
PKG_VERSION:=0.1.2
PKG_RELEASE:=1

PYPI_NAME:=mdurl
PKG_HASH:=bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-mdurl
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Markdown URL utilities
  URL:=https://github.com/executablebooks/mdurl
  DEPENDS:=+python3-light
endef

define Package/python3-mdurl/description
This is a Python port of the JavaScript mdurl package. See the upstream README.md file for API documentation.
endef

$(eval $(call Py3Package,python3-mdurl))
$(eval $(call BuildPackage,python3-mdurl))
$(eval $(call BuildPackage,python3-mdurl-src))
