include $(TOPDIR)/rules.mk

PKG_NAME:=python-coloredlogs
PKG_VERSION:=15.0.1
PKG_RELEASE:=1

PYPI_NAME:=coloredlogs
PKG_HASH:=7c991aa71a4577af2f82600d8f8f3a89f936baeaf9b50a9c197da014e5bf16b0

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-coloredlogs
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Colored terminal output for Python's logging module
  URL:=https://coloredlogs.readthedocs.io/
  DEPENDS:=+python3 +python3-logging +python3-humanfriendly
endef

define Package/python3-coloredlogs/description
The coloredlogs package enables colored terminal output for Python’s logging module. The ColoredFormatter class inherits from logging.Formatter and uses ANSI escape sequences to render your logging messages in color. It uses only standard colors so it should work on any UNIX terminal. It’s currently tested on Python 2.7, 3.5+ and PyPy (2 and 3). On Windows coloredlogs automatically tries to enable native ANSI support (on up-to-date Windows 10 installations) and falls back on using colorama (if installed). Here is a screen shot of the demo that is printed when the command coloredlogs --demo is executed
Note that the screenshot above includes custom logging levels defined by my verboselogs package: if you install both coloredlogs and verboselogs it will Just Work (verboselogs is of course not required to use coloredlogs).
endef

$(eval $(call Py3Package,python3-coloredlogs))
$(eval $(call BuildPackage,python3-coloredlogs))
$(eval $(call BuildPackage,python3-coloredlogs-src))
