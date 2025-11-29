include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyyaml-ft
PKG_VERSION:=8.0.0
PKG_RELEASE:=1

PYPI_NAME:=pyyaml_ft
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cython/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pyyaml-ft
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=YAML parser and emitter for Python with support for free-threading
  URL:=https://github.com/Quansight-Labs/pyyaml-ft
  DEPENDS:=+libyaml +python3-light
endef

define Package/python3-pyyaml-ft/description
A full-featured YAML processing framework for Python with support for free-threading
endef

PYTHON3_PKG_BUILD_VARS:=PYYAML_FORCE_LIBYAML=1

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pyyaml-ft))
$(eval $(call BuildPackage,python3-pyyaml-ft))
$(eval $(call BuildPackage,python3-pyyaml-ft-src))
