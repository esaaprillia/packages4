include $(TOPDIR)/rules.mk

PKG_NAME:=python-isoduration
PKG_VERSION:=20.11.0
PKG_RELEASE:=1

PYPI_NAME:=isoduration
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=ISC
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-isoduration
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Operations with ISO 8601 durations
  URL:=https://github.com/bolsote/isoduration
  DEPENDS:= \
	+python3-light \
	+python3-arrow
endef

define Package/python3-isoduration/description
ISO 8601 is most commonly known as a way to exchange datetimes in textual format. A lesser known aspect of the standard is the representation of durations.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-isoduration))
$(eval $(call BuildPackage,python3-isoduration))
$(eval $(call BuildPackage,python3-isoduration-src))
