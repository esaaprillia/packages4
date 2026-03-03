include $(TOPDIR)/rules.mk

PKG_NAME:=python-soco
PKG_VERSION:=0.30.14
PKG_RELEASE:=1

PYPI_NAME:=soco
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.rst

PKG_BUILD_DEPENDS:=python-pytest/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-soco
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=SoCo (Sonos Controller) is a simple library to control Sonos speakers.
  URL:=https://github.com/SoCo/SoCo
  DEPENDS:= \
	+python3-light \
	+python3-requests \
	+python3-xmltodict \
	+python3-ifaddr \
	+python3-appdirs \
	+python3-lxml
endef

define Package/python3-soco/description
SoCo (Sonos Controller) is a Python library that allows you to control Sonos speakers programmatically.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-soco))
$(eval $(call BuildPackage,python3-soco))
$(eval $(call BuildPackage,python3-soco-src))
