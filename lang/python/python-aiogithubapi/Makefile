include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiogithubapi
PKG_VERSION:=25.5.0
PKG_RELEASE:=1

PYPI_NAME:=aiogithubapi
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-aiogithubapi
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Asynchronous Python client for the GitHub API
  URL:=https://github.com/ludeeus/aiogithubapi
  DEPENDS:=+python3 +python3-aiohttp +python3-async-timeout +python3-backoff
endef

define Package/python3-aiogithubapi/description
This is not a full client for the API (Have you seen it, it's huge), and will probably never be. Things are added when needed or requested.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-aiogithubapi))
$(eval $(call BuildPackage,python3-aiogithubapi))
$(eval $(call BuildPackage,python3-aiogithubapi-src))
