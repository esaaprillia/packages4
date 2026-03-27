include $(TOPDIR)/rules.mk

PKG_NAME:=python-alembic
PKG_VERSION:=1.18.4
PKG_RELEASE:=1

PYPI_NAME:=alembic
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-alembic
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A database migrations tool for SQLAlchemy.
  URL:=https://alembic.sqlalchemy.org/
  DEPENDS:= \
	+python3-light \
	+python3-sqlalchemy \
	+python3-mako \
	+python3-typing-extensions
endef

define Package/python3-alembic/description
Alembic is a database migrations tool written by the author of SQLAlchemy.
endef

$(eval $(call Py3Package,python3-alembic))
$(eval $(call BuildPackage,python3-alembic))
$(eval $(call BuildPackage,python3-alembic-src))
