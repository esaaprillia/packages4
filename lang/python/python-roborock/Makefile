include $(TOPDIR)/rules.mk

PKG_NAME:=python-roborock
PKG_VERSION:=5.7.0
PKG_RELEASE:=1

PYPI_NAME:=python_roborock
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-roborock
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A package to control Roborock vacuums.
  URL:=https://python-roborock.readthedocs.io/
  DEPENDS:= \
	+python3-light \
	+python3-click \
	+python3-aiohttp \
	+python3-cryptodome \
	+python3-cryptodomex \
	+python3-paho-mqtt \
	+python3-construct \
	+python3-vacuum-map-parser-roborock \
	+python3-pyrate-limiter \
	+python3-aiomqtt \
	+python3-click-shell
endef

define Package/python3-roborock/description
Roborock library for online and offline control of your vacuums.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-roborock))
$(eval $(call BuildPackage,python3-roborock))
$(eval $(call BuildPackage,python3-roborock-src))
