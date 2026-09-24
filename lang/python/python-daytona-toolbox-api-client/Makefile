include $(TOPDIR)/rules.mk

PKG_NAME:=python-daytona-toolbox-api-client
PKG_VERSION:=0.216.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=daytona_toolbox_api_client
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-daytona-toolbox-api-client
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Daytona Toolbox API
  URL:=https://github.com/daytona/clients
  DEPENDS:= \
	+python3 \
	+python3-urllib3 \
	+python3-dateutil \
	+python3-pydantic \
	+python3-typing-extensions
endef

define Package/python3-daytona-toolbox-api-client/description
Daytona Daemon Toolbox API for file operations, process execution, git operations, LSP, computer use, and more.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-daytona-toolbox-api-client))
$(eval $(call BuildPackage,python3-daytona-toolbox-api-client))
$(eval $(call BuildPackage,python3-daytona-toolbox-api-client-src))
