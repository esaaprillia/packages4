include $(TOPDIR)/rules.mk

PKG_NAME:=python-hijridate
PKG_VERSION:=2.5.0
PKG_RELEASE:=1

PYPI_NAME:=hijridate
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-fancy-pypi-readme/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-hijridate
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Accurate Hijri-Gregorian dates converter based on Umm al-Qura calendar
  URL:=https://hijridate.readthedocs.io/
  DEPENDS:=+python3
endef

define Package/python3-hijridate/description
HijriDate is a Python package for converting between Hijri and Gregorian dates using the Umm al-Qura calendar. The package has been thoroughly verified and tested against original references to ensure its accuracy and reliability. It has an intuitive design, allows rich comparison and basic formatting of Hijri dates, and is optimized for performance.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-hijridate))
$(eval $(call BuildPackage,python3-hijridate))
$(eval $(call BuildPackage,python3-hijridate-src))
