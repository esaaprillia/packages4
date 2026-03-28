include $(TOPDIR)/rules.mk

PKG_NAME:=python-docutils
PKG_VERSION:=0.22.4
PKG_RELEASE:=1

PYPI_NAME:=docutils
PKG_HASH:=skip

PKG_MAINTAINER:=Daniel Danzberger <daniel@dd-wrt.com>
PKG_LICENSE:=Public-Domain BSD-2-License Python-2.0.1 GPL-3.0-or-later
PKG_LICENSE_FILES:=COPYING.txt licenses/BSD-2-Clause.txt licenses/python-2-1-1.txt licenses/gpl-3-0.txt

PKG_BUILD_DEPENDS:=python-flit-core/host
HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-docutils
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Documentation Utilities
  URL:=https://docutils.sourceforge.io/
  DEPENDS:=+python3
endef

define Package/python3-docutils/description
Docutils is a modular system for processing documentation into useful
formats, such as HTML, XML, and LaTeX. For input Docutils supports
reStructuredText, an easy-to-read, what-you-see-is-what-you-get
plaintext markup syntax.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-docutils))
$(eval $(call BuildPackage,python3-docutils))
$(eval $(call BuildPackage,python3-docutils-src))
