include $(TOPDIR)/rules.mk

PKG_NAME:=python-sgp4
PKG_VERSION:=2.27
PKG_RELEASE:=1

PYPI_NAME:=sgp4
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-sgp4
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=The C++ SGP4 routine that, given an Earth satellite TLE, computes its position.
  URL:=https://github.com/brandon-rhodes/python-sgp4
  DEPENDS:= \
	+python3-light
endef

define Package/python3-sgp4/description
This package compiles the official C++ code from Revisiting Spacetrack Report #3 (AIAA 2006-6753) — specifically, the 2023 May 09 release from David Vallado’s Fundamentals of Astrodynamics and Applications webpage — and uses it to compute the positions of satellites in Earth orbit.
endef

$(eval $(call Py3Package,python3-sgp4))
$(eval $(call BuildPackage,python3-sgp4))
$(eval $(call BuildPackage,python3-sgp4-src))
