include $(TOPDIR)/rules.mk

PKG_NAME:=python-poetry
PKG_VERSION:=2.3.3
PKG_RELEASE:=1

PYPI_NAME:=poetry
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

define Package/python3-poetry
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python dependency management and packaging made easy.
  URL:=https://python-poetry.org/
  DEPENDS:=+python3
endef

define Package/python3-poetry/description
Poetry helps you declare, manage and install dependencies of Python projects, ensuring you have the right stack everywhere.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-poetry))
$(eval $(call BuildPackage,python3-poetry))
$(eval $(call BuildPackage,python3-poetry-src))
