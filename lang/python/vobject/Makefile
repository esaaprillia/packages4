# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.

include $(TOPDIR)/rules.mk

PKG_NAME:=vobject
PKG_VERSION:=0.9.9
PKG_RELEASE:=1
PKG_LICENSE:=Apache-2.0

PYPI_NAME:=$(PKG_NAME)
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk

include ../python3-package.mk

define Package/python3-vobject
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=VObject
  URL:=http://eventable.github.io/vobject/
  DEPENDS:=+python3 +python3-dateutil +python3-pytz +python3-six
endef

define Package/python3-vobject/description
  vCard and vCalendar support for Python
endef

$(eval $(call Py3Package,python3-vobject))
$(eval $(call BuildPackage,python3-vobject))
$(eval $(call BuildPackage,python3-vobject-src))
