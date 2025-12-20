include $(TOPDIR)/rules.mk

PKG_NAME:=python-flask-restful
PKG_VERSION:=0.3.10
PKG_RELEASE:=1

PYPI_NAME:=Flask-RESTful
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-flask-restful
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Simple framework for creating REST APIs
  URL:=http://flask-restful.readthedocs.io/
  DEPENDS:= \
	+python3-light \
	+python3-aniso8601 \
	+python3-flask \
	+python3-six \
	+python3-pytz
endef

define Package/python3-flask-restful/description
Flask-RESTful provides the building blocks for creating a great REST API.
endef

PYTHON3_PKG_WHEEL_NAME:=flask-restful
PYTHON3_PKG_WHEEL_VERSION:=0.3.10

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-flask-restful))
$(eval $(call BuildPackage,python3-flask-restful))
$(eval $(call BuildPackage,python3-flask-restful-src))
