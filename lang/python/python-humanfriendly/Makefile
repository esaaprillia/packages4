include $(TOPDIR)/rules.mk

PKG_NAME:=python-humanfriendly
PKG_VERSION:=9.1
PKG_RELEASE:=1

PYPI_NAME:=humanfriendly
PKG_HASH:=066562956639ab21ff2676d1fda0b5987e985c534fc76700a19bd54bcb81121d

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-humanfriendly
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Human friendly output for text interfaces using Python
  URL:=https://humanfriendly.readthedocs.io/
  DEPENDS:=+python3
endef

define Package/python3-humanfriendly/description
The functions and classes in the humanfriendly package can be used to make text interfaces more user friendly. Some example features:
• Parsing and formatting numbers, file sizes, pathnames and timespans in simple, human friendly formats.
• Easy to use timers for long running operations, with human friendly formatting of the resulting timespans.
• Prompting the user to select a choice from a list of options by typing the option’s number or a unique substring of the option.
• Terminal interaction including text styling (ANSI escape sequences), user friendly rendering of usage messages and querying the terminal for its size.
The humanfriendly package is currently tested on Python 2.7, 3.5+ and PyPy (2.7) on Linux and macOS. While the intention is to support Windows as well, you may encounter some rough edges.
endef

$(eval $(call Py3Package,python3-humanfriendly))
$(eval $(call BuildPackage,python3-humanfriendly))
$(eval $(call BuildPackage,python3-humanfriendly-src))
