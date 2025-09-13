include $(TOPDIR)/rules.mk

PKG_NAME:=python-pygments
PKG_VERSION:=2.19.2
PKG_RELEASE:=1

PYPI_NAME:=pygments
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host
HOST_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pygments
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Pygments is a syntax highlighting package written in Python.
  URL:=http://pygments.org/
  DEPENDS:=+python3-light
endef

define Package/python3-pygments/description
Pygments is a syntax highlighting package written in Python.

It is a generic syntax highlighter suitable for use in code hosting, forums, wikis or other applications that need to prettify source code. Highlights are:
• a wide range of over 500 languages and other text formats is supported
• special attention is paid to details, increasing quality by a fair amount
• support for new languages and formats are added easily
• a number of output formats, presently HTML, LaTeX, RTF, SVG, all image formats that PIL supports and ANSI sequences
• it is usable as a command-line tool and as a library
Copyright 2006-2024 by the Pygments team, see AUTHORS. Licensed under the BSD, see LICENSE for details.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pygments))
$(eval $(call BuildPackage,python3-pygments))
$(eval $(call BuildPackage,python3-pygments-src))
