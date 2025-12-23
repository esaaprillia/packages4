include $(TOPDIR)/rules.mk

PKG_NAME:=python-broadlink
PKG_VERSION:=0.19.0
PKG_RELEASE:=1

PYPI_NAME:=broadlink
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-broadlink
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python API for controlling Broadlink devices
  URL:=http://github.com/mjg59/python-broadlink
  DEPENDS:=+python3 +python3-cryptography
endef

define Package/python3-broadlink/description
A Python module and CLI for controlling Broadlink devices locally.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-broadlink))
$(eval $(call BuildPackage,python3-broadlink))
$(eval $(call BuildPackage,python3-broadlink-src))
