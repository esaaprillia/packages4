include $(TOPDIR)/rules.mk

PKG_NAME:=python-pandocfilters
PKG_VERSION:=1.5.1
PKG_RELEASE:=1

PYPI_NAME:=pandocfilters
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pandocfilters
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Utilities for writing pandoc filters in python
  URL:=https://github.com/jgm/pandocfilters
  DEPENDS:=+python3
endef

define Package/python3-pandocfilters/description
Pandoc filters are pipes that read a JSON serialization of the Pandoc AST from stdin, transform it in some way, and write it to stdout.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pandocfilters))
$(eval $(call BuildPackage,python3-pandocfilters))
$(eval $(call BuildPackage,python3-pandocfilters-src))
