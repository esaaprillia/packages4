include $(TOPDIR)/rules.mk

PKG_NAME:=python-docutils
PKG_VERSION:=0.21.2
PKG_RELEASE:=1

PYPI_NAME:=docutils
PKG_HASH:=3a6b18732edf182daa3cd12775bbb338cf5691468f91eeeb109deff6ebfa986f

PKG_MAINTAINER:=Daniel Danzberger <daniel@dd-wrt.com>
PKG_LICENSE:=Public-Domain BSD-2-License Python-2.0.1 GPL-3.0-or-later
PKG_LICENSE_FILES:=COPYING.txt licenses/BSD-2-Clause.txt licenses/python-2-1-1.txt licenses/gpl-3-0.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

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

$(eval $(call Py3Package,python3-docutils))
$(eval $(call BuildPackage,python3-docutils))
$(eval $(call BuildPackage,python3-docutils-src))
