include $(TOPDIR)/rules.mk

PKG_NAME:=python-pydantic-collections
PKG_VERSION:=0.6.0
PKG_RELEASE:=1

PYPI_NAME:=pydantic_collections
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pydantic-collections
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Collections of pydantic models
  URL:=https://github.com/romis2012/pydantic-collections
  DEPENDS:= \
	+python3 \
	+python3-pydantic \
	+python3-typing-extensions
endef

define Package/python3-pydantic-collections/description
The pydantic-collections package provides BaseCollectionModel class that allows you to manipulate collections of pydantic models (and any other types supported by pydantic).
endef

$(eval $(call Py3Package,python3-pydantic-collections))
$(eval $(call BuildPackage,python3-pydantic-collections))
$(eval $(call BuildPackage,python3-pydantic-collections-src))
