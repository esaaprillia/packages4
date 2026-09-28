include $(TOPDIR)/rules.mk

PKG_NAME:=python-browser-harness
PKG_VERSION:=0.1.13
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=browser_harness
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-browser-harness
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=The simplest, thinnest, and most powerful harness to control your real browser with your agent.
  URL:=https://github.com/browser-use/browser-harness
  DEPENDS:= \
	+python3 \
	+python3-cdp-use \
	+python3-fetch-use \
	+python3-pillow \
	+python3-websockets
endef

define Package/python3-browser-harness/description
Connect an LLM directly to your real browser through one editable CDP websocket. The agent writes missing helpers as it works, so the harness improves with every task.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-browser-harness))
$(eval $(call BuildPackage,python3-browser-harness))
$(eval $(call BuildPackage,python3-browser-harness-src))
