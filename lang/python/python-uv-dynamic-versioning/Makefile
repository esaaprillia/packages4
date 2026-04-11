include $(TOPDIR)/rules.mk

PKG_NAME:=python-uv-dynamic-versioning
PKG_VERSION:=0.14.0
PKG_RELEASE:=1

PYPI_NAME:=uv_dynamic_versioning
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-uv-dynamic-versioning
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Dynamic versioning based on VCS tags for uv/hatch project
  URL:=https://github.com/ninoseki/uv-dynamic-versioning/
  DEPENDS:=+python3
endef

define Package/python3-uv-dynamic-versioning/description
poetry-dynamic-versioning influenced dynamic versioning tool for uv/hatch, powered by dunamai.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-uv-dynamic-versioning))
$(eval $(call BuildPackage,python3-uv-dynamic-versioning))
$(eval $(call BuildPackage,python3-uv-dynamic-versioning-src))
