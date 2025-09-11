include $(TOPDIR)/rules.mk

PKG_NAME:=python-terminaltables
PKG_VERSION:=3.1.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=terminaltables
PKG_SOURCE_URL:=https://github.com/jasonacox/tinytuya/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-terminaltables
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Generate simple tables in terminals from a nested list of strings.
  URL:=https://robpol86.github.io/terminaltables
  DEPENDS:=+python3
endef

define Package/python3-terminaltables/description
Easily draw tables in terminal/console applications from a list of lists of strings. Supports multi-line rows.
endef

$(eval $(call Py3Package,python3-terminaltables))
$(eval $(call BuildPackage,python3-terminaltables))
$(eval $(call BuildPackage,python3-terminaltables-src))
