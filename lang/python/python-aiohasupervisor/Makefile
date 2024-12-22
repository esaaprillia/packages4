include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiohasupervisor
PKG_VERSION:=0.2.1
PKG_RELEASE:=1

PYPI_NAME:=aiohasupervisor
PKG_HASH:=a1242165fd255796c961dadfbb88fc1f0d45f8441f8af10f42899ab478b1cbd9

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-aiohasupervisor
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Asynchronous python client for Home Assistant Supervisor.
  URL:=https://github.com/home-assistant-libs/python-supervisor-client
  DEPENDS:=+python3 +python3-aiohttp +python3-mashumaro +python3-orjson +python3-yarl
endef

define Package/python3-aiohasupervisor/description
Python client for interfacing with the Home Assistant Supervisor via its REST API. Currently used in the Home Assistant Supervisor integration in Home Assistant.
Add-ons which interface with Supervisor can also leverage it. The library expects to find the access token in the SUPERVISOR_TOKEN env which is set automatically by Supervisor for add-ons. Currently there is no way to get a long-lived access token for Supervisor outside these use cases so the library's usage is limited to these.
endef

$(eval $(call Py3Package,python3-aiohasupervisor))
$(eval $(call BuildPackage,python3-aiohasupervisor))
$(eval $(call BuildPackage,python3-aiohasupervisor-src))
