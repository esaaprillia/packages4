include $(TOPDIR)/rules.mk

PKG_NAME:=python-trollsift
PKG_VERSION:=1.0.1
PKG_RELEASE:=1

PYPI_NAME:=trollsift
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-vcs/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-trollsift
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=String parser/formatter
  URL:=https://github.com/pytroll/trollsift
  DEPENDS:= \
	+python3-light
endef

define Package/python3-trollsift/description
Trollsift is a collection of modules that assist with formatting, parsing and filtering satellite granule file names.
endef

$(eval $(call Py3Package,python3-trollsift))
$(eval $(call BuildPackage,python3-trollsift))
$(eval $(call BuildPackage,python3-trollsift-src))
