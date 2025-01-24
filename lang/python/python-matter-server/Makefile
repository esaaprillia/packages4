include $(TOPDIR)/rules.mk

PKG_NAME:=python-matter-server
PKG_VERSION:=7.0.1
PKG_RELEASE:=1

PYPI_NAME:=python_matter_server
PKG_HASH:=867fe6b39c2aebf0ee99c87f5d2300ae041b1737eb3e05a7cb90e8d6124c7d9e

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-matter-server
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python Matter WebSocket Server
  URL:=https://github.com/home-assistant-libs/python-matter-server
  DEPENDS:=+python3 +python3-aiohttp +python3-aiorun +python3-async-timeout +python3-coloredlogs +python3-orjson +python3-home-assistant-chip-clusters
endef

define Package/python3-matter-server/description
The Open Home Foundation Matter Server is an officially certified Software Component to create a Matter controller. It serves as the foundation to provide Matter support to Home Assistant but its universal approach makes it suitable to be used in other projects too.
This project implements a Matter Controller Server over WebSockets using the official Matter (formerly CHIP) SDK as a base and provides both a server and client implementation.
The Open Home Foundation Matter Server software component is funded by Nabu Casa (a member of the CSA) and donated to The Open Home Foundation.
endef

$(eval $(call Py3Package,python3-matter-server))
$(eval $(call BuildPackage,python3-matter-server))
$(eval $(call BuildPackage,python3-matter-server-src))
