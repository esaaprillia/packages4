include $(TOPDIR)/rules.mk

PKG_NAME:=dash-bootstrap-components
PKG_VERSION:=2.0.4
PKG_RELEASE:=1

PYPI_NAME:=dash_bootstrap_components
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:= Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-dash-bootstrap-components
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Bootstrap themed components for use in Plotly Dash
  URL:=https://www.dash-bootstrap-components.com/
  DEPENDS:=+python3 +python3-dash +python3-numpy +python3-pandas
endef

define Package/python3-dash-bootstrap-components/description
  dash-bootstrap-components is a library of Bootstrap components for use with Plotly Dash, that makes it easier to build consistently styled Dash apps with complex, responsive layouts.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-dash-bootstrap-components))
$(eval $(call BuildPackage,python3-dash-bootstrap-components))
$(eval $(call BuildPackage,python3-dash-bootstrap-components-src))
