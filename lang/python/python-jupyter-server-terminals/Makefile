include $(TOPDIR)/rules.mk

PKG_NAME:=python-jupyter-server-terminals
PKG_VERSION:=0.5.4
PKG_RELEASE:=1

PYPI_NAME:=jupyter_server_terminals
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host
HOST_BUILD_DEPENDS:=python-hatchling/host python-terminado/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-jupyter-server-terminals
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A Jupyter Server Extension Providing Terminals.
  URL:=https://github.com/jupyter-server/jupyter_server_terminals
  DEPENDS:=+python3 +python3-terminado
endef

define Package/python3-jupyter-server-terminals/description
  Jupyter Server Terminals is a Jupyter Server Extension providing support for terminals.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-jupyter-server-terminals))
$(eval $(call BuildPackage,python3-jupyter-server-terminals))
$(eval $(call BuildPackage,python3-jupyter-server-terminals-src))
