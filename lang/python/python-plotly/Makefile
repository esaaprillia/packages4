include $(TOPDIR)/rules.mk

PKG_NAME:=python-plotly
PKG_VERSION:=6.7.0
PKG_RELEASE:=1

PYPI_NAME:=plotly
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-plotly
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=An open-source interactive data visualization library for Python
  URL:=https://plotly.com/python/
  DEPENDS:=+python3 +python3-narwhals +python3-packaging +python3-numpy +python3-kaleido
endef

define Package/python3-plotly/description
  Built on top of plotly.js, plotly.py is a high-level, declarative charting library. plotly.js ships with over 30 chart types, including scientific charts, 3D graphs, statistical charts, SVG maps, financial charts, and more.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-plotly))
$(eval $(call BuildPackage,python3-plotly))
$(eval $(call BuildPackage,python3-plotly-src))
