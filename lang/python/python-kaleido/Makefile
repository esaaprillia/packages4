include $(TOPDIR)/rules.mk

PKG_NAME:=python-kaleido
PKG_VERSION:=1.2.0
PKG_RELEASE:=1

PYPI_NAME:=kaleido
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DEPENDS:=python-setuptools-git-versioning/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-kaleido
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Plotly graph export library
  URL:=https://github.com/plotly/kaleido
  DEPENDS:=+python3 +python3-choreographer +python3-logistro +python3-orjson +python3-packaging +python3-pytest-timeout
endef

define Package/python3-kaleido/description
  Kaleido is a cross-platform Python library for generating static images (e.g. png, svg, pdf, etc.) for Plotly.js, to be used by Plotly.py.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-kaleido))
$(eval $(call BuildPackage,python3-kaleido))
$(eval $(call BuildPackage,python3-kaleido-src))
