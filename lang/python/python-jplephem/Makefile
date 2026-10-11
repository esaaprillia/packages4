include $(TOPDIR)/rules.mk

PKG_NAME:=python-jplephem
PKG_VERSION:=2.24
PKG_RELEASE:=1

PYPI_NAME:=jplephem
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=numpy/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-jplephem
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Use a JPL ephemeris to predict planet positions.
  URL:=https://github.com/brandon-rhodes/python-jplephem/
  DEPENDS:= \
	+python3-light \
	+python3-numpy
endef

define Package/python3-jplephem/description
This package can load and use a Jet Propulsion Laboratory (JPL) ephemeris for predicting the position and velocity of a planet or other Solar System body.
endef

$(eval $(call Py3Package,python3-jplephem))
$(eval $(call BuildPackage,python3-jplephem))
$(eval $(call BuildPackage,python3-jplephem-src))
