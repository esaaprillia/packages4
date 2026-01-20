include $(TOPDIR)/rules.mk

PKG_NAME:=python-hass-web-proxy-lib
PKG_VERSION:=0.0.7
PKG_RELEASE:=1

PYPI_NAME:=hass_web_proxy_lib
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-hass-web-proxy-lib
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A library to proxy web traffic through Home Assistant integrations.
  URL:=https://github.com/dermotduffy/hass-web-proxy-lib
  DEPENDS:= \
	+python3
endef

define Package/python3-hass-web-proxy-lib/description
A small Home Assistant library to proxy web traffic through Home Assistant.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-hass-web-proxy-lib))
$(eval $(call BuildPackage,python3-hass-web-proxy-lib))
$(eval $(call BuildPackage,python3-hass-web-proxy-lib-src))
