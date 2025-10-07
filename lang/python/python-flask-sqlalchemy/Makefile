include $(TOPDIR)/rules.mk

PKG_NAME:=python-flask-sqlalchemy
PKG_VERSION:=3.1.1
PKG_RELEASE:=1

PYPI_NAME:=flask_sqlalchemy
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-flit-core/host
HOST_BUILD_DEPENDS:=python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-flask-sqlalchemy
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Adds SQLAlchemy support to Flask
  URL:=https://flask-sqlalchemy.readthedocs.io/
  DEPENDS:=+python3 +python3-flask +python3-sqlalchemy
endef

define Package/python3-flask-sqlalchemy/description
Flask-SQLAlchemy is an extension for Flask that adds support for SQLAlchemy to your application. It aims to simplify using SQLAlchemy with Flask by providing useful defaults and extra helpers that make it easier to accomplish common tasks.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-flask-sqlalchemy))
$(eval $(call BuildPackage,python3-flask-sqlalchemy))
$(eval $(call BuildPackage,python3-flask-sqlalchemy-src))
