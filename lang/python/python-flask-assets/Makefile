include $(TOPDIR)/rules.mk

PKG_NAME:=python-flask-assets
PKG_VERSION:=2.1.0
PKG_RELEASE:=1

PYPI_NAME:=Flask-Assets
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-flask-assets
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Asset management for Flask, to compress and merge CSS and Javascript files.
  URL:=http://github.com/miracle2k/flask-assets
  DEPENDS:= \
	+python3 \
	+python3-flask \
	+python3-webassets
endef

define Package/python3-flask-assets/description
An OrderedSet is a mutable data structure that is a hybrid of a list and a set.
endef

PYTHON3_PKG_WHEEL_NAME:=flask_assets

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-flask-assets))
$(eval $(call BuildPackage,python3-flask-assets))
$(eval $(call BuildPackage,python3-flask-assets-src))
