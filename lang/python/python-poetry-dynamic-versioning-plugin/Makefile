include $(TOPDIR)/rules.mk

PKG_NAME:=python-poetry-dynamic-versioning-plugin
PKG_VERSION:=0.4.0
PKG_RELEASE:=1

PYPI_NAME:=poetry-dynamic-versioning-plugin
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-poetry-dynamic-versioning-plugin
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Plugin for Poetry to enable dynamic versioning based on VCS tags
  URL:=https://github.com/mtkennerly/poetry-dynamic-versioning
  DEPENDS:=+python3
endef

define Package/python3-poetry-dynamic-versioning-plugin/description
This is a Python 3.7+ plugin for Poetry 1.2.0+ to enable dynamic versioning based on tags in your version control system, powered by Dunamai.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-poetry-dynamic-versioning-plugin))
$(eval $(call BuildPackage,python3-poetry-dynamic-versioning-plugin))
$(eval $(call BuildPackage,python3-poetry-dynamic-versioning-plugin-src))
