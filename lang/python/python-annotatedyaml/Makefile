include $(TOPDIR)/rules.mk

PKG_NAME:=python-annotatedyaml
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PYPI_NAME:=annotatedyaml
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cython/host python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-annotatedyaml
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Annotated YAML that supports secrets for Python
  URL:=https://github.com/home-assistant-libs/annotatedyaml
  DEPENDS:=+python3 +python3-propcache +python3-yaml +python3-voluptuous
endef

define Package/python3-annotatedyaml/description
  Annotated YAML that supports secrets for Python
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-annotatedyaml))
$(eval $(call BuildPackage,python3-annotatedyaml))
$(eval $(call BuildPackage,python3-annotatedyaml-src))
