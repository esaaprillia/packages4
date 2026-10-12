include $(TOPDIR)/rules.mk

PKG_NAME:=python-locket
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PYPI_NAME:=locket
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-locket
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=File-based locks for Python on Linux and Windows
  URL:=http://github.com/mwilliamson/locket.py
  DEPENDS:= \
	+python3-light
endef

define Package/python3-locket/description
Locket implements a file-based lock that can be used by multiple processes provided they use the same path.
endef

$(eval $(call Py3Package,python3-locket))
$(eval $(call BuildPackage,python3-locket))
$(eval $(call BuildPackage,python3-locket-src))
