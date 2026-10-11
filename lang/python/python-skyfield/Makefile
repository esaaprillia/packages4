include $(TOPDIR)/rules.mk

PKG_NAME:=python-skyfield
PKG_VERSION:=1.55
PKG_RELEASE:=1

PYPI_NAME:=skyfield
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-skyfield
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Elegant astronomy for Python
  URL:=http://github.com/brandon-rhodes/python-skyfield/
  DEPENDS:= \
	+python3-light \
	+python3-certifi \
	+python3-jplephem \
	+python3-numpy \
	+python3-sgp4
endef

define Package/python3-skyfield/description
Skyfield is a pure-Python astronomy package that is compatible with both Python 2 and 3 and makes it easy to generate high precision research-grade positions for planets and Earth satellites.
endef

$(eval $(call Py3Package,python3-skyfield))
$(eval $(call BuildPackage,python3-skyfield))
$(eval $(call BuildPackage,python3-skyfield-src))
