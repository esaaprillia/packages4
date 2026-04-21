include $(TOPDIR)/rules.mk

PKG_NAME:=python-lxml-html-clean
PKG_VERSION:=0.4.4
PKG_RELEASE:=1

PYPI_NAME:=lxml_html_clean
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-lxml-html-clean
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=HTML cleaner from lxml project
  URL:=https://github.com/fedora-python/lxml_html_clean/
  DEPENDS:= \
	+python3 \
	+python3-lxml
endef

define Package/python3-lxml-html-clean/description
This project was initially a part of lxml.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-lxml-html-clean))
$(eval $(call BuildPackage,python3-lxml-html-clean))
$(eval $(call BuildPackage,python3-lxml-html-clean-src))
