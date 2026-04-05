include $(TOPDIR)/rules.mk

PKG_NAME:=python-ecos
PKG_VERSION:=2.0.14
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=COPYING

PYPI_NAME:=ecos
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-oldest-supported-numpy/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-ecos
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python Wrapper for Embedded Conic Solver (ECOS)
  URL:=http://github.com/embotech/ecos
  DEPENDS:=+python3 +python3-numpy +python3-scipy +ecos
endef

define Package/python3-ecos/description
This is the Python package for ECOS: Embedded Cone Solver. See Github page for more information.
endef

$(eval $(call Py3Package,python3-ecos))
$(eval $(call BuildPackage,python3-ecos))
$(eval $(call BuildPackage,python3-ecos-src))
