include $(TOPDIR)/rules.mk

PKG_NAME:=python-daqp
PKG_VERSION:=0.8.5
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=daqp
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-cython/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-daqp
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=DAQP: A dual active-set QP solver
  URL:=http://github.com/darnstrom/daqp
  DEPENDS:=+python3
endef

define Package/python3-daqp/description
DAQP is a dual active-set solver that solves convex quadratic programs of the form
endef

$(eval $(call Py3Package,python3-daqp))
$(eval $(call BuildPackage,python3-daqp))
$(eval $(call BuildPackage,python3-daqp-src))
