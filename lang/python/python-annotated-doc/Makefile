include $(TOPDIR)/rules.mk

PKG_NAME:=python-annotated-doc
PKG_VERSION:=0.0.4
PKG_RELEASE:=1

PYPI_NAME:=annotated_doc
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-pdm-backend/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-annotated-doc
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Document parameters, class attributes, return types, and variables inline, with Annotated.
  URL:=https://github.com/fastapi/annotated-doc
  DEPENDS:=+python3
endef

define Package/python3-annotated-doc/description
Document parameters, class attributes, return types, and variables inline, with Annotated.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-annotated-doc))
$(eval $(call BuildPackage,python3-annotated-doc))
$(eval $(call BuildPackage,python3-annotated-doc-src))
