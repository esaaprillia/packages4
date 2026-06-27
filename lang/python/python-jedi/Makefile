include $(TOPDIR)/rules.mk

PKG_NAME:=python-jedi
PKG_VERSION:=0.20.0
PKG_RELEASE:=1

PYPI_NAME:=jedi
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-parso/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-jedi
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=An autocompletion tool for Python that can be used for text editors.
  URL:=http://jedi.readthedocs.io/
  DEPENDS:=+python3 +python3-parso
endef

define Package/python3-jedi/description
  Jedi is a static analysis tool for Python that is typically used in IDEs/editors plugins. Jedi has a focus on autocompletion and goto functionality. Other features include refactoring, code search and finding references.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-jedi))
$(eval $(call BuildPackage,python3-jedi))
$(eval $(call BuildPackage,python3-jedi-src))
