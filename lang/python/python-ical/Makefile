include $(TOPDIR)/rules.mk

PKG_NAME:=python-ical
PKG_VERSION:=8.2.0
PKG_RELEASE:=1

PYPI_NAME:=ical
PKG_HASH:=fb65ab62a0dc38fb8fb1a1fce3912ea505873c352b51d5206e3e1253b8416cb8

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-ical
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=iCalendar rfc 2445 implementation
  URL:=https://allenporter.github.io/ical/
  DEPENDS:=+python3-dateutil +python3-tzdata +python3-pydantic +python3-pyparsing
endef

define Package/python3-ical/description
This is an iCalendar rfc 5545 implementation in python. The goal of this project is to offer a calendar library with the relevant and practical features needed for building a calendar application (e.g. recurring events).
ical's main focus is on simplicity, and the internal implementation is based on existing parsing libraries, where possible, making it easy to support as much as possible of rfc5545. It is not a goal to support everything exhaustively, however, the simplicity of the implementation makes it easy to do so.
See documentation for full quickstart and API reference.
endef

$(eval $(call Py3Package,python3-ical))
$(eval $(call BuildPackage,python3-ical))
$(eval $(call BuildPackage,python3-ical-src))
