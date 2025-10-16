include $(TOPDIR)/rules.mk

PKG_NAME:=python-dash
PKG_VERSION:=3.2.0
PKG_RELEASE:=1

PYPI_NAME:=dash
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-dash
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A Python framework for building reactive web-apps. Developed by Plotly.
  URL:=https://plotly.com/dash
  DEPENDS:=+python3 +python3-flask +python3-werkzeug +python3-plotly +python3-importlib-metadata +python3-typing-extensions +python3-requests +python3-retrying +python3-nest-asyncio +python3-setuptools +python3-yaml
endef

define Package/python3-dash/description
  Dash is the most downloaded, trusted Python framework for building ML & data science web apps.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-dash))
$(eval $(call BuildPackage,python3-dash))
$(eval $(call BuildPackage,python3-dash-src))
