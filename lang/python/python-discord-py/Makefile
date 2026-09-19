include $(TOPDIR)/rules.mk

PKG_NAME:=python-discord-py
PKG_VERSION:=2.7.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=  discord_py
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-discord-py
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=An API wrapper for Discord written in Python.
  URL:=https://discordpy.readthedocs.io/en/latest/
  DEPENDS:= \
	+python3 \
	+python3-aiohttp \
	+python3-audioop-lts
endef

define Package/python3-discord-py/description
A modern, easy to use, feature-rich, and async ready API wrapper for Discord written in Python.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-discord-py))
$(eval $(call BuildPackage,python3-discord-py))
$(eval $(call BuildPackage,python3-discord-py-src))
