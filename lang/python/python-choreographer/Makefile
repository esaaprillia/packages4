include $(TOPDIR)/rules.mk

PKG_NAME:=python-choreographer
PKG_VERSION:=1.3.0
PKG_RELEASE:=1

PYPI_NAME:=choreographer
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DEPENDS:=python-setuptools-git-versioning/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-choreographer
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Devtools Protocol implementation for chrome.
  URL:=https://github.com/plotly/choreographer
  DEPENDS:=+python3 +python3-logistro +python3-simplejson
endef

define Package/python3-choreographer/description
  choreographer allows remote control of browsers from Python. It was created to support image generation from browser-based charting tools, but can be used for other purposes as well.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-choreographer))
$(eval $(call BuildPackage,python3-choreographer))
$(eval $(call BuildPackage,python3-choreographer-src))
